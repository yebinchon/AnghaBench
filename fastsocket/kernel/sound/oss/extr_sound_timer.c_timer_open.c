
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EBUSY ;
 int curr_tempo ;
 int curr_timebase ;
 int opened ;
 int reprogram_timer () ;
 int tmr_reset () ;

__attribute__((used)) static int timer_open(int dev, int mode)
{
 if (opened)
  return -EBUSY;
 tmr_reset();
 curr_tempo = 60;
 curr_timebase = 100;
 opened = 1;
 reprogram_timer();
 return 0;
}
