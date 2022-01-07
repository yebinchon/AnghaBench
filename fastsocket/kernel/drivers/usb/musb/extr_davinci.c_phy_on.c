
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int USBPHY_OSCPDWN ;
 int USBPHY_OTGPDWN ;
 int USBPHY_PHYCLKGD ;
 int USBPHY_PHYPDWN ;
 int USBPHY_PHYPLLON ;
 int USBPHY_SESNDEN ;
 int USBPHY_VBDTCTEN ;
 int USB_PHY_CTRL ;
 int __raw_readl (int ) ;
 int __raw_writel (int,int ) ;
 int cpu_relax () ;

__attribute__((used)) static inline void phy_on(void)
{
 u32 phy_ctrl = __raw_readl(USB_PHY_CTRL);


 phy_ctrl &= ~(USBPHY_OSCPDWN | USBPHY_OTGPDWN | USBPHY_PHYPDWN);
 phy_ctrl |= USBPHY_SESNDEN | USBPHY_VBDTCTEN | USBPHY_PHYPLLON;
 __raw_writel(phy_ctrl, USB_PHY_CTRL);


 while ((__raw_readl(USB_PHY_CTRL) & USBPHY_PHYCLKGD) == 0)
  cpu_relax();
}
