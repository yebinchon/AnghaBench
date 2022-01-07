
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;


 int ENODEV ;
 int ohci_ep93xx_hc_driver ;
 int usb_disabled () ;
 int usb_hcd_ep93xx_probe (int *,struct platform_device*) ;

__attribute__((used)) static int ohci_hcd_ep93xx_drv_probe(struct platform_device *pdev)
{
 int ret;

 ret = -ENODEV;
 if (!usb_disabled())
  ret = usb_hcd_ep93xx_probe(&ohci_ep93xx_hc_driver, pdev);

 return ret;
}
