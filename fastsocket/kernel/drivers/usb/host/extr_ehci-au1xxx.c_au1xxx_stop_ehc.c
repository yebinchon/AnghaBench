
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long USBH_DISABLE ;
 int USB_HOST_CONFIG ;
 unsigned long USB_MCFG_EHCCLKEN ;
 unsigned long USB_MCFG_PHYPLLEN ;
 unsigned long USB_MCFG_UCECLKEN ;
 unsigned long au_readl (int ) ;
 int au_sync () ;
 int au_writel (unsigned long,int ) ;
 int udelay (int) ;

__attribute__((used)) static void au1xxx_stop_ehc(void)
{
 unsigned long c;


 au_writel(au_readl(USB_HOST_CONFIG) & ~USBH_DISABLE, USB_HOST_CONFIG);
 au_sync();
 udelay(1000);


 c = au_readl(USB_HOST_CONFIG) & ~USB_MCFG_EHCCLKEN;
 if (!(c & USB_MCFG_UCECLKEN))
  c &= ~USB_MCFG_PHYPLLEN;
 au_writel(c, USB_HOST_CONFIG);
 au_sync();
}
