
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_gadget_driver {int (* disconnect ) (TYPE_1__*) ;} ;
struct TYPE_2__ {scalar_t__ speed; } ;
struct lh7a40x_udc {int lock; TYPE_1__ gadget; struct lh7a40x_ep* ep; } ;
struct lh7a40x_ep {int stopped; } ;


 int ESHUTDOWN ;
 int UDC_MAX_ENDPOINTS ;
 scalar_t__ USB_SPEED_UNKNOWN ;
 int nuke (struct lh7a40x_ep*,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int stub1 (TYPE_1__*) ;
 int udc_reinit (struct lh7a40x_udc*) ;
 int usb_set_index (int) ;

__attribute__((used)) static void stop_activity(struct lh7a40x_udc *dev,
     struct usb_gadget_driver *driver)
{
 int i;


 if (dev->gadget.speed == USB_SPEED_UNKNOWN)
  driver = 0;
 dev->gadget.speed = USB_SPEED_UNKNOWN;


 for (i = 0; i < UDC_MAX_ENDPOINTS; i++) {
  struct lh7a40x_ep *ep = &dev->ep[i];
  ep->stopped = 1;

  usb_set_index(i);
  nuke(ep, -ESHUTDOWN);
 }


 if (driver) {
  spin_unlock(&dev->lock);
  driver->disconnect(&dev->gadget);
  spin_lock(&dev->lock);
 }


 udc_reinit(dev);
}
