
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ct_timer_instance {scalar_t__ running; int running_list; struct ct_timer* timer_base; } ;
struct ct_timer {int lock; } ;


 int ct_xfitimer_update (struct ct_timer*) ;
 int list_del_init (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void ct_xfitimer_stop(struct ct_timer_instance *ti)
{
 struct ct_timer *atimer = ti->timer_base;
 unsigned long flags;

 spin_lock_irqsave(&atimer->lock, flags);
 list_del_init(&ti->running_list);
 ti->running = 0;
 spin_unlock_irqrestore(&atimer->lock, flags);
 ct_xfitimer_update(atimer);
}
