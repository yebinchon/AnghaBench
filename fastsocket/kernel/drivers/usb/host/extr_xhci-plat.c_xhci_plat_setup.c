
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_hcd {int dummy; } ;


 int xhci_gen_setup (struct usb_hcd*,int ) ;
 int xhci_plat_quirks ;

__attribute__((used)) static int xhci_plat_setup(struct usb_hcd *hcd)
{
 return xhci_gen_setup(hcd, xhci_plat_quirks);
}
