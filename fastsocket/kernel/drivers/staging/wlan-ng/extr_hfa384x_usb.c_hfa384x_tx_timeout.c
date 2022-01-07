
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {TYPE_4__* priv; } ;
typedef TYPE_3__ wlandevice_t ;
struct TYPE_6__ {int lock; } ;
struct TYPE_9__ {TYPE_1__ ctlxq; int usb_work; int usb_flags; TYPE_2__* wlandev; } ;
typedef TYPE_4__ hfa384x_t ;
struct TYPE_7__ {int hwremoved; } ;


 int WORK_RX_HALT ;
 int WORK_TX_HALT ;
 int schedule_work (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int test_and_set_bit (int ,int *) ;

void hfa384x_tx_timeout(wlandevice_t *wlandev)
{
 hfa384x_t *hw = wlandev->priv;
 unsigned long flags;

 spin_lock_irqsave(&hw->ctlxq.lock, flags);

 if (!hw->wlandev->hwremoved &&

     (!test_and_set_bit(WORK_TX_HALT, &hw->usb_flags) |
      !test_and_set_bit(WORK_RX_HALT, &hw->usb_flags))) {
  schedule_work(&hw->usb_work);
 }

 spin_unlock_irqrestore(&hw->ctlxq.lock, flags);
}
