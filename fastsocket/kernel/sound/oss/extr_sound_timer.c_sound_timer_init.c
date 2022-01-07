
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct sound_lowlev_timer {scalar_t__ priority; } ;
struct TYPE_4__ {int name; } ;
struct TYPE_5__ {TYPE_1__ info; } ;


 int initialized ;
 int sound_alloc_timerdev () ;
 TYPE_2__ sound_timer ;
 TYPE_2__** sound_timer_devs ;
 int strcpy (int ,char*) ;
 struct sound_lowlev_timer* tmr ;

void sound_timer_init(struct sound_lowlev_timer *t, char *name)
{
 int n;

 if (initialized)
 {
  if (t->priority <= tmr->priority)
   return;
  tmr = t;
  return;
 }
 initialized = 1;
 tmr = t;

 n = sound_alloc_timerdev();
 if (n == -1)
  n = 0;
 strcpy(sound_timer.info.name, name);
 sound_timer_devs[n] = &sound_timer;
}
