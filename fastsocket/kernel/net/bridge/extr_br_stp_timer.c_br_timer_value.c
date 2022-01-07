
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_list {scalar_t__ expires; } ;


 scalar_t__ jiffies ;
 unsigned long jiffies_to_clock_t (scalar_t__) ;
 scalar_t__ timer_pending (struct timer_list const*) ;

unsigned long br_timer_value(const struct timer_list *timer)
{
 return timer_pending(timer)
  ? jiffies_to_clock_t(timer->expires - jiffies) : 0;
}
