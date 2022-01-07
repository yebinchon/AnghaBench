
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_jack {int type; int input_dev; } ;


 int ARRAY_SIZE (int *) ;
 int input_report_switch (int ,int ,int) ;
 int input_sync (int ) ;
 int * jack_types ;

void snd_jack_report(struct snd_jack *jack, int status)
{
 int i;

 if (!jack)
  return;

 for (i = 0; i < ARRAY_SIZE(jack_types); i++) {
  int testbit = 1 << i;
  if (jack->type & testbit)
   input_report_switch(jack->input_dev, jack_types[i],
         status & testbit);
 }

 input_sync(jack->input_dev);
}
