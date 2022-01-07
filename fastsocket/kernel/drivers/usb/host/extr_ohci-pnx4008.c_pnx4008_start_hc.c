
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long HOST_EN ;
 int USB_OTG_STAT_CONTROL ;
 unsigned long __raw_readl (int ) ;
 int __raw_writel (unsigned long,int ) ;
 int isp1301_vbus_on () ;

__attribute__((used)) static void pnx4008_start_hc(void)
{
 unsigned long tmp = __raw_readl(USB_OTG_STAT_CONTROL) | HOST_EN;
 __raw_writel(tmp, USB_OTG_STAT_CONTROL);
 isp1301_vbus_on();
}
