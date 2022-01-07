
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xhci_hcd {struct usb_hcd* shared_hcd; } ;
struct usb_hcd {int rsrc_len; int rsrc_start; int regs; scalar_t__ hcd_priv; } ;
struct resource {int start; } ;
struct platform_device {int dev; } ;
struct hc_driver {int description; } ;


 int EBUSY ;
 int EFAULT ;
 int ENODEV ;
 int ENOMEM ;
 int IORESOURCE_MEM ;
 int IRQF_SHARED ;
 int dev_dbg (int *,char*) ;
 struct usb_hcd* dev_get_drvdata (int *) ;
 int dev_name (int *) ;
 struct xhci_hcd* hcd_to_xhci (struct usb_hcd*) ;
 int ioremap_nocache (int ,int ) ;
 int iounmap (int ) ;
 int platform_get_irq (struct platform_device*,int ) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int release_mem_region (int ,int ) ;
 int request_mem_region (int ,int ,int ) ;
 int resource_size (struct resource*) ;
 int usb_add_hcd (struct usb_hcd*,int,int ) ;
 struct usb_hcd* usb_create_hcd (struct hc_driver const*,int *,int ) ;
 struct usb_hcd* usb_create_shared_hcd (struct hc_driver const*,int *,int ,struct usb_hcd*) ;
 scalar_t__ usb_disabled () ;
 int usb_put_hcd (struct usb_hcd*) ;
 int usb_remove_hcd (struct usb_hcd*) ;
 struct hc_driver xhci_plat_xhci_driver ;

__attribute__((used)) static int xhci_plat_probe(struct platform_device *pdev)
{
 const struct hc_driver *driver;
 struct xhci_hcd *xhci;
 struct resource *res;
 struct usb_hcd *hcd;
 int ret;
 int irq;

 if (usb_disabled())
  return -ENODEV;

 driver = &xhci_plat_xhci_driver;

 irq = platform_get_irq(pdev, 0);
 if (irq < 0)
  return -ENODEV;

 res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 if (!res)
  return -ENODEV;

 hcd = usb_create_hcd(driver, &pdev->dev, dev_name(&pdev->dev));
 if (!hcd)
  return -ENOMEM;

 hcd->rsrc_start = res->start;
 hcd->rsrc_len = resource_size(res);

 if (!request_mem_region(hcd->rsrc_start, hcd->rsrc_len,
    driver->description)) {
  dev_dbg(&pdev->dev, "controller already in use\n");
  ret = -EBUSY;
  goto put_hcd;
 }

 hcd->regs = ioremap_nocache(hcd->rsrc_start, hcd->rsrc_len);
 if (!hcd->regs) {
  dev_dbg(&pdev->dev, "error mapping memory\n");
  ret = -EFAULT;
  goto release_mem_region;
 }

 ret = usb_add_hcd(hcd, irq, IRQF_SHARED);
 if (ret)
  goto unmap_registers;


 hcd = dev_get_drvdata(&pdev->dev);
 xhci = hcd_to_xhci(hcd);
 xhci->shared_hcd = usb_create_shared_hcd(driver, &pdev->dev,
   dev_name(&pdev->dev), hcd);
 if (!xhci->shared_hcd) {
  ret = -ENOMEM;
  goto dealloc_usb2_hcd;
 }





 *((struct xhci_hcd **) xhci->shared_hcd->hcd_priv) = xhci;

 ret = usb_add_hcd(xhci->shared_hcd, irq, IRQF_SHARED);
 if (ret)
  goto put_usb3_hcd;

 return 0;

put_usb3_hcd:
 usb_put_hcd(xhci->shared_hcd);

dealloc_usb2_hcd:
 usb_remove_hcd(hcd);

unmap_registers:
 iounmap(hcd->regs);

release_mem_region:
 release_mem_region(hcd->rsrc_start, hcd->rsrc_len);

put_hcd:
 usb_put_hcd(hcd);

 return ret;
}
