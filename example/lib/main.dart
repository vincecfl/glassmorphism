import 'package:flutter/material.dart';
import 'package:glassmorphism/glassmorphism.dart';
import 'dart:ui';
import 'package:http/http.dart' as http;
import 'package:html/parser.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GlassmorphicContainer Example',
      home: GlassmorphicSample(),
    );
  }
}

class GlassmorphicSample extends StatefulWidget {
  @override
  State<GlassmorphicSample> createState() => GlassmorphicSampleState();
}

class GlassmorphicSampleState extends State<GlassmorphicSample> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Stack(
          children: [
            Image.network(
              "https://github.com/RitickSaha/glassmophism/blob/main/bg.png?raw=true",
              fit: BoxFit.cover,
              height: double.infinity,
              width: double.infinity,
              scale: 1,
            ),
            SafeArea(
              child: Center(
                child: GlassmorphicContainer(
                    width: 350,
                    height: 750,
                    borderRadius: 20,
                    blur: 20,
                    alignment: Alignment.bottomCenter,
                    border: 2,
                    linearGradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          Color(0xFFffffff).withOpacity(0.1),
                          Color(0xFFFFFFFF).withOpacity(0.05),
                        ],
                        stops: [
                          0.1,
                          1,
                        ]),
                    borderGradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        Color(0xFFffffff).withOpacity(0.5),
                        Color((0xFFFFFFFF)).withOpacity(0.5),
                      ],
                    ),
                    child: null),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// String likes, gotpoints, popularity, totalPoints, details, pac, date;

// void main() async {
//   await maintest();
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'GlassMorphic Example',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: MyHomePage(title: 'Flutter Demo Home Page'),
//     );
//   }
// }

// class MyHomePage extends StatefulWidget {
//   MyHomePage({Key key, this.title}) : super(key: key);
//   final String title;

//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: Container(
//           height: double.infinity,
//           width: double.infinity,
//           decoration: BoxDecoration(
//             image: DecorationImage(
//                 image: Image.asset("assets/bg.png").image, fit: BoxFit.cover),
//           ),
//           child: SafeArea(
//             child: Stack(
//               children: <Widget>[
//                 Positioned(
//                   top: MediaQuery.of(context).size.height * 0.02,
//                   left: MediaQuery.of(context).size.width * 0.05,
//                   child: GlassmorphicContainer(
//                       width: MediaQuery.of(context).size.width * 0.9,
//                       height: MediaQuery.of(context).size.height * 0.9,
//                       borderRadius: 40,
//                       blur: 7,
//                       alignment: Alignment.bottomCenter,
//                       border: 2,
//                       linearGradient: LinearGradient(
//                           begin: Alignment.topLeft,
//                           end: Alignment.bottomRight,
//                           colors: [
//                             Color(0xFFF75035).withAlpha(55),
//                             Color(0xFFffffff).withAlpha(45),
//                           ],
//                           stops: [
//                             0.3,
//                             1,
//                           ]),
//                       borderGradient: LinearGradient(
//                           begin: Alignment.bottomRight,
//                           end: Alignment.topLeft,
//                           colors: [
//                             Color(0xFF4579C5).withAlpha(100),
//                             Color(0xFFFFFFF).withAlpha(55),
//                             Color(0xFFF75035).withAlpha(10),
//                           ],
//                           stops: [
//                             0.06,
//                             0.95,
//                             1
//                           ]),
//                       child: Container(
//                         alignment: Alignment.center,
//                         child: Stack(
//                           children: <Widget>[
//                             Center(child: Container()),
//                             Positioned(
//                               bottom:
//                                   MediaQuery.of(context).size.height * 0.3 - 70,
//                               left: 40,
//                               child: Container(
//                                 width: 100,
//                                 height: 100.0,
//                                 decoration: BoxDecoration(
//                                   shape: BoxShape.circle,
//                                   gradient: LinearGradient(colors: [
//                                     Color(0xFFBC1642),
//                                     Color(0xFFCB5AC6),
//                                   ]),
//                                 ),
//                               ),
//                             ),
//                             Positioned(
//                               bottom: 50,
//                               left: 30,
//                               child: Container(
//                                 width: 80,
//                                 height: 40,
//                                 decoration: BoxDecoration(
//                                   shape: BoxShape.rectangle,
//                                   gradient: LinearGradient(colors: [
//                                     Color(0xFFFDFC47),
//                                     Color(0xFF24FE41),
//                                   ]),
//                                 ),
//                               ),
//                             ),
//                             Positioned(
//                               top: MediaQuery.of(context).size.height * 0.015,
//                               left: MediaQuery.of(context).size.width * 0.025,
//                               child: GlassCard(context),
//                             ),
//                             Positioned(
//                                 bottom:
//                                     MediaQuery.of(context).size.height * 0.3 +
//                                         100,
//                                 left: (MediaQuery.of(context).size.width - 60) /
//                                     5,
//                                 child: InkWell(
//                                   onTap: () {
//                                     // launchTFF();
//                                   },
//                                   child: Image.asset(
//                                     "assets/logo.png",
//                                     height: 60,
//                                   ),
//                                 ))
//                           ],
//                         ),
//                       )),
//                 ),
//                 Positioned(
//                   top: MediaQuery.of(context).size.height * 0.52 + 10,
//                   left: MediaQuery.of(context).size.width * 0.05 + 10,
//                   child: GlassmorphicContainer(
//                     width: MediaQuery.of(context).size.width * 0.9 - 20,
//                     height: MediaQuery.of(context).size.height * 0.4 - 20,
//                     borderRadius: 35,
//                     blur: 10,
//                     alignment: Alignment.bottomCenter,
//                     border: 2,
//                     linearGradient: LinearGradient(
//                         begin: Alignment.topLeft,
//                         end: Alignment.bottomRight,
//                         colors: [
//                           Color(0xFFFFFFF).withAlpha(0),
//                           Color(0xFFFFFFF).withAlpha(0),
//                         ],
//                         stops: [
//                           0.3,
//                           1,
//                         ]),
//                     borderGradient: LinearGradient(
//                         begin: Alignment.topLeft,
//                         end: Alignment.bottomRight,
//                         colors: [
//                           Color(0xFFFFFFF).withAlpha(01),
//                           Color(0xFFFFFFF).withAlpha(100),
//                           Color(0xFFFFFFF).withAlpha(01),
//                         ],
//                         stops: [
//                           0.2,
//                           0.9,
//                           1,
//                         ]),
//                     child: Body2(),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

// // ignore: non_constant_identifier_names
// GlassCard(var context) {
//   return GlassmorphicContainer(
//       width: MediaQuery.of(context).size.width * 0.9 - 20,
//       height: MediaQuery.of(context).size.height * 0.4 - 20,
//       borderRadius: 35,
//       blur: 14,
//       alignment: Alignment.bottomCenter,
//       border: 2,
//       linearGradient: LinearGradient(
//         begin: Alignment.topLeft,
//         end: Alignment.bottomRight,
//         colors: [
//           Color(0xFF0FFFF).withOpacity(0.2),
//           Color(0xFF0FFFF).withOpacity(0.2),
//         ],
//       ),
//       borderGradient: LinearGradient(
//         begin: Alignment.topLeft,
//         end: Alignment.bottomRight,
//         colors: [
//           Color(0xFF0FFFF).withOpacity(1),
//           Color(0xFFFFFFF),
//           Color(0xFF0FFFF).withOpacity(1),
//         ],
//       ),
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.spaceAround,
//         children: [
//           SizedBox(height: MediaQuery.of(context).size.height * 0.001),
//           Image.network(
//             "https://pub.dev/static/img/pub-dev-logo-2x.png?hash=umitaheu8hl7gd3mineshk2koqfngugi",
//             scale: 1.7,
//           ),
//           InkWell(
//             onTap: () {
//               // launchPubDev();
//             },
//             child: Text(
//               pac,
//               style: TextStyle(
//                 fontFamily: 'RobotoMono',
//                 fontSize: 25.0,
//                 color: Colors.white,
//                 fontWeight: FontWeight.w900,
//               ),
//             ),
//           ),
//           Text(
//             "Published on $date",
//             style: TextStyle(
//               fontFamily: 'RobotoMono',
//               fontSize: 18.0,
//               fontStyle: FontStyle.italic,
//               color: Colors.white,
//               fontWeight: FontWeight.w500,
//             ),
//           ),
//           Text(
//             "Published by Ritick Saha\n(The Flutter Foundry)",
//             textAlign: TextAlign.center,
//             style: TextStyle(
//               fontFamily: 'RobotoMono',
//               fontStyle: FontStyle.italic,
//               fontSize: 18.0,
//               color: Colors.white,
//               fontWeight: FontWeight.w300,
//             ),
//           ),
//           SizedBox(height: MediaQuery.of(context).size.height * 0.001),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceAround,
//             children: [
//               RichText(
//                 text: TextSpan(
//                   text: '$likes',
//                   style: TextStyle(
//                     fontFamily: 'RobotoMono',
//                     fontSize: 35.0,
//                     color: Colors.white,
//                     fontWeight: FontWeight.w900,
//                   ),
//                   children: <TextSpan>[
//                     TextSpan(
//                       text: '\nLikes',
//                       style: TextStyle(
//                         fontFamily: 'RobotoMono',
//                         fontSize: 15.0,
//                         color: Colors.white60,
//                         fontWeight: FontWeight.w500,
//                       ),
//                     )
//                   ],
//                 ),
//               ),
//               RichText(
//                 text: TextSpan(
//                   text: '$gotpoints',
//                   style: TextStyle(
//                     fontFamily: 'RobotoMono',
//                     fontSize: 35.0,
//                     color: Colors.white,
//                     fontWeight: FontWeight.w900,
//                   ),
//                   children: <TextSpan>[
//                     TextSpan(
//                       text: '/$totalPoints',
//                       style: TextStyle(
//                         fontFamily: 'RobotoMono',
//                         fontSize: 15.0,
//                         color: Colors.white,
//                         fontWeight: FontWeight.w900,
//                       ),
//                     ),
//                     TextSpan(
//                       text: '\n    Pub Point',
//                       style: TextStyle(
//                         fontFamily: 'RobotoMono',
//                         fontSize: 15.0,
//                         color: Colors.white60,
//                         fontWeight: FontWeight.w500,
//                       ),
//                     )
//                   ],
//                 ),
//               ),
//               RichText(
//                 text: TextSpan(
//                   text: ' $popularity%',
//                   style: TextStyle(
//                     fontFamily: 'RobotoMono',
//                     fontSize: 35.0,
//                     color: Colors.white,
//                     fontWeight: FontWeight.w900,
//                   ),
//                   children: <TextSpan>[
//                     TextSpan(
//                       text: '\nPopularity',
//                       style: TextStyle(
//                         fontFamily: 'RobotoMono',
//                         fontSize: 15.0,
//                         color: Colors.white60,
//                         fontWeight: FontWeight.w500,
//                       ),
//                     )
//                   ],
//                 ),
//               ),
//             ],
//           ),
//           SizedBox(height: MediaQuery.of(context).size.height * 0.001),
//           Text(
//             "Small Package Discription:",
//             textAlign: TextAlign.center,
//             style: TextStyle(
//               fontFamily: 'RobotoMono',
//               fontStyle: FontStyle.italic,
//               fontSize: 18.0,
//               color: Colors.white,
//               fontWeight: FontWeight.w400,
//             ),
//           ),
//           Text(
//             "$details",
//             textAlign: TextAlign.center,
//             style: TextStyle(
//               fontFamily: 'RobotoMono',
//               fontStyle: FontStyle.italic,
//               fontSize: 18.0,
//               color: Colors.white,
//               fontWeight: FontWeight.w200,
//             ),
//           ),
//           SizedBox(height: MediaQuery.of(context).size.height * 0.001),
//         ],
//       ));
// }

// class Body2 extends StatelessWidget {
//   const Body2({
//     Key key,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       mainAxisAlignment: MainAxisAlignment.spaceAround,
//       children: [
//         Text(
//           'Sign In',
//           style: TextStyle(
//             fontFamily: 'Futura Md BT',
//             fontSize: 24.0,
//             color: Colors.white,
//             fontWeight: FontWeight.w500,
//           ),
//         ),
//         Text(
//           'An example Use Case Of GlassmorphicContainer',
//           style: TextStyle(
//             fontFamily: 'Futura Md BT',
//             fontSize: 16.0,
//             color: Colors.white,
//             fontWeight: FontWeight.w200,
//           ),
//         ),
//         Container(
//           width: MediaQuery.of(context).size.width * 0.7,
//           height: MediaQuery.of(context).size.height * 0.05,
//           decoration: BoxDecoration(
//             border: Border.all(color: Colors.white54, width: 0.5),
//             borderRadius: BorderRadius.circular(40),
//           ),
//           child: Center(
//             child: Text(
//               'Your Email',
//               style: TextStyle(
//                 fontFamily: 'Futura Md BT',
//                 fontSize: 18.0,
//                 color: Colors.white,
//                 fontWeight: FontWeight.w500,
//               ),
//             ),
//           ),
//         ),
//         Container(
//           width: MediaQuery.of(context).size.width * 0.7,
//           height: MediaQuery.of(context).size.height * 0.05,
//           decoration: BoxDecoration(
//             border: Border.all(color: Colors.white54, width: 0.5),
//             borderRadius: BorderRadius.circular(40),
//           ),
//           child: Center(
//             child: Text(
//               'Password',
//               style: TextStyle(
//                 fontFamily: 'Futura Md BT',
//                 fontSize: 18.0,
//                 color: Colors.white,
//                 fontWeight: FontWeight.w500,
//               ),
//             ),
//           ),
//         ),
//         Row(
//           mainAxisAlignment: MainAxisAlignment.spaceAround,
//           children: [
//             Text(
//               'Next',
//               style: TextStyle(
//                 fontFamily: 'Futura Md BT',
//                 fontSize: 24.0,
//                 color: Colors.white,
//                 fontWeight: FontWeight.w500,
//               ),
//             ),
//             ClipOval(
//               child: Container(
//                 height: 50,
//                 width: 50,
//                 color: Colors.white,
//                 child: Icon(
//                   Icons.arrow_forward,
//                   color: Colors.black,
//                 ),
//               ),
//             )
//           ],
//         )
//       ],
//     );
//   }
// }
// Future<int> maintest() async {
//   final response = await http.Client()
//       .get(Uri.parse("https://pub.dev/packages/neuomorphic_container/score"));
//   if (response.statusCode == 200) {
//     var document = parse(response.body);
//     likes =
//         document.getElementsByClassName("score-key-figure-value")[0].innerHtml;
//     gotpoints =
//         document.getElementsByClassName("score-key-figure-value")[1].innerHtml;
//     totalPoints = "110";
//     popularity =
//         document.getElementsByClassName("score-key-figure-value")[2].innerHtml;
//     details = document.getElementsByClassName("detail-lead-text")[0].innerHtml;
//     pac = document.getElementsByClassName("code")[0].innerHtml;
//     date = document.getElementsByClassName("metadata")[0].children[0].innerHtml;
//     print("+++++++++++++++++++++++++++++++++++++++++++++++++");
//     print("++                                             ++");
//     print("++   It seams that your internet is working.   ++");
//     print("++                                             ++");
//     print("+++++++++++++++++++++++++++++++++++++++++++++++++");
//     return 1;
//   } else {
//     print("+++++++++++++++++++++++++++++++++++++++++++++++++++++");
//     print("++                                                 ++");
//     print("++   It seams that your internet is not working.   ++");
//     print("++                                                 ++");
//     print("+++++++++++++++++++++++++++++++++++++++++++++++++++++");
//     return 0;
//   }
// }
