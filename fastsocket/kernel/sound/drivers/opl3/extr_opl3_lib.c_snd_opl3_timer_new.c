
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_opl3 {int * timer1; int card; } ;


 int snd_device_free (int ,int *) ;
 int snd_opl3_timer1_init (struct snd_opl3*,int) ;
 int snd_opl3_timer2_init (struct snd_opl3*,int) ;

int snd_opl3_timer_new(struct snd_opl3 * opl3, int timer1_dev, int timer2_dev)
{
 int err;

 if (timer1_dev >= 0)
  if ((err = snd_opl3_timer1_init(opl3, timer1_dev)) < 0)
   return err;
 if (timer2_dev >= 0) {
  if ((err = snd_opl3_timer2_init(opl3, timer2_dev)) < 0) {
   snd_device_free(opl3->card, opl3->timer1);
   opl3->timer1 = ((void*)0);
   return err;
  }
 }
 return 0;
}
