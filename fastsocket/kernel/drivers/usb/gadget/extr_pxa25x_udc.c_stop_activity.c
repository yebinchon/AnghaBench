
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_gadget_driver {int (* disconnect ) (TYPE_1__*) ;} ;
struct TYPE_2__ {scalar_t__ speed; } ;
struct pxa25x_udc {TYPE_1__ gadget; int timer; struct pxa25x_ep* ep; } ;
struct pxa25x_ep {int stopped; } ;


 int ESHUTDOWN ;
 int PXA_UDC_NUM_ENDPOINTS ;
 scalar_t__ USB_SPEED_UNKNOWN ;
 int del_timer_sync (int *) ;
 int nuke (struct pxa25x_ep*,int ) ;
 int stub1 (TYPE_1__*) ;
 int udc_reinit (struct pxa25x_udc*) ;

__attribute__((used)) static void
stop_activity(struct pxa25x_udc *dev, struct usb_gadget_driver *driver)
{
 int i;


 if (dev->gadget.speed == USB_SPEED_UNKNOWN)
  driver = ((void*)0);
 dev->gadget.speed = USB_SPEED_UNKNOWN;


 for (i = 0; i < PXA_UDC_NUM_ENDPOINTS; i++) {
  struct pxa25x_ep *ep = &dev->ep[i];

  ep->stopped = 1;
  nuke(ep, -ESHUTDOWN);
 }
 del_timer_sync(&dev->timer);


 if (driver)
  driver->disconnect(&dev->gadget);


 udc_reinit(dev);
}
