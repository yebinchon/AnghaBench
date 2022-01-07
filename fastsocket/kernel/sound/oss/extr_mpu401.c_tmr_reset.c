
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mpu_config {int lock; } ;


 scalar_t__ curr_clocks ;
 scalar_t__ curr_ticks ;
 unsigned long next_event_time ;
 scalar_t__ prev_event_time ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void tmr_reset(struct mpu_config *devc)
{
 unsigned long flags;

 spin_lock_irqsave(&devc->lock,flags);
 next_event_time = (unsigned long) -1;
 prev_event_time = 0;
 curr_ticks = curr_clocks = 0;
 spin_unlock_irqrestore(&devc->lock,flags);
}
