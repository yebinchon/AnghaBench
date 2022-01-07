
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tvec_base {int lock; int next_timer; } ;
struct timer_list {int expires; int base; int function; } ;


 int BUG_ON (int) ;
 int debug_activate (struct timer_list*,int ) ;
 int internal_add_timer (struct tvec_base*,struct timer_list*) ;
 struct tvec_base* per_cpu (int ,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int tbase_get_deferrable (int ) ;
 scalar_t__ time_before (int ,int ) ;
 scalar_t__ timer_pending (struct timer_list*) ;
 int timer_set_base (struct timer_list*,struct tvec_base*) ;
 int timer_stats_timer_set_start_info (struct timer_list*) ;
 int tvec_bases ;
 int wake_up_idle_cpu (int) ;

void add_timer_on(struct timer_list *timer, int cpu)
{
 struct tvec_base *base = per_cpu(tvec_bases, cpu);
 unsigned long flags;

 timer_stats_timer_set_start_info(timer);
 BUG_ON(timer_pending(timer) || !timer->function);
 spin_lock_irqsave(&base->lock, flags);
 timer_set_base(timer, base);
 debug_activate(timer, timer->expires);
 if (time_before(timer->expires, base->next_timer) &&
     !tbase_get_deferrable(timer->base))
  base->next_timer = timer->expires;
 internal_add_timer(base, timer);
 wake_up_idle_cpu(cpu);
 spin_unlock_irqrestore(&base->lock, flags);
}
