import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Fitness Time"),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Hola diana",
                  style: Theme.of(context).textTheme.headline4,
                ),
                Text(
                  "text",
                  style: Theme.of(context).textTheme.headline4,
                ),
                Text(
                  "Mas detalles",
                  style: Theme.of(context).textTheme.headline4,
                ),
                SizedBox(
                  height: 16,
                ),
                Text(
                  "Utimas novedades",
                  style: Theme.of(context).textTheme.headline4,
                ),
                Card(
                  child: ListTile(
                    leading: Icon(Icons.directions_run),
                    title: Text(
                      "Running",
                      style: Theme.of(context).textTheme.headline6,
                    ),
                    subtitle: Text(
                      "Ayer 19:20",
                    ),
                    trailing: Text(" 7200Km"),
                  ),
                ),
                CircularPercentIndicator(
                  radius: 120.0,
                  lineWidth: 13.0,
                  animation: true,
                  percent: 0.7,
                  center: new Text(
                    "70.0%",
                    style: new TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 20.0),
                  ),
                  footer: new Text(
                    "Sales this week",
                    style: new TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 17.0),
                  ),
                  circularStrokeCap: CircularStrokeCap.round,
                  progressColor: Colors.purple,
                ),
              ],
              
            ),
          ),
        ));
  }
}
