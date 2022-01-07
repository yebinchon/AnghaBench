
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dev; int (* tmr_start ) (int ,unsigned long) ;} ;


 int curr_tempo ;
 int curr_timebase ;
 int stub1 (int ,unsigned long) ;
 TYPE_1__* tmr ;
 int usecs_per_tmr ;

void reprogram_timer(void)
{
 unsigned long usecs_per_tick;






 if(!tmr)
  return;

 usecs_per_tick = (60 * 1000000) / (curr_tempo * curr_timebase);




 if (usecs_per_tick < 2000)
  usecs_per_tick = 2000;

 usecs_per_tmr = tmr->tmr_start(tmr->dev, usecs_per_tick);
}
