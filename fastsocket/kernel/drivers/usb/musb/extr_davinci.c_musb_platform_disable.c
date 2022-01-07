
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct musb {int ctrl_base; int mregs; } ;


 int DAVINCI_USB_EOI_REG ;
 int DAVINCI_USB_INT_MASK_CLR_REG ;
 int DAVINCI_USB_RXINT_MASK ;
 int DAVINCI_USB_TXINT_MASK ;
 int DAVINCI_USB_USBINT_MASK ;
 int MUSB_DEVCTL ;
 int WARNING (char*) ;
 int dma_off ;
 scalar_t__ is_dma_capable () ;
 int musb_writeb (int ,int ,int ) ;
 int musb_writel (int ,int ,int) ;

void musb_platform_disable(struct musb *musb)
{





 musb_writel(musb->ctrl_base, DAVINCI_USB_INT_MASK_CLR_REG,
     DAVINCI_USB_USBINT_MASK
   | DAVINCI_USB_TXINT_MASK
   | DAVINCI_USB_RXINT_MASK);
 musb_writeb(musb->mregs, MUSB_DEVCTL, 0);
 musb_writel(musb->ctrl_base, DAVINCI_USB_EOI_REG, 0);

 if (is_dma_capable() && !dma_off)
  WARNING("dma still active\n");
}
