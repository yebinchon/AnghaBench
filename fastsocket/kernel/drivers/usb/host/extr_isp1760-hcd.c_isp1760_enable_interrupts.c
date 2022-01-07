
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_hcd {scalar_t__ regs; } ;


 scalar_t__ HC_ATL_IRQ_MASK_AND_REG ;
 scalar_t__ HC_ATL_IRQ_MASK_OR_REG ;
 scalar_t__ HC_INT_IRQ_MASK_AND_REG ;
 scalar_t__ HC_INT_IRQ_MASK_OR_REG ;
 scalar_t__ HC_ISO_IRQ_MASK_AND_REG ;
 scalar_t__ HC_ISO_IRQ_MASK_OR_REG ;
 int isp1760_writel (int,scalar_t__) ;

__attribute__((used)) static void isp1760_enable_interrupts(struct usb_hcd *hcd)
{
 isp1760_writel(0, hcd->regs + HC_ATL_IRQ_MASK_AND_REG);
 isp1760_writel(0, hcd->regs + HC_ATL_IRQ_MASK_OR_REG);
 isp1760_writel(0, hcd->regs + HC_INT_IRQ_MASK_AND_REG);
 isp1760_writel(0, hcd->regs + HC_INT_IRQ_MASK_OR_REG);
 isp1760_writel(0, hcd->regs + HC_ISO_IRQ_MASK_AND_REG);
 isp1760_writel(0xffffffff, hcd->regs + HC_ISO_IRQ_MASK_OR_REG);

}
