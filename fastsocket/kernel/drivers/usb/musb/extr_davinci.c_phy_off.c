
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int USBPHY_OSCPDWN ;
 int USBPHY_OTGPDWN ;
 int USBPHY_PHYPDWN ;
 int USBPHY_PHYPLLON ;
 int USBPHY_SESNDEN ;
 int USBPHY_VBDTCTEN ;
 int USB_PHY_CTRL ;
 int __raw_readl (int ) ;
 int __raw_writel (int,int ) ;

__attribute__((used)) static inline void phy_off(void)
{
 u32 phy_ctrl = __raw_readl(USB_PHY_CTRL);


 phy_ctrl &= ~(USBPHY_SESNDEN | USBPHY_VBDTCTEN | USBPHY_PHYPLLON);
 phy_ctrl |= USBPHY_OSCPDWN | USBPHY_OTGPDWN | USBPHY_PHYPDWN;
 __raw_writel(phy_ctrl, USB_PHY_CTRL);
}
