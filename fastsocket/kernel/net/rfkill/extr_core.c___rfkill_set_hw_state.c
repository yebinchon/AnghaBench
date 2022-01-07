
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rfkill {int state; int lock; } ;


 int BUG_ON (int) ;
 int RFKILL_BLOCK_ANY ;
 int RFKILL_BLOCK_HW ;
 int rfkill_led_trigger_event (struct rfkill*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static bool __rfkill_set_hw_state(struct rfkill *rfkill,
      bool blocked, bool *change)
{
 unsigned long flags;
 bool prev, any;

 BUG_ON(!rfkill);

 spin_lock_irqsave(&rfkill->lock, flags);
 prev = !!(rfkill->state & RFKILL_BLOCK_HW);
 if (blocked)
  rfkill->state |= RFKILL_BLOCK_HW;
 else
  rfkill->state &= ~RFKILL_BLOCK_HW;
 *change = prev != blocked;
 any = rfkill->state & RFKILL_BLOCK_ANY;
 spin_unlock_irqrestore(&rfkill->lock, flags);

 rfkill_led_trigger_event(rfkill);

 return any;
}
