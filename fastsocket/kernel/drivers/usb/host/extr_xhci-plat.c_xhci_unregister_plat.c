
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int platform_driver_unregister (int *) ;
 int usb_xhci_driver ;

void xhci_unregister_plat(void)
{
 platform_driver_unregister(&usb_xhci_driver);
}
