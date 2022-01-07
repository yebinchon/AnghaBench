
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct hw_perf_event {int last_period; int sample_period; int period_left; } ;
struct perf_event {struct hw_perf_event hw; } ;
typedef scalar_t__ s64 ;


 int div64_u64 (scalar_t__,int) ;
 scalar_t__ local64_cmpxchg (int *,scalar_t__,scalar_t__) ;
 scalar_t__ local64_read (int *) ;

__attribute__((used)) static u64 perf_swevent_set_period(struct perf_event *event)
{
 struct hw_perf_event *hwc = &event->hw;
 u64 period = hwc->last_period;
 u64 nr, offset;
 s64 old, val;

 hwc->last_period = hwc->sample_period;

again:
 old = val = local64_read(&hwc->period_left);
 if (val < 0)
  return 0;

 nr = div64_u64(period + val, period);
 offset = nr * period;
 val -= offset;
 if (local64_cmpxchg(&hwc->period_left, old, val) != old)
  goto again;

 return nr;
}
