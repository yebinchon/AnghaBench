
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hrtimer_clock_base {int dummy; } ;
struct hrtimer {int dummy; } ;
typedef int ktime_t ;


 int hrtimer_expires_remaining (struct hrtimer const*) ;
 struct hrtimer_clock_base* lock_hrtimer_base (struct hrtimer const*,unsigned long*) ;
 int unlock_hrtimer_base (struct hrtimer const*,unsigned long*) ;

ktime_t hrtimer_get_remaining(const struct hrtimer *timer)
{
 struct hrtimer_clock_base *base;
 unsigned long flags;
 ktime_t rem;

 base = lock_hrtimer_base(timer, &flags);
 rem = hrtimer_expires_remaining(timer);
 unlock_hrtimer_base(timer, &flags);

 return rem;
}
