
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct clocksource {int (* read ) (struct clocksource*) ;int cycle_last; int mask; } ;
typedef int s64 ;
typedef int cycle_t ;
struct TYPE_2__ {int shift; int mult; struct clocksource* clock; } ;


 int clocksource_cyc2ns (int,int ,int ) ;
 int stub1 (struct clocksource*) ;
 TYPE_1__ timekeeper ;

__attribute__((used)) static inline s64 timekeeping_get_ns(void)
{
 cycle_t cycle_now, cycle_delta;
 struct clocksource *clock;


 clock = timekeeper.clock;
 cycle_now = clock->read(clock);


 cycle_delta = (cycle_now - clock->cycle_last) & clock->mask;


 return clocksource_cyc2ns(cycle_delta, timekeeper.mult,
      timekeeper.shift);
}
