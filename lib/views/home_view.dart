import 'package:flutter/material.dart';


class homeView extends StatefulWidget {
  const homeView({super.key});

  @override
  State<homeView> createState() => _homeViewState();
}

class _homeViewState extends State<homeView> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text('Decider App'),
        backgroundColor: Colors.deepPurple,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: Icon(
              Icons.shopping_bag,
              color: Colors.black,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right:20.0),
            child: Icon(
              Icons. history,
              color: Colors.black,
            ),
          )
        ],//Actions
      ),
      body: SafeArea(
          child:  Container(
            width: MediaQuery.of(context).size.width,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(0.0),
                  child: Text('Decisions Left: ##'),
                ),
                Spacer(),
                _buildQuestionForm(),
                Spacer(),
                Padding(
                  padding: const EdgeInsets.all(0.0),
                  child: Text('Account Type: Free'),
                ),
              ], //Children
            ),
          ),
      ),
    );
  }




  Widget _buildQuestionForm(){
    return Column(
      children: [
        Text('Should I?',
          style: Theme.of(context).textTheme.headlineLarge,
        ),
        Padding(
            padding: const EdgeInsets.only(
              bottom: 10.0,
              left: 30.0,
              right: 30.0,
            ),
          child: TextField(
            decoration: InputDecoration(
              helperText: 'enter a question'
            ),
          ),
        ),
        ElevatedButton(
          onPressed: (){print('Clicked');},
          child: Text("Ask"),

        )
      ],//Children
    );
  }//BuildQuestionForm
}//Class

