
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_hcd {int rsrc_len; int rsrc_start; int regs; } ;
struct platform_device {int dummy; } ;
struct ohci_hcd {TYPE_1__* transceiver; } ;
struct TYPE_2__ {int dev; } ;


 int clk_put (int ) ;
 int gpio_free (int) ;
 struct ohci_hcd* hcd_to_ohci (struct usb_hcd*) ;
 int iounmap (int ) ;
 scalar_t__ machine_is_omap_osk () ;
 int otg_set_host (TYPE_1__*,int ) ;
 int put_device (int ) ;
 int release_mem_region (int ,int ) ;
 int usb_dc_ck ;
 int usb_host_ck ;
 int usb_put_hcd (struct usb_hcd*) ;
 int usb_remove_hcd (struct usb_hcd*) ;

__attribute__((used)) static inline void
usb_hcd_omap_remove (struct usb_hcd *hcd, struct platform_device *pdev)
{
 struct ohci_hcd *ohci = hcd_to_ohci (hcd);

 usb_remove_hcd(hcd);
 if (ohci->transceiver) {
  (void) otg_set_host(ohci->transceiver, 0);
  put_device(ohci->transceiver->dev);
 }
 if (machine_is_omap_osk())
  gpio_free(9);
 iounmap(hcd->regs);
 release_mem_region(hcd->rsrc_start, hcd->rsrc_len);
 usb_put_hcd(hcd);
 clk_put(usb_dc_ck);
 clk_put(usb_host_ck);
}
