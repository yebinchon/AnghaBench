
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_hcd {scalar_t__ rsrc_len; scalar_t__ rsrc_start; int regs; } ;
struct TYPE_2__ {scalar_t__ start; scalar_t__ end; } ;
struct sa1111_dev {int * irq; int mapbase; TYPE_1__ res; int dev; } ;
struct hc_driver {int dummy; } ;


 int EBUSY ;
 int ENOMEM ;
 int IRQF_DISABLED ;
 int dbg (char*) ;
 int hcd_name ;
 int hcd_to_ohci (struct usb_hcd*) ;
 int ohci_hcd_init (int ) ;
 int release_mem_region (scalar_t__,scalar_t__) ;
 int request_mem_region (scalar_t__,scalar_t__,int ) ;
 int sa1111_start_hc (struct sa1111_dev*) ;
 int sa1111_stop_hc (struct sa1111_dev*) ;
 int usb_add_hcd (struct usb_hcd*,int ,int ) ;
 struct usb_hcd* usb_create_hcd (struct hc_driver const*,int *,char*) ;
 int usb_put_hcd (struct usb_hcd*) ;

int usb_hcd_sa1111_probe (const struct hc_driver *driver,
     struct sa1111_dev *dev)
{
 struct usb_hcd *hcd;
 int retval;

 hcd = usb_create_hcd (driver, &dev->dev, "sa1111");
 if (!hcd)
  return -ENOMEM;
 hcd->rsrc_start = dev->res.start;
 hcd->rsrc_len = dev->res.end - dev->res.start + 1;

 if (!request_mem_region(hcd->rsrc_start, hcd->rsrc_len, hcd_name)) {
  dbg("request_mem_region failed");
  retval = -EBUSY;
  goto err1;
 }
 hcd->regs = dev->mapbase;

 sa1111_start_hc(dev);
 ohci_hcd_init(hcd_to_ohci(hcd));

 retval = usb_add_hcd(hcd, dev->irq[1], IRQF_DISABLED);
 if (retval == 0)
  return retval;

 sa1111_stop_hc(dev);
 release_mem_region(hcd->rsrc_start, hcd->rsrc_len);
 err1:
 usb_put_hcd(hcd);
 return retval;
}
