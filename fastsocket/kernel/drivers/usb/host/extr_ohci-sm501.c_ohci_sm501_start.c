
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int bus_name; struct device* controller; } ;
struct usb_hcd {TYPE_1__ self; } ;
struct device {int dummy; } ;


 int dev_err (struct device*,char*,int ) ;
 int hcd_to_ohci (struct usb_hcd*) ;
 int ohci_run (int ) ;
 int ohci_stop (struct usb_hcd*) ;

__attribute__((used)) static int ohci_sm501_start(struct usb_hcd *hcd)
{
 struct device *dev = hcd->self.controller;
 int ret;

 ret = ohci_run(hcd_to_ohci(hcd));
 if (ret < 0) {
  dev_err(dev, "can't start %s", hcd->self.bus_name);
  ohci_stop(hcd);
 }

 return ret;
}
