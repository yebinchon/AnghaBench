
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int platform_driver_register (int *) ;
 int usb_xhci_driver ;

int xhci_register_plat(void)
{
 return platform_driver_register(&usb_xhci_driver);
}
