
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct xhci_hcd {int quirks; TYPE_2__* shared_hcd; } ;
struct usb_hcd {int dummy; } ;
struct pci_device_id {scalar_t__ driver_data; } ;
struct pci_dev {int irq; int dev; } ;
struct hc_driver {int dummy; } ;
struct TYPE_9__ {TYPE_1__* root_hub; } ;
struct TYPE_8__ {scalar_t__ hcd_priv; } ;
struct TYPE_7__ {int lpm_capable; } ;


 int ENOMEM ;
 int IRQF_DISABLED ;
 int IRQF_SHARED ;
 int XHCI_LPM_SUPPORT ;
 struct usb_hcd* dev_get_drvdata (int *) ;
 TYPE_5__* hcd_to_bus (TYPE_2__*) ;
 struct xhci_hcd* hcd_to_xhci (struct usb_hcd*) ;
 int pci_name (struct pci_dev*) ;
 int usb_add_hcd (TYPE_2__*,int ,int) ;
 TYPE_2__* usb_create_shared_hcd (struct hc_driver*,int *,int ,struct usb_hcd*) ;
 int usb_hcd_pci_probe (struct pci_dev*,struct pci_device_id const*) ;
 int usb_hcd_pci_remove (struct pci_dev*) ;
 int usb_put_hcd (TYPE_2__*) ;

__attribute__((used)) static int xhci_pci_probe(struct pci_dev *dev, const struct pci_device_id *id)
{
 int retval;
 struct xhci_hcd *xhci;
 struct hc_driver *driver;
 struct usb_hcd *hcd;

 driver = (struct hc_driver *)id->driver_data;






 retval = usb_hcd_pci_probe(dev, id);

 if (retval)
  return retval;


 hcd = dev_get_drvdata(&dev->dev);
 xhci = hcd_to_xhci(hcd);
 xhci->shared_hcd = usb_create_shared_hcd(driver, &dev->dev,
    pci_name(dev), hcd);
 if (!xhci->shared_hcd) {
  retval = -ENOMEM;
  goto dealloc_usb2_hcd;
 }




 *((struct xhci_hcd **) xhci->shared_hcd->hcd_priv) = xhci;

 retval = usb_add_hcd(xhci->shared_hcd, dev->irq,
   IRQF_DISABLED | IRQF_SHARED);
 if (retval)
  goto put_usb3_hcd;





 if (xhci->quirks & XHCI_LPM_SUPPORT)
  hcd_to_bus(xhci->shared_hcd)->root_hub->lpm_capable = 1;

 return 0;

put_usb3_hcd:
 usb_put_hcd(xhci->shared_hcd);
dealloc_usb2_hcd:
 usb_hcd_pci_remove(dev);
 return retval;
}
