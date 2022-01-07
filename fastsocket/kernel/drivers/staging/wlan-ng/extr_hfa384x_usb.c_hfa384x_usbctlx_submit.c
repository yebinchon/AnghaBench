
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {int list; int state; } ;
typedef TYPE_3__ hfa384x_usbctlx_t ;
struct TYPE_8__ {int lock; int pending; } ;
struct TYPE_11__ {TYPE_1__ ctlxq; TYPE_2__* wlandev; } ;
typedef TYPE_4__ hfa384x_t ;
struct TYPE_9__ {scalar_t__ hwremoved; } ;


 int CTLX_PENDING ;
 int ENODEV ;
 int hfa384x_usbctlxq_run (TYPE_4__*) ;
 int list_add_tail (int *,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int hfa384x_usbctlx_submit(hfa384x_t *hw, hfa384x_usbctlx_t *ctlx)
{
 unsigned long flags;
 int ret;

 spin_lock_irqsave(&hw->ctlxq.lock, flags);

 if (hw->wlandev->hwremoved) {
  spin_unlock_irqrestore(&hw->ctlxq.lock, flags);
  ret = -ENODEV;
 } else {
  ctlx->state = CTLX_PENDING;
  list_add_tail(&ctlx->list, &hw->ctlxq.pending);

  spin_unlock_irqrestore(&hw->ctlxq.lock, flags);
  hfa384x_usbctlxq_run(hw);
  ret = 0;
 }

 return ret;
}
