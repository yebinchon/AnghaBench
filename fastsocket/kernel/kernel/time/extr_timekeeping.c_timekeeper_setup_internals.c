
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct clocksource {int shift; int mult; int (* read ) (struct clocksource*) ;int cycle_last; } ;
typedef scalar_t__ cycle_t ;
struct TYPE_2__ {int xtime_interval; int xtime_remainder; int raw_interval; int shift; int mult; scalar_t__ ntp_error_shift; scalar_t__ ntp_error; scalar_t__ xtime_nsec; scalar_t__ cycle_interval; struct clocksource* clock; } ;


 int NTP_INTERVAL_LENGTH ;
 scalar_t__ NTP_SCALE_SHIFT ;
 int do_div (int,int) ;
 int stub1 (struct clocksource*) ;
 TYPE_1__ timekeeper ;

__attribute__((used)) static void timekeeper_setup_internals(struct clocksource *clock)
{
 cycle_t interval;
 u64 tmp, ntpinterval;

 timekeeper.clock = clock;
 clock->cycle_last = clock->read(clock);


 tmp = NTP_INTERVAL_LENGTH;
 tmp <<= clock->shift;
 ntpinterval = tmp;
 tmp += clock->mult/2;
 do_div(tmp, clock->mult);
 if (tmp == 0)
  tmp = 1;

 interval = (cycle_t) tmp;
 timekeeper.cycle_interval = interval;


 timekeeper.xtime_interval = (u64) interval * clock->mult;
 timekeeper.xtime_remainder = ntpinterval - timekeeper.xtime_interval;
 timekeeper.raw_interval =
  ((u64) interval * clock->mult) >> clock->shift;

 timekeeper.xtime_nsec = 0;
 timekeeper.shift = clock->shift;

 timekeeper.ntp_error = 0;
 timekeeper.ntp_error_shift = NTP_SCALE_SHIFT - clock->shift;






 timekeeper.mult = clock->mult;
}
