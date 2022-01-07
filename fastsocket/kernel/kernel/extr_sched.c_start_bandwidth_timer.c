
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hrtimer {int dummy; } ;
typedef int ktime_t ;


 int HRTIMER_MODE_ABS_PINNED ;
 int __hrtimer_start_range_ns (struct hrtimer*,int ,unsigned long,int ,int ) ;
 scalar_t__ hrtimer_active (struct hrtimer*) ;
 int hrtimer_cb_get_time (struct hrtimer*) ;
 int hrtimer_forward (struct hrtimer*,int ,int ) ;
 int hrtimer_get_expires (struct hrtimer*) ;
 int hrtimer_get_softexpires (struct hrtimer*) ;
 int ktime_sub (int ,int ) ;
 unsigned long ktime_to_ns (int ) ;

__attribute__((used)) static void start_bandwidth_timer(struct hrtimer *period_timer, ktime_t period)
{
 unsigned long delta;
 ktime_t soft, hard, now;

 for (;;) {
  if (hrtimer_active(period_timer))
   break;

  now = hrtimer_cb_get_time(period_timer);
  hrtimer_forward(period_timer, now, period);

  soft = hrtimer_get_softexpires(period_timer);
  hard = hrtimer_get_expires(period_timer);
  delta = ktime_to_ns(ktime_sub(hard, soft));
  __hrtimer_start_range_ns(period_timer, soft, delta,
      HRTIMER_MODE_ABS_PINNED, 0);
 }
}
