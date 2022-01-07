
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_gadget_driver {int (* disconnect ) (TYPE_1__*) ;} ;
struct TYPE_2__ {scalar_t__ speed; } ;
struct imx_udc_struct {TYPE_1__ gadget; scalar_t__ alt; scalar_t__ intf; scalar_t__ cfg; struct imx_ep_struct* imx_ep; } ;
struct imx_ep_struct {int stopped; } ;


 int ESHUTDOWN ;
 int IMX_USB_NB_EP ;
 scalar_t__ USB_SPEED_UNKNOWN ;
 int imx_ep_irq_disable (struct imx_ep_struct*) ;
 int imx_flush (struct imx_ep_struct*) ;
 int nuke (struct imx_ep_struct*,int ) ;
 int stub1 (TYPE_1__*) ;

__attribute__((used)) static void udc_stop_activity(struct imx_udc_struct *imx_usb,
     struct usb_gadget_driver *driver)
{
 struct imx_ep_struct *imx_ep;
 int i;

 if (imx_usb->gadget.speed == USB_SPEED_UNKNOWN)
  driver = ((void*)0);


 for (i = 1; i < IMX_USB_NB_EP; i++) {
  imx_ep = &imx_usb->imx_ep[i];
  imx_flush(imx_ep);
  imx_ep->stopped = 1;
  imx_ep_irq_disable(imx_ep);
  nuke(imx_ep, -ESHUTDOWN);
 }

 imx_usb->cfg = 0;
 imx_usb->intf = 0;
 imx_usb->alt = 0;

 if (driver)
  driver->disconnect(&imx_usb->gadget);
}
