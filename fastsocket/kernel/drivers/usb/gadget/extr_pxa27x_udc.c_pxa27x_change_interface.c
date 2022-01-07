
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_ctrlrequest {int wValue; int wIndex; scalar_t__ wLength; int bRequest; int bRequestType; } ;
struct pxa_udc {int last_interface; int last_alternate; int * pxa_ep; int gadget; TYPE_1__* driver; int dev; } ;
struct TYPE_2__ {int (* setup ) (int *,struct usb_ctrlrequest*) ;} ;


 int UDCCSR0_AREN ;
 int USB_RECIP_INTERFACE ;
 int USB_REQ_SET_INTERFACE ;
 int WAIT_ACK_SET_CONF_INTERF ;
 int dev_dbg (int ,char*,int,int) ;
 int ep_write_UDCCSR (int *,int ) ;
 int set_ep0state (struct pxa_udc*,int ) ;
 int stub1 (int *,struct usb_ctrlrequest*) ;

__attribute__((used)) static void pxa27x_change_interface(struct pxa_udc *udc, int iface, int alt)
{
 struct usb_ctrlrequest req;

 dev_dbg(udc->dev, "interface=%d, alternate setting=%d\n", iface, alt);

 udc->last_interface = iface;
 udc->last_alternate = alt;

 req.bRequestType = USB_RECIP_INTERFACE;
 req.bRequest = USB_REQ_SET_INTERFACE;
 req.wValue = alt;
 req.wIndex = iface;
 req.wLength = 0;

 set_ep0state(udc, WAIT_ACK_SET_CONF_INTERF);
 udc->driver->setup(&udc->gadget, &req);
 ep_write_UDCCSR(&udc->pxa_ep[0], UDCCSR0_AREN);
}
