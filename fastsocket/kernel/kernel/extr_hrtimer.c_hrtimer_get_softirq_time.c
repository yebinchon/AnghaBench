
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct timespec {int dummy; } ;
struct hrtimer_cpu_base {TYPE_1__* clock_base; } ;
typedef int ktime_t ;
struct TYPE_2__ {int softirq_time; } ;


 size_t CLOCK_MONOTONIC ;
 size_t CLOCK_REALTIME ;
 int get_xtime_and_monotonic_and_sleep_offset (struct timespec*,struct timespec*,struct timespec*) ;
 int ktime_add (int ,int ) ;
 int timespec_to_ktime (struct timespec) ;

__attribute__((used)) static void hrtimer_get_softirq_time(struct hrtimer_cpu_base *base)
{
 ktime_t xtim, tomono;
 struct timespec xts, tom, slp;

 get_xtime_and_monotonic_and_sleep_offset(&xts, &tom, &slp);

 xtim = timespec_to_ktime(xts);
 tomono = timespec_to_ktime(tom);
 base->clock_base[CLOCK_REALTIME].softirq_time = xtim;
 base->clock_base[CLOCK_MONOTONIC].softirq_time =
  ktime_add(xtim, tomono);
}
