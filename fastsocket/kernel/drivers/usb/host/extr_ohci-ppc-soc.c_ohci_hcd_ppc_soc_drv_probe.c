
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;


 int ENODEV ;
 int ohci_ppc_soc_hc_driver ;
 scalar_t__ usb_disabled () ;
 int usb_hcd_ppc_soc_probe (int *,struct platform_device*) ;

__attribute__((used)) static int ohci_hcd_ppc_soc_drv_probe(struct platform_device *pdev)
{
 int ret;

 if (usb_disabled())
  return -ENODEV;

 ret = usb_hcd_ppc_soc_probe(&ohci_ppc_soc_hc_driver, pdev);
 return ret;
}
