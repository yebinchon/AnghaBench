
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_hcd {scalar_t__ regs; } ;


 scalar_t__ HC_ATL_PTD_DONEMAP_REG ;
 scalar_t__ HC_ATL_PTD_SKIPMAP_REG ;
 scalar_t__ HC_BUFFER_STATUS_REG ;
 scalar_t__ HC_INT_PTD_DONEMAP_REG ;
 scalar_t__ HC_INT_PTD_SKIPMAP_REG ;
 scalar_t__ HC_ISO_PTD_DONEMAP_REG ;
 scalar_t__ HC_ISO_PTD_SKIPMAP_REG ;
 int NO_TRANSFER_ACTIVE ;
 int isp1760_writel (int ,scalar_t__) ;

__attribute__((used)) static void isp1760_init_regs(struct usb_hcd *hcd)
{
 isp1760_writel(0, hcd->regs + HC_BUFFER_STATUS_REG);
 isp1760_writel(NO_TRANSFER_ACTIVE, hcd->regs +
   HC_ATL_PTD_SKIPMAP_REG);
 isp1760_writel(NO_TRANSFER_ACTIVE, hcd->regs +
   HC_INT_PTD_SKIPMAP_REG);
 isp1760_writel(NO_TRANSFER_ACTIVE, hcd->regs +
   HC_ISO_PTD_SKIPMAP_REG);

 isp1760_writel(~NO_TRANSFER_ACTIVE, hcd->regs +
   HC_ATL_PTD_DONEMAP_REG);
 isp1760_writel(~NO_TRANSFER_ACTIVE, hcd->regs +
   HC_INT_PTD_DONEMAP_REG);
 isp1760_writel(~NO_TRANSFER_ACTIVE, hcd->regs +
   HC_ISO_PTD_DONEMAP_REG);
}
