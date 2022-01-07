
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hrtimer_clock_base {int dummy; } ;
struct hrtimer {int dummy; } ;



__attribute__((used)) static inline int hrtimer_enqueue_reprogram(struct hrtimer *timer,
         struct hrtimer_clock_base *base,
         int wakeup)
{
 return 0;
}
