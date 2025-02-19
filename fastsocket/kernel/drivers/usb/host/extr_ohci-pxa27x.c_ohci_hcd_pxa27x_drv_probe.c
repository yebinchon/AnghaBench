
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;


 int ENODEV ;
 int ohci_pxa27x_hc_driver ;
 int pr_debug (char*) ;
 scalar_t__ usb_disabled () ;
 int usb_hcd_pxa27x_probe (int *,struct platform_device*) ;

__attribute__((used)) static int ohci_hcd_pxa27x_drv_probe(struct platform_device *pdev)
{
 pr_debug ("In ohci_hcd_pxa27x_drv_probe");

 if (usb_disabled())
  return -ENODEV;

 return usb_hcd_pxa27x_probe(&ohci_pxa27x_hc_driver, pdev);
}
