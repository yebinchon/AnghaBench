
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int curr_tempo ;
 int curr_timebase ;
 int usecs_per_tmr ;

__attribute__((used)) static unsigned long tmr2ticks(int tmr_value)
{




 unsigned long tmp;
 unsigned long scale;

 tmp = tmr_value * usecs_per_tmr;
 scale = (60 * 1000000) / (curr_tempo * curr_timebase);
 return (tmp + (scale / 2)) / scale;
}
