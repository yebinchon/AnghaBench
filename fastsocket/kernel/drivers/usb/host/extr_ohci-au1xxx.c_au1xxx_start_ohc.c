
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int USBH_ENABLE_CE ;
 int USBH_ENABLE_INIT ;
 int USBH_ENABLE_RD ;
 int USB_HOST_CONFIG ;
 int au_readl (int ) ;
 int au_sync () ;
 int au_writel (int,int ) ;
 int udelay (int) ;

__attribute__((used)) static void au1xxx_start_ohc(void)
{


 au_writel(USBH_ENABLE_CE, USB_HOST_CONFIG);
 au_sync();
 udelay(1000);

 au_writel(au_readl(USB_HOST_CONFIG) | USBH_ENABLE_INIT, USB_HOST_CONFIG);
 au_sync();
 udelay(1000);


 while (au_readl(USB_HOST_CONFIG),
  !(au_readl(USB_HOST_CONFIG) & USBH_ENABLE_RD))
  udelay(1000);
}
