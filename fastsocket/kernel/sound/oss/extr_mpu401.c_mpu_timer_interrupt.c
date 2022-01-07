
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long clocks2ticks (int ) ;
 int curr_clocks ;
 unsigned long curr_ticks ;
 unsigned long next_event_time ;
 int sequencer_timer (int ) ;
 int timer_open ;
 int tmr_running ;

__attribute__((used)) static void mpu_timer_interrupt(void)
{
 if (!timer_open)
  return;

 if (!tmr_running)
  return;

 curr_clocks++;
 curr_ticks = clocks2ticks(curr_clocks);

 if (curr_ticks >= next_event_time)
 {
  next_event_time = (unsigned long) -1;
  sequencer_timer(0);
 }
}
