
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;


 int ohci_s3c2410_hc_driver ;
 int usb_hcd_s3c2410_probe (int *,struct platform_device*) ;

__attribute__((used)) static int ohci_hcd_s3c2410_drv_probe(struct platform_device *pdev)
{
 return usb_hcd_s3c2410_probe(&ohci_s3c2410_hc_driver, pdev);
}
