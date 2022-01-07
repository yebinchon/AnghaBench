
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct usb_gadget_driver {int (* disconnect ) (TYPE_2__*) ;} ;
struct TYPE_4__ {scalar_t__ speed; } ;
struct pxa_udc {TYPE_2__ gadget; TYPE_1__* udc_usb_ep; } ;
struct TYPE_3__ {int usb_ep; } ;


 int NR_USB_ENDPOINTS ;
 scalar_t__ USB_SPEED_UNKNOWN ;
 int pxa_ep_disable (int *) ;
 int stub1 (TYPE_2__*) ;

__attribute__((used)) static void stop_activity(struct pxa_udc *udc, struct usb_gadget_driver *driver)
{
 int i;


 if (udc->gadget.speed == USB_SPEED_UNKNOWN)
  driver = ((void*)0);
 udc->gadget.speed = USB_SPEED_UNKNOWN;

 for (i = 0; i < NR_USB_ENDPOINTS; i++)
  pxa_ep_disable(&udc->udc_usb_ep[i].usb_ep);

 if (driver)
  driver->disconnect(&udc->gadget);
}
