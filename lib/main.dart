import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String displayExOh='';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[800],
      body: GridView.builder(
          itemCount: 9,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3),
          itemBuilder: (BuildContext content, int index){
            return GestureDetector(
              onTap: _tapped,
              child: Container(
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey[700]!)
                ),
                child: Center(
                  child: Text(displayExOh,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 40),),
                ),
              ),
            );
          }),
    );
  }
  void _tapped(){
    setState(() {
      displayExOh='o';
    });
  }
}



