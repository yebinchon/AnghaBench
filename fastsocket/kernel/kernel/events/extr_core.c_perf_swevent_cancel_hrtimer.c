
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hw_perf_event {int hrtimer; int period_left; } ;
struct perf_event {struct hw_perf_event hw; } ;
typedef int ktime_t ;


 int hrtimer_cancel (int *) ;
 int hrtimer_get_remaining (int *) ;
 scalar_t__ is_sampling_event (struct perf_event*) ;
 int ktime_to_ns (int ) ;
 int local64_set (int *,int ) ;

__attribute__((used)) static void perf_swevent_cancel_hrtimer(struct perf_event *event)
{
 struct hw_perf_event *hwc = &event->hw;

 if (is_sampling_event(event)) {
  ktime_t remaining = hrtimer_get_remaining(&hwc->hrtimer);
  local64_set(&hwc->period_left, ktime_to_ns(remaining));

  hrtimer_cancel(&hwc->hrtimer);
 }
}
