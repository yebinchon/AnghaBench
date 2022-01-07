
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int hfa384x_usbctlx_t ;
struct TYPE_6__ {int lock; int active; } ;
struct TYPE_7__ {int resp_timer_done; TYPE_1__ ctlxq; } ;
typedef TYPE_2__ hfa384x_t ;


 int * get_active_ctlx (TYPE_2__*) ;
 int hfa384x_usbctlxq_run (TYPE_2__*) ;
 int list_empty (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ unlocked_usbctlx_cancel_async (TYPE_2__*,int *) ;

__attribute__((used)) static void hfa384x_usbctlx_resptimerfn(unsigned long data)
{
 hfa384x_t *hw = (hfa384x_t *) data;
 unsigned long flags;

 spin_lock_irqsave(&hw->ctlxq.lock, flags);

 hw->resp_timer_done = 1;




 if (!list_empty(&hw->ctlxq.active)) {
  hfa384x_usbctlx_t *ctlx = get_active_ctlx(hw);

  if (unlocked_usbctlx_cancel_async(hw, ctlx) == 0) {
   spin_unlock_irqrestore(&hw->ctlxq.lock, flags);
   hfa384x_usbctlxq_run(hw);
   goto done;
  }
 }

 spin_unlock_irqrestore(&hw->ctlxq.lock, flags);

done:
 ;

}
