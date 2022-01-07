
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int state; } ;
typedef TYPE_2__ hfa384x_usbctlx_t ;
struct TYPE_7__ {int lock; int active; } ;
struct TYPE_10__ {int transfer_flags; } ;
struct TYPE_9__ {int req_timer_done; int resp_timer_done; TYPE_1__ ctlxq; int resptimer; TYPE_4__ ctlx_urb; } ;
typedef TYPE_3__ hfa384x_t ;


 int CTLX_REQ_FAILED ;
 int EINPROGRESS ;
 int URB_ASYNC_UNLINK ;
 scalar_t__ del_timer (int *) ;
 TYPE_2__* get_active_ctlx (TYPE_3__*) ;
 int list_empty (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int usb_unlink_urb (TYPE_4__*) ;

__attribute__((used)) static void hfa384x_usbctlx_reqtimerfn(unsigned long data)
{
 hfa384x_t *hw = (hfa384x_t *) data;
 unsigned long flags;

 spin_lock_irqsave(&hw->ctlxq.lock, flags);

 hw->req_timer_done = 1;




 if (!list_empty(&hw->ctlxq.active)) {




  hw->ctlx_urb.transfer_flags |= URB_ASYNC_UNLINK;
  if (usb_unlink_urb(&hw->ctlx_urb) == -EINPROGRESS) {
   hfa384x_usbctlx_t *ctlx = get_active_ctlx(hw);

   ctlx->state = CTLX_REQ_FAILED;
   if (del_timer(&hw->resptimer) != 0)
    hw->resp_timer_done = 1;
  }
 }

 spin_unlock_irqrestore(&hw->ctlxq.lock, flags);
}
