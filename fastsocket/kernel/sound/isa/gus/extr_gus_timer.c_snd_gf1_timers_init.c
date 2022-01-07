
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_timer_id {int device; scalar_t__ subdevice; int card; int dev_sclass; int dev_class; } ;
struct snd_timer {int hw; int private_free; struct snd_gus_card* private_data; int name; } ;
struct TYPE_3__ {struct snd_timer* timer2; struct snd_timer* timer1; int interrupt_handler_timer2; int interrupt_handler_timer1; } ;
struct snd_gus_card {TYPE_1__ gf1; TYPE_2__* card; int timer_dev; } ;
struct TYPE_4__ {int number; } ;


 int SNDRV_TIMER_CLASS_CARD ;
 int SNDRV_TIMER_SCLASS_NONE ;
 int snd_gf1_interrupt_timer1 ;
 int snd_gf1_interrupt_timer2 ;
 int snd_gf1_timer1 ;
 int snd_gf1_timer1_free ;
 int snd_gf1_timer2 ;
 int snd_gf1_timer2_free ;
 scalar_t__ snd_timer_new (TYPE_2__*,char*,struct snd_timer_id*,struct snd_timer**) ;
 int strcpy (int ,char*) ;

void snd_gf1_timers_init(struct snd_gus_card * gus)
{
 struct snd_timer *timer;
 struct snd_timer_id tid;

 if (gus->gf1.timer1 != ((void*)0) || gus->gf1.timer2 != ((void*)0))
  return;

 gus->gf1.interrupt_handler_timer1 = snd_gf1_interrupt_timer1;
 gus->gf1.interrupt_handler_timer2 = snd_gf1_interrupt_timer2;

 tid.dev_class = SNDRV_TIMER_CLASS_CARD;
 tid.dev_sclass = SNDRV_TIMER_SCLASS_NONE;
 tid.card = gus->card->number;
 tid.device = gus->timer_dev;
 tid.subdevice = 0;

 if (snd_timer_new(gus->card, "GF1 timer", &tid, &timer) >= 0) {
  strcpy(timer->name, "GF1 timer #1");
  timer->private_data = gus;
  timer->private_free = snd_gf1_timer1_free;
  timer->hw = snd_gf1_timer1;
 }
 gus->gf1.timer1 = timer;

 tid.device++;

 if (snd_timer_new(gus->card, "GF1 timer", &tid, &timer) >= 0) {
  strcpy(timer->name, "GF1 timer #2");
  timer->private_data = gus;
  timer->private_free = snd_gf1_timer2_free;
  timer->hw = snd_gf1_timer2;
 }
 gus->gf1.timer2 = timer;
}
