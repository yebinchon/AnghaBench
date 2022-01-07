
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;


 int ohci_omap_hc_driver ;
 int usb_hcd_omap_probe (int *,struct platform_device*) ;

__attribute__((used)) static int ohci_hcd_omap_drv_probe(struct platform_device *dev)
{
 return usb_hcd_omap_probe(&ohci_omap_hc_driver, dev);
}
