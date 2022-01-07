
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_timer_instance {struct snd_timer* timer; } ;
struct TYPE_2__ {unsigned long (* c_resolution ) (struct snd_timer*) ;unsigned long resolution; } ;
struct snd_timer {TYPE_1__ hw; } ;


 unsigned long stub1 (struct snd_timer*) ;

unsigned long snd_timer_resolution(struct snd_timer_instance *timeri)
{
 struct snd_timer * timer;

 if (timeri == ((void*)0))
  return 0;
 if ((timer = timeri->timer) != ((void*)0)) {
  if (timer->hw.c_resolution)
   return timer->hw.c_resolution(timer);
  return timer->hw.resolution;
 }
 return 0;
}
