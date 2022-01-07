
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int curr_ticks ;
 long next_event_time ;
 long prev_event_time ;

__attribute__((used)) static void
def_tmr_arm(int dev, long time)
{
 if (time < 0)
  time = curr_ticks + 1;
 else if (time <= curr_ticks)
  return;

 next_event_time = prev_event_time = time;

 return;
}
