
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct imx_ep_struct {TYPE_1__* imx_usb; } ;
struct TYPE_2__ {scalar_t__ base; } ;


 int EP_NO (struct imx_ep_struct*) ;
 scalar_t__ USB_EP_INTR (int) ;
 scalar_t__ USB_EP_MASK (int) ;
 int __raw_writel (int,scalar_t__) ;

void imx_ep_irq_disable(struct imx_ep_struct *imx_ep)
{

 int i = EP_NO(imx_ep);

 __raw_writel(0x1FF, imx_ep->imx_usb->base + USB_EP_MASK(i));
 __raw_writel(0x1FF, imx_ep->imx_usb->base + USB_EP_INTR(i));
}
