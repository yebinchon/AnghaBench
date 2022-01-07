
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int state; } ;
typedef TYPE_1__ hfa384x_usbctlx_t ;
struct TYPE_10__ {int transfer_flags; } ;
struct TYPE_9__ {TYPE_3__ ctlx_urb; } ;
typedef TYPE_2__ hfa384x_t ;


 int CTLX_REQ_FAILED ;
 int EINPROGRESS ;
 int URB_ASYNC_UNLINK ;
 int unlocked_usbctlx_complete (TYPE_2__*,TYPE_1__*) ;
 int usb_unlink_urb (TYPE_3__*) ;

__attribute__((used)) static int unlocked_usbctlx_cancel_async(hfa384x_t *hw,
      hfa384x_usbctlx_t *ctlx)
{
 int ret;






 hw->ctlx_urb.transfer_flags |= URB_ASYNC_UNLINK;
 ret = usb_unlink_urb(&hw->ctlx_urb);

 if (ret != -EINPROGRESS) {






  ctlx->state = CTLX_REQ_FAILED;
  unlocked_usbctlx_complete(hw, ctlx);
  ret = 0;
 }

 return ret;
}
