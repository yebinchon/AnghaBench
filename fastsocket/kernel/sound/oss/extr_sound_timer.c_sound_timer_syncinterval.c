
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ticks_offs ;
 scalar_t__ tmr2ticks (scalar_t__) ;
 scalar_t__ tmr_ctr ;
 scalar_t__ tmr_offs ;
 unsigned int usecs_per_tmr ;

void sound_timer_syncinterval(unsigned int new_usecs)
{




 tmr_offs = tmr_ctr;
 ticks_offs += tmr2ticks(tmr_ctr);
 tmr_ctr = 0;
 usecs_per_tmr = new_usecs;
}
