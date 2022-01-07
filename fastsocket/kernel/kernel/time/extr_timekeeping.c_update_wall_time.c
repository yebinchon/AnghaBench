
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct clocksource {int (* read ) (struct clocksource*) ;int cycle_last; int mask; } ;
typedef scalar_t__ s64 ;
typedef int cycle_t ;
struct TYPE_5__ {int tv_sec; } ;
struct TYPE_4__ {scalar_t__ tv_sec; scalar_t__ tv_nsec; } ;
struct TYPE_6__ {int cycle_interval; scalar_t__ xtime_nsec; scalar_t__ shift; scalar_t__ ntp_error; scalar_t__ ntp_error_shift; int lock; TYPE_2__ wall_to_monotonic; TYPE_1__ xtime; struct clocksource* clock; } ;


 scalar_t__ NSEC_PER_SEC ;
 int clock_was_set_delayed () ;
 int ilog2 (int) ;
 int logarithmic_accumulation (int,int) ;
 int max (int ,int) ;
 int min (int,int) ;
 int ntp_tick_length () ;
 int second_overflow (scalar_t__) ;
 int stub1 (struct clocksource*) ;
 TYPE_3__ timekeeper ;
 int timekeeping_adjust (int) ;
 int timekeeping_suspended ;
 int timekeeping_update (int) ;
 scalar_t__ unlikely (int) ;
 int write_seqlock_irqsave (int *,unsigned long) ;
 int write_sequnlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void update_wall_time(void)
{
 struct clocksource *clock;
 cycle_t offset;
 int shift = 0, maxshift;
 unsigned long flags;

 write_seqlock_irqsave(&timekeeper.lock, flags);


 if (unlikely(timekeeping_suspended))
  goto out;

 clock = timekeeper.clock;




 offset = (clock->read(clock) - clock->cycle_last) & clock->mask;

 timekeeper.xtime_nsec = (s64)timekeeper.xtime.tv_nsec <<
      timekeeper.shift;
 shift = ilog2(offset) - ilog2(timekeeper.cycle_interval);
 shift = max(0, shift);

 maxshift = (64 - (ilog2(ntp_tick_length())+1)) - 1;
 shift = min(shift, maxshift);
 while (offset >= timekeeper.cycle_interval) {
  offset = logarithmic_accumulation(offset, shift);
  if(offset < timekeeper.cycle_interval<<shift)
   shift--;
 }


 timekeeping_adjust(offset);
 if (unlikely((s64)timekeeper.xtime_nsec < 0)) {
  s64 neg = -(s64)timekeeper.xtime_nsec;
  timekeeper.xtime_nsec = 0;
  timekeeper.ntp_error += neg << timekeeper.ntp_error_shift;
 }






 timekeeper.xtime.tv_nsec = ((s64)timekeeper.xtime_nsec >>
      timekeeper.shift) + 1;
 timekeeper.xtime_nsec -= (s64)timekeeper.xtime.tv_nsec <<
      timekeeper.shift;
 timekeeper.ntp_error += timekeeper.xtime_nsec <<
    timekeeper.ntp_error_shift;





 if (unlikely(timekeeper.xtime.tv_nsec >= NSEC_PER_SEC)) {
  int leap;
  timekeeper.xtime.tv_nsec -= NSEC_PER_SEC;
  timekeeper.xtime.tv_sec++;
  leap = second_overflow(timekeeper.xtime.tv_sec);
  timekeeper.xtime.tv_sec += leap;
  timekeeper.wall_to_monotonic.tv_sec -= leap;
  if (leap)
   clock_was_set_delayed();
 }

 timekeeping_update(0);

out:
 write_sequnlock_irqrestore(&timekeeper.lock, flags);

}
