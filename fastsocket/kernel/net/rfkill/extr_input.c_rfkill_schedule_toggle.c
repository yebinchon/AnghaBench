
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum rfkill_type { ____Placeholder_rfkill_type } rfkill_type ;


 int __change_bit (int,int ) ;
 int __set_bit (int,int ) ;
 scalar_t__ rfkill_is_epo_lock_active () ;
 int rfkill_op_lock ;
 int rfkill_op_pending ;
 int rfkill_schedule_ratelimited () ;
 int rfkill_sw_pending ;
 int rfkill_sw_state ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void rfkill_schedule_toggle(enum rfkill_type type)
{
 unsigned long flags;

 if (rfkill_is_epo_lock_active())
  return;

 spin_lock_irqsave(&rfkill_op_lock, flags);
 if (!rfkill_op_pending) {
  __set_bit(type, rfkill_sw_pending);
  __change_bit(type, rfkill_sw_state);
  rfkill_schedule_ratelimited();
 }
 spin_unlock_irqrestore(&rfkill_op_lock, flags);
}
