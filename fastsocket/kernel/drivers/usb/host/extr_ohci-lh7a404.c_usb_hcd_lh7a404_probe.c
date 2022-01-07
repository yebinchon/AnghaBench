
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_hcd {scalar_t__ rsrc_len; scalar_t__ rsrc_start; int regs; } ;
struct platform_device {TYPE_1__* resource; int dev; } ;
struct hc_driver {int dummy; } ;
struct TYPE_2__ {scalar_t__ flags; scalar_t__ start; scalar_t__ end; } ;


 int EBUSY ;
 int ENOMEM ;
 scalar_t__ IORESOURCE_IRQ ;
 int IRQF_DISABLED ;
 int hcd_name ;
 int hcd_to_ohci (struct usb_hcd*) ;
 int ioremap (scalar_t__,scalar_t__) ;
 int iounmap (int ) ;
 int lh7a404_start_hc (struct platform_device*) ;
 int lh7a404_stop_hc (struct platform_device*) ;
 int ohci_hcd_init (int ) ;
 int pr_debug (char*) ;
 int release_mem_region (scalar_t__,scalar_t__) ;
 int request_mem_region (scalar_t__,scalar_t__,int ) ;
 int usb_add_hcd (struct usb_hcd*,scalar_t__,int ) ;
 struct usb_hcd* usb_create_hcd (struct hc_driver const*,int *,char*) ;
 int usb_put_hcd (struct usb_hcd*) ;

int usb_hcd_lh7a404_probe (const struct hc_driver *driver,
     struct platform_device *dev)
{
 int retval;
 struct usb_hcd *hcd;

 if (dev->resource[1].flags != IORESOURCE_IRQ) {
  pr_debug("resource[1] is not IORESOURCE_IRQ");
  return -ENOMEM;
 }

 hcd = usb_create_hcd(driver, &dev->dev, "lh7a404");
 if (!hcd)
  return -ENOMEM;
 hcd->rsrc_start = dev->resource[0].start;
 hcd->rsrc_len = dev->resource[0].end - dev->resource[0].start + 1;

 if (!request_mem_region(hcd->rsrc_start, hcd->rsrc_len, hcd_name)) {
  pr_debug("request_mem_region failed");
  retval = -EBUSY;
  goto err1;
 }

 hcd->regs = ioremap(hcd->rsrc_start, hcd->rsrc_len);
 if (!hcd->regs) {
  pr_debug("ioremap failed");
  retval = -ENOMEM;
  goto err2;
 }

 lh7a404_start_hc(dev);
 ohci_hcd_init(hcd_to_ohci(hcd));

 retval = usb_add_hcd(hcd, dev->resource[1].start, IRQF_DISABLED);
 if (retval == 0)
  return retval;

 lh7a404_stop_hc(dev);
 iounmap(hcd->regs);
 err2:
 release_mem_region(hcd->rsrc_start, hcd->rsrc_len);
 err1:
 usb_put_hcd(hcd);
 return retval;
}
