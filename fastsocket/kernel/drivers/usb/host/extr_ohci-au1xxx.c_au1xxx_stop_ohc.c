
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int USBH_DISABLE ;
 int USBH_ENABLE_CE ;
 int USB_HOST_CONFIG ;
 int au_readl (int ) ;
 int au_sync () ;
 int au_writel (int,int ) ;
 int udelay (int) ;

__attribute__((used)) static void au1xxx_stop_ohc(void)
{







 au_writel(au_readl(USB_HOST_CONFIG) & ~USBH_ENABLE_CE, USB_HOST_CONFIG);
 au_sync();
}
