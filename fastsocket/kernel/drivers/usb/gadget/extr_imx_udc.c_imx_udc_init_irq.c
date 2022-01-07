
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct imx_udc_struct {scalar_t__ base; } ;


 int EPINTR_DEVREQ ;
 int EPINTR_EOF ;
 int EPINTR_EOT ;
 int EPINTR_FIFO_EMPTY ;
 int EPINTR_FIFO_FULL ;
 int EPINTR_MDEVREQ ;
 int IMX_USB_NB_EP ;
 int INTR_FRAME_MATCH ;
 int INTR_MSOF ;
 scalar_t__ USB_EP_INTR (int) ;
 scalar_t__ USB_EP_MASK (int) ;
 scalar_t__ USB_INTR ;
 scalar_t__ USB_MASK ;
 int __raw_writel (int,scalar_t__) ;

void imx_udc_init_irq(struct imx_udc_struct *imx_usb)
{
 int i;


 __raw_writel(0xFFFFFFFF, imx_usb->base + USB_MASK);
 __raw_writel(0xFFFFFFFF, imx_usb->base + USB_INTR);
 for (i = 0; i < IMX_USB_NB_EP; i++) {
  __raw_writel(0x1FF, imx_usb->base + USB_EP_MASK(i));
  __raw_writel(0x1FF, imx_usb->base + USB_EP_INTR(i));
 }


 __raw_writel(INTR_MSOF | INTR_FRAME_MATCH, imx_usb->base + USB_MASK);


 __raw_writel(0x1FF & ~(EPINTR_DEVREQ | EPINTR_MDEVREQ | EPINTR_EOT
  | EPINTR_EOF | EPINTR_FIFO_EMPTY | EPINTR_FIFO_FULL),
  imx_usb->base + USB_EP_MASK(0));
}
