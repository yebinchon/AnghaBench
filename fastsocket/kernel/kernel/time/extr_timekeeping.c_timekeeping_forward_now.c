
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct clocksource {int (* read ) (struct clocksource*) ;int cycle_last; int mask; int shift; int mult; } ;
typedef int s64 ;
typedef int cycle_t ;
struct TYPE_2__ {int raw_time; int xtime; int shift; int mult; struct clocksource* clock; } ;


 scalar_t__ arch_gettimeoffset () ;
 int clocksource_cyc2ns (int,int ,int ) ;
 int stub1 (struct clocksource*) ;
 TYPE_1__ timekeeper ;
 int timespec_add_ns (int *,int ) ;

__attribute__((used)) static void timekeeping_forward_now(void)
{
 cycle_t cycle_now, cycle_delta;
 struct clocksource *clock;
 s64 nsec;

 clock = timekeeper.clock;
 cycle_now = clock->read(clock);
 cycle_delta = (cycle_now - clock->cycle_last) & clock->mask;
 clock->cycle_last = cycle_now;

 nsec = clocksource_cyc2ns(cycle_delta, timekeeper.mult,
      timekeeper.shift);


 nsec += arch_gettimeoffset();

 timespec_add_ns(&timekeeper.xtime, nsec);

 nsec = clocksource_cyc2ns(cycle_delta, clock->mult, clock->shift);
 timespec_add_ns(&timekeeper.raw_time, nsec);
}
