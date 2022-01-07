
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_timer {int sticks; } ;
struct TYPE_2__ {struct snd_timer* timer2; } ;
struct snd_gus_card {TYPE_1__ gf1; } ;


 int snd_timer_interrupt (struct snd_timer*,int ) ;

__attribute__((used)) static void snd_gf1_interrupt_timer2(struct snd_gus_card * gus)
{
 struct snd_timer *timer = gus->gf1.timer2;

 if (timer == ((void*)0))
  return;
 snd_timer_interrupt(timer, timer->sticks);
}
