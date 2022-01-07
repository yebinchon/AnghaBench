
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;


 int ENODEV ;
 int ehci_fsl_hc_driver ;
 scalar_t__ usb_disabled () ;
 int usb_hcd_fsl_probe (int *,struct platform_device*) ;

__attribute__((used)) static int ehci_fsl_drv_probe(struct platform_device *pdev)
{
 if (usb_disabled())
  return -ENODEV;


 return usb_hcd_fsl_probe(&ehci_fsl_hc_driver, pdev);
}
