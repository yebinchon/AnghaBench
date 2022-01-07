
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int lock; } ;
struct TYPE_6__ {TYPE_2__ ctlxq; int usb_work; int usb_flags; TYPE_1__* wlandev; } ;
typedef TYPE_3__ hfa384x_t ;
struct TYPE_4__ {int hwremoved; } ;


 int THROTTLE_RX ;
 int THROTTLE_TX ;
 int WORK_RX_RESUME ;
 int WORK_TX_RESUME ;
 int pr_debug (char*,int ) ;
 int schedule_work (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ test_and_clear_bit (int ,int *) ;
 int test_and_set_bit (int ,int *) ;

__attribute__((used)) static void hfa384x_usb_throttlefn(unsigned long data)
{
 hfa384x_t *hw = (hfa384x_t *) data;
 unsigned long flags;

 spin_lock_irqsave(&hw->ctlxq.lock, flags);





 pr_debug("flags=0x%lx\n", hw->usb_flags);
 if (!hw->wlandev->hwremoved &&
     ((test_and_clear_bit(THROTTLE_RX, &hw->usb_flags) &&
       !test_and_set_bit(WORK_RX_RESUME, &hw->usb_flags))
      |
      (test_and_clear_bit(THROTTLE_TX, &hw->usb_flags) &&
       !test_and_set_bit(WORK_TX_RESUME, &hw->usb_flags))
     )) {
  schedule_work(&hw->usb_work);
 }

 spin_unlock_irqrestore(&hw->ctlxq.lock, flags);
}
