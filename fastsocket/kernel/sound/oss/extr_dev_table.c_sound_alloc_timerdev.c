
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MAX_TIMER_DEV ;
 int num_sound_timers ;
 int ** sound_timer_devs ;

int sound_alloc_timerdev(void)
{
 int i;

 for (i = 0; i < MAX_TIMER_DEV; i++) {
  if (sound_timer_devs[i] == ((void*)0)) {
   if (i >= num_sound_timers)
    num_sound_timers++;
   return i;
  }
 }
 return -1;
}
