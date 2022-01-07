
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ct_timer {int irq_handling; int lock; scalar_t__ reprogram; } ;


 int ct_xfitimer_check_period (struct ct_timer*) ;
 int ct_xfitimer_reprogram (struct ct_timer*,int) ;
 int spin_lock (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock (int *) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void ct_xfitimer_callback(struct ct_timer *atimer)
{
 int update;
 unsigned long flags;

 spin_lock_irqsave(&atimer->lock, flags);
 atimer->irq_handling = 1;
 do {
  update = ct_xfitimer_reprogram(atimer, 1);
  spin_unlock(&atimer->lock);
  if (update)
   ct_xfitimer_check_period(atimer);
  spin_lock(&atimer->lock);
 } while (atimer->reprogram);
 atimer->irq_handling = 0;
 spin_unlock_irqrestore(&atimer->lock, flags);
}
