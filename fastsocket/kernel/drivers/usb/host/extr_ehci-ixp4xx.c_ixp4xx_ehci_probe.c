
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_hcd {int rsrc_start; int rsrc_len; int * regs; } ;
struct resource {int start; int end; } ;
struct platform_device {int dev; } ;
struct hc_driver {int description; } ;


 int EBUSY ;
 int EFAULT ;
 int ENODEV ;
 int ENOMEM ;
 int IORESOURCE_IRQ ;
 int IORESOURCE_MEM ;
 int IRQF_SHARED ;
 int dev_dbg (int *,char*) ;
 int dev_err (int *,char*,int ,...) ;
 int dev_name (int *) ;
 int * ioremap_nocache (int,int) ;
 int iounmap (int *) ;
 struct hc_driver ixp4xx_ehci_hc_driver ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int release_mem_region (int,int) ;
 int request_mem_region (int,int,int ) ;
 int usb_add_hcd (struct usb_hcd*,int,int ) ;
 struct usb_hcd* usb_create_hcd (struct hc_driver const*,int *,int ) ;
 scalar_t__ usb_disabled () ;
 int usb_put_hcd (struct usb_hcd*) ;

__attribute__((used)) static int ixp4xx_ehci_probe(struct platform_device *pdev)
{
 struct usb_hcd *hcd;
 const struct hc_driver *driver = &ixp4xx_ehci_hc_driver;
 struct resource *res;
 int irq;
 int retval;

 if (usb_disabled())
  return -ENODEV;

 res = platform_get_resource(pdev, IORESOURCE_IRQ, 0);
 if (!res) {
  dev_err(&pdev->dev,
   "Found HC with no IRQ. Check %s setup!\n",
   dev_name(&pdev->dev));
  return -ENODEV;
 }
 irq = res->start;

 hcd = usb_create_hcd(driver, &pdev->dev, dev_name(&pdev->dev));
 if (!hcd) {
  retval = -ENOMEM;
  goto fail_create_hcd;
 }

 res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 if (!res) {
  dev_err(&pdev->dev,
   "Found HC with no register addr. Check %s setup!\n",
   dev_name(&pdev->dev));
  retval = -ENODEV;
  goto fail_request_resource;
 }
 hcd->rsrc_start = res->start;
 hcd->rsrc_len = res->end - res->start + 1;

 if (!request_mem_region(hcd->rsrc_start, hcd->rsrc_len,
    driver->description)) {
  dev_dbg(&pdev->dev, "controller already in use\n");
  retval = -EBUSY;
  goto fail_request_resource;
 }

 hcd->regs = ioremap_nocache(hcd->rsrc_start, hcd->rsrc_len);
 if (hcd->regs == ((void*)0)) {
  dev_dbg(&pdev->dev, "error mapping memory\n");
  retval = -EFAULT;
  goto fail_ioremap;
 }

 retval = usb_add_hcd(hcd, irq, IRQF_SHARED);
 if (retval)
  goto fail_add_hcd;

 return retval;

fail_add_hcd:
 iounmap(hcd->regs);
fail_ioremap:
 release_mem_region(hcd->rsrc_start, hcd->rsrc_len);
fail_request_resource:
 usb_put_hcd(hcd);
fail_create_hcd:
 dev_err(&pdev->dev, "init %s fail, %d\n", dev_name(&pdev->dev), retval);
 return retval;
}
