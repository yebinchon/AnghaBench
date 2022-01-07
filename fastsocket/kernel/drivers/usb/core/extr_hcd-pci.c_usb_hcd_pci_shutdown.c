
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_hcd {TYPE_1__* driver; } ;
struct pci_dev {int dummy; } ;
struct TYPE_2__ {int (* shutdown ) (struct usb_hcd*) ;} ;


 struct usb_hcd* pci_get_drvdata (struct pci_dev*) ;
 int stub1 (struct usb_hcd*) ;

void usb_hcd_pci_shutdown(struct pci_dev *dev)
{
 struct usb_hcd *hcd;

 hcd = pci_get_drvdata(dev);
 if (!hcd)
  return;

 if (hcd->driver->shutdown)
  hcd->driver->shutdown(hcd);
}
