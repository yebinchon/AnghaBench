
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct usb_hcd {scalar_t__ rsrc_len; scalar_t__ rsrc_start; int regs; } ;
struct TYPE_6__ {int platform_data; } ;
struct platform_device {TYPE_1__* resource; TYPE_2__ dev; } ;
struct hc_driver {int dummy; } ;
struct TYPE_5__ {scalar_t__ start; scalar_t__ end; } ;


 int EBUSY ;
 int ENOENT ;
 int ENOMEM ;
 int IRQF_DISABLED ;
 scalar_t__ IS_ERR (int ) ;
 int clk ;
 int clk_get (TYPE_2__*,char*) ;
 int clk_put (int ) ;
 int dev_err (TYPE_2__*,char*) ;
 int hcd_name ;
 int hcd_to_ohci (struct usb_hcd*) ;
 int ioremap (scalar_t__,scalar_t__) ;
 int iounmap (int ) ;
 int ohci_hcd_init (int ) ;
 int release_mem_region (scalar_t__,scalar_t__) ;
 int request_mem_region (scalar_t__,scalar_t__,int ) ;
 int s3c2410_start_hc (struct platform_device*,struct usb_hcd*) ;
 int s3c2410_stop_hc (struct platform_device*) ;
 int s3c2410_usb_set_power (int ,int,int) ;
 int usb_add_hcd (struct usb_hcd*,scalar_t__,int ) ;
 int usb_clk ;
 struct usb_hcd* usb_create_hcd (struct hc_driver const*,TYPE_2__*,char*) ;
 int usb_put_hcd (struct usb_hcd*) ;

__attribute__((used)) static int usb_hcd_s3c2410_probe (const struct hc_driver *driver,
      struct platform_device *dev)
{
 struct usb_hcd *hcd = ((void*)0);
 int retval;

 s3c2410_usb_set_power(dev->dev.platform_data, 1, 1);
 s3c2410_usb_set_power(dev->dev.platform_data, 2, 1);

 hcd = usb_create_hcd(driver, &dev->dev, "s3c24xx");
 if (hcd == ((void*)0))
  return -ENOMEM;

 hcd->rsrc_start = dev->resource[0].start;
 hcd->rsrc_len = dev->resource[0].end - dev->resource[0].start + 1;

 if (!request_mem_region(hcd->rsrc_start, hcd->rsrc_len, hcd_name)) {
  dev_err(&dev->dev, "request_mem_region failed\n");
  retval = -EBUSY;
  goto err_put;
 }

 clk = clk_get(&dev->dev, "usb-host");
 if (IS_ERR(clk)) {
  dev_err(&dev->dev, "cannot get usb-host clock\n");
  retval = -ENOENT;
  goto err_mem;
 }

 usb_clk = clk_get(&dev->dev, "usb-bus-host");
 if (IS_ERR(usb_clk)) {
  dev_err(&dev->dev, "cannot get usb-bus-host clock\n");
  retval = -ENOENT;
  goto err_clk;
 }

 s3c2410_start_hc(dev, hcd);

 hcd->regs = ioremap(hcd->rsrc_start, hcd->rsrc_len);
 if (!hcd->regs) {
  dev_err(&dev->dev, "ioremap failed\n");
  retval = -ENOMEM;
  goto err_ioremap;
 }

 ohci_hcd_init(hcd_to_ohci(hcd));

 retval = usb_add_hcd(hcd, dev->resource[1].start, IRQF_DISABLED);
 if (retval != 0)
  goto err_ioremap;

 return 0;

 err_ioremap:
 s3c2410_stop_hc(dev);
 iounmap(hcd->regs);
 clk_put(usb_clk);

 err_clk:
 clk_put(clk);

 err_mem:
 release_mem_region(hcd->rsrc_start, hcd->rsrc_len);

 err_put:
 usb_put_hcd(hcd);
 return retval;
}
