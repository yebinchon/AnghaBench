
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct clocksource {int dummy; } ;
struct TYPE_2__ {struct clocksource* clock; } ;


 int change_clocksource ;
 int stop_machine (int ,struct clocksource*,int *) ;
 int tick_clock_notify () ;
 TYPE_1__ timekeeper ;

void timekeeping_notify(struct clocksource *clock)
{
 if (timekeeper.clock == clock)
  return;
 stop_machine(change_clocksource, clock, ((void*)0));
 tick_clock_notify();
}
