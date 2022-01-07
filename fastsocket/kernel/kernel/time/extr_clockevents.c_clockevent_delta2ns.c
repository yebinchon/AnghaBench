
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct clock_event_device {int shift; int mult; } ;


 int LONG_MAX ;
 int WARN_ON (int) ;
 int do_div (int,int) ;
 scalar_t__ unlikely (int) ;

unsigned long clockevent_delta2ns(unsigned long latch,
      struct clock_event_device *evt)
{
 u64 clc = ((u64) latch << evt->shift);

 if (unlikely(!evt->mult)) {
  evt->mult = 1;
  WARN_ON(1);
 }

 do_div(clc, evt->mult);
 if (clc < 1000)
  clc = 1000;
 if (clc > LONG_MAX)
  clc = LONG_MAX;

 return (unsigned long) clc;
}
