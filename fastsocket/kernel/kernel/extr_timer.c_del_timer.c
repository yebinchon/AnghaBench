
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tvec_base {scalar_t__ next_timer; scalar_t__ timer_jiffies; int lock; } ;
struct timer_list {scalar_t__ expires; int base; } ;


 int detach_timer (struct timer_list*,int) ;
 struct tvec_base* lock_timer_base (struct timer_list*,unsigned long*) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int tbase_get_deferrable (int ) ;
 scalar_t__ timer_pending (struct timer_list*) ;
 int timer_stats_timer_clear_start_info (struct timer_list*) ;

int del_timer(struct timer_list *timer)
{
 struct tvec_base *base;
 unsigned long flags;
 int ret = 0;

 timer_stats_timer_clear_start_info(timer);
 if (timer_pending(timer)) {
  base = lock_timer_base(timer, &flags);
  if (timer_pending(timer)) {
   detach_timer(timer, 1);
   if (timer->expires == base->next_timer &&
       !tbase_get_deferrable(timer->base))
    base->next_timer = base->timer_jiffies;
   ret = 1;
  }
  spin_unlock_irqrestore(&base->lock, flags);
 }

 return ret;
}
