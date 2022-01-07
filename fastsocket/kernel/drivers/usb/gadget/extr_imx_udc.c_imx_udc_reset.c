
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct imx_udc_struct {scalar_t__ base; } ;


 int DADR_CFG ;
 int ENAB_RST ;
 scalar_t__ USB_DADR ;
 scalar_t__ USB_ENAB ;
 int __raw_readl (scalar_t__) ;
 int __raw_writel (int,scalar_t__) ;

void imx_udc_reset(struct imx_udc_struct *imx_usb)
{
 int temp = __raw_readl(imx_usb->base + USB_ENAB);


 __raw_writel(temp | ENAB_RST, imx_usb->base + USB_ENAB);


 do {} while (__raw_readl(imx_usb->base + USB_ENAB) & ENAB_RST);


 do {} while (!(__raw_readl(imx_usb->base + USB_DADR) & DADR_CFG));


}
