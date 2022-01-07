
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_hcd {int rsrc_len; int rsrc_start; int regs; TYPE_1__* driver; } ;
struct pci_dev {int dummy; } ;
struct TYPE_2__ {int flags; } ;


 int HCD_MEMORY ;
 int iounmap (int ) ;
 int local_irq_disable () ;
 int local_irq_enable () ;
 int pci_disable_device (struct pci_dev*) ;
 struct usb_hcd* pci_get_drvdata (struct pci_dev*) ;
 int release_mem_region (int ,int ) ;
 int release_region (int ,int ) ;
 int usb_hcd_irq (int ,struct usb_hcd*) ;
 int usb_put_hcd (struct usb_hcd*) ;
 int usb_remove_hcd (struct usb_hcd*) ;

void usb_hcd_pci_remove(struct pci_dev *dev)
{
 struct usb_hcd *hcd;

 hcd = pci_get_drvdata(dev);
 if (!hcd)
  return;





 local_irq_disable();
 usb_hcd_irq(0, hcd);
 local_irq_enable();

 usb_remove_hcd(hcd);
 if (hcd->driver->flags & HCD_MEMORY) {
  iounmap(hcd->regs);
  release_mem_region(hcd->rsrc_start, hcd->rsrc_len);
 } else {
  release_region(hcd->rsrc_start, hcd->rsrc_len);
 }
 usb_put_hcd(hcd);
 pci_disable_device(dev);
}
