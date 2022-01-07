
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_hcd {scalar_t__ regs; } ;


 scalar_t__ HC_ATL_PTD_LASTPTD_REG ;
 scalar_t__ HC_INT_PTD_LASTPTD_REG ;
 scalar_t__ HC_ISO_PTD_LASTPTD_REG ;
 int isp1760_writel (int,scalar_t__) ;

__attribute__((used)) static void isp1760_init_maps(struct usb_hcd *hcd)
{

 isp1760_writel(0x80000000, hcd->regs + HC_ATL_PTD_LASTPTD_REG);
 isp1760_writel(0x80000000, hcd->regs + HC_INT_PTD_LASTPTD_REG);
 isp1760_writel(0x00000001, hcd->regs + HC_ISO_PTD_LASTPTD_REG);
}
