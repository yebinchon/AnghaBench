
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_gadget_driver {int (* disconnect ) (TYPE_1__*) ;} ;
struct musb_hw_ep {int ep_out; scalar_t__ max_packet_sz_rx; int ep_in; scalar_t__ max_packet_sz_tx; scalar_t__ is_shared_fifo; } ;
struct TYPE_2__ {scalar_t__ speed; } ;
struct musb {int nr_endpoints; int lock; TYPE_1__ g; int mregs; struct musb_hw_ep* endpoints; scalar_t__ softconnect; } ;


 int ESHUTDOWN ;
 scalar_t__ USB_SPEED_UNKNOWN ;
 int musb_ep_select (int ,int) ;
 int musb_pullup (struct musb*,int ) ;
 int musb_stop (struct musb*) ;
 int nuke (int *,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int stub1 (TYPE_1__*) ;

__attribute__((used)) static void stop_activity(struct musb *musb, struct usb_gadget_driver *driver)
{
 int i;
 struct musb_hw_ep *hw_ep;


 if (musb->g.speed == USB_SPEED_UNKNOWN)
  driver = ((void*)0);
 else
  musb->g.speed = USB_SPEED_UNKNOWN;


 if (musb->softconnect) {
  musb->softconnect = 0;
  musb_pullup(musb, 0);
 }
 musb_stop(musb);




 if (driver) {
  for (i = 0, hw_ep = musb->endpoints;
    i < musb->nr_endpoints;
    i++, hw_ep++) {
   musb_ep_select(musb->mregs, i);
   if (hw_ep->is_shared_fifo ) {
    nuke(&hw_ep->ep_in, -ESHUTDOWN);
   } else {
    if (hw_ep->max_packet_sz_tx)
     nuke(&hw_ep->ep_in, -ESHUTDOWN);
    if (hw_ep->max_packet_sz_rx)
     nuke(&hw_ep->ep_out, -ESHUTDOWN);
   }
  }

  spin_unlock(&musb->lock);
  driver->disconnect(&musb->g);
  spin_lock(&musb->lock);
 }
}
