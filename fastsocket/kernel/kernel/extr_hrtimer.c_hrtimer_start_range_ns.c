
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hrtimer {int dummy; } ;
typedef int ktime_t ;
typedef enum hrtimer_mode { ____Placeholder_hrtimer_mode } hrtimer_mode ;


 int __hrtimer_start_range_ns (struct hrtimer*,int ,unsigned long,int const,int) ;

int hrtimer_start_range_ns(struct hrtimer *timer, ktime_t tim,
  unsigned long delta_ns, const enum hrtimer_mode mode)
{
 return __hrtimer_start_range_ns(timer, tim, delta_ns, mode, 1);
}
