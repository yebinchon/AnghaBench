
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int controller; } ;
struct usb_hcd {TYPE_1__ self; } ;


 int dev_dbg (int ,char*) ;
 int ohci_stop (struct usb_hcd*) ;
 int omap_ohci_clock_power (int ) ;

__attribute__((used)) static void ohci_omap_stop(struct usb_hcd *hcd)
{
 dev_dbg(hcd->self.controller, "stopping USB Controller\n");
 ohci_stop(hcd);
 omap_ohci_clock_power(0);
}
