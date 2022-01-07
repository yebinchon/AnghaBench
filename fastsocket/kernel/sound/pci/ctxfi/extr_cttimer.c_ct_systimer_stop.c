
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ct_timer_instance {int lock; int timer; scalar_t__ running; } ;


 int del_timer (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void ct_systimer_stop(struct ct_timer_instance *ti)
{
 unsigned long flags;

 spin_lock_irqsave(&ti->lock, flags);
 ti->running = 0;
 del_timer(&ti->timer);
 spin_unlock_irqrestore(&ti->lock, flags);
}
