
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct imx_udc_struct {scalar_t__ base; } ;
struct imx_ep_struct {struct imx_udc_struct* imx_usb; } ;


 int EPSTAT_BCOUNT ;
 int EP_NO (struct imx_ep_struct*) ;
 scalar_t__ USB_EP_STAT (int ) ;
 int __raw_readl (scalar_t__) ;

unsigned imx_fifo_bcount(struct imx_ep_struct *imx_ep)
{
 struct imx_udc_struct *imx_usb = imx_ep->imx_usb;

 return (__raw_readl(imx_usb->base + USB_EP_STAT(EP_NO(imx_ep)))
   & EPSTAT_BCOUNT) >> 16;
}
