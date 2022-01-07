
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fsl_udc {int gadget; TYPE_1__* driver; int usb_state; int resume_state; } ;
struct TYPE_2__ {int (* suspend ) (int *) ;} ;


 int USB_STATE_SUSPENDED ;
 int stub1 (int *) ;

__attribute__((used)) static void suspend_irq(struct fsl_udc *udc)
{
 udc->resume_state = udc->usb_state;
 udc->usb_state = USB_STATE_SUSPENDED;


 if (udc->driver->suspend)
  udc->driver->suspend(&udc->gadget);
}
