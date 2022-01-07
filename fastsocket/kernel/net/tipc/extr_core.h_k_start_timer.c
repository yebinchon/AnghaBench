
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_list {int dummy; } ;


 int dbg (char*,struct timer_list*,unsigned long) ;
 scalar_t__ jiffies ;
 int mod_timer (struct timer_list*,scalar_t__) ;
 scalar_t__ msecs_to_jiffies (unsigned long) ;

__attribute__((used)) static inline void k_start_timer(struct timer_list *timer, unsigned long msec)
{
 dbg("starting timer %p for %u\n", timer, msec);
 mod_timer(timer, jiffies + msecs_to_jiffies(msec) + 1);
}
