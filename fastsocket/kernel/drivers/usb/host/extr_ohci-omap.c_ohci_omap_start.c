
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_3__* controller; } ;
struct usb_hcd {TYPE_2__ self; } ;
struct omap_usb_config {scalar_t__ rwc; scalar_t__ otg; } ;
struct ohci_hcd {TYPE_1__* regs; int hc_control; } ;
struct TYPE_6__ {struct omap_usb_config* platform_data; } ;
struct TYPE_4__ {int control; } ;


 int OHCI_CTRL_RWC ;
 int dev_err (TYPE_3__*,char*) ;
 struct ohci_hcd* hcd_to_ohci (struct usb_hcd*) ;
 int host_enabled ;
 int ohci_run (struct ohci_hcd*) ;
 int ohci_stop (struct usb_hcd*) ;
 int writel (int ,int *) ;

__attribute__((used)) static int
ohci_omap_start (struct usb_hcd *hcd)
{
 struct omap_usb_config *config;
 struct ohci_hcd *ohci = hcd_to_ohci (hcd);
 int ret;

 if (!host_enabled)
  return 0;
 config = hcd->self.controller->platform_data;
 if (config->otg || config->rwc) {
  ohci->hc_control = OHCI_CTRL_RWC;
  writel(OHCI_CTRL_RWC, &ohci->regs->control);
 }

 if ((ret = ohci_run (ohci)) < 0) {
  dev_err(hcd->self.controller, "can't start\n");
  ohci_stop (hcd);
  return ret;
 }
 return 0;
}
