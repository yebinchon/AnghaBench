
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct usb_hcd {int regs; } ;
struct oxu_hcd {scalar_t__ is_otg; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int OXU_CHIPIRQEN_CLR ;
 int OXU_CHIPIRQEN_SET ;
 int OXU_CHIPIRQSTATUS ;
 int OXU_USBOTGI ;
 int OXU_USBSPHI ;
 struct oxu_hcd* hcd_to_oxu (struct usb_hcd*) ;
 int oxu210_hcd_irq (struct usb_hcd*) ;
 int oxu_readl (int ,int ) ;
 int oxu_writel (int ,int ,int) ;

__attribute__((used)) static irqreturn_t oxu_irq(struct usb_hcd *hcd)
{
 struct oxu_hcd *oxu = hcd_to_oxu(hcd);
 int ret = IRQ_HANDLED;

 u32 status = oxu_readl(hcd->regs, OXU_CHIPIRQSTATUS);
 u32 enable = oxu_readl(hcd->regs, OXU_CHIPIRQEN_SET);


 oxu_writel(hcd->regs, OXU_CHIPIRQEN_CLR, enable);

 if ((oxu->is_otg && (status & OXU_USBOTGI)) ||
  (!oxu->is_otg && (status & OXU_USBSPHI)))
  oxu210_hcd_irq(hcd);
 else
  ret = IRQ_NONE;


 oxu_writel(hcd->regs, OXU_CHIPIRQEN_SET, enable);

 return ret;
}
