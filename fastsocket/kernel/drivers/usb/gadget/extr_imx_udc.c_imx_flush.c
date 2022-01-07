
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct imx_udc_struct {scalar_t__ base; } ;
struct imx_ep_struct {struct imx_udc_struct* imx_usb; } ;


 int EPSTAT_FLUSH ;
 int EP_NO (struct imx_ep_struct*) ;
 scalar_t__ USB_EP_STAT (int ) ;
 int __raw_readl (scalar_t__) ;
 int __raw_writel (int,scalar_t__) ;

void imx_flush(struct imx_ep_struct *imx_ep)
{
 struct imx_udc_struct *imx_usb = imx_ep->imx_usb;

 int temp = __raw_readl(imx_usb->base + USB_EP_STAT(EP_NO(imx_ep)));
 __raw_writel(temp | EPSTAT_FLUSH,
  imx_usb->base + USB_EP_STAT(EP_NO(imx_ep)));
}
