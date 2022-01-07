
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ct_timer_instance {int running; int running_list; scalar_t__ need_update; struct ct_timer* timer_base; } ;
struct ct_timer {int lock; int running_head; int wc; } ;


 int ct_xfitimer_get_wc (struct ct_timer*) ;
 int ct_xfitimer_update (struct ct_timer*) ;
 int list_add (int *,int *) ;
 scalar_t__ list_empty (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void ct_xfitimer_start(struct ct_timer_instance *ti)
{
 struct ct_timer *atimer = ti->timer_base;
 unsigned long flags;

 spin_lock_irqsave(&atimer->lock, flags);
 if (list_empty(&ti->running_list))
  atimer->wc = ct_xfitimer_get_wc(atimer);
 ti->running = 1;
 ti->need_update = 0;
 list_add(&ti->running_list, &atimer->running_head);
 spin_unlock_irqrestore(&atimer->lock, flags);
 ct_xfitimer_update(atimer);
}
