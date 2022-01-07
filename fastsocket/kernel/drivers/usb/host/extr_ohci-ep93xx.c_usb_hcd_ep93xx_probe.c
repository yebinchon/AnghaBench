
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_hcd {scalar_t__ rsrc_len; scalar_t__ rsrc_start; int * regs; } ;
struct platform_device {int dev; TYPE_1__* resource; } ;
struct hc_driver {int dummy; } ;
struct TYPE_2__ {scalar_t__ flags; scalar_t__ start; scalar_t__ end; } ;


 int EBUSY ;
 int ENOMEM ;
 scalar_t__ IORESOURCE_IRQ ;
 int IRQF_DISABLED ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int clk_get (int *,int *) ;
 int dbg (char*) ;
 int ep93xx_start_hc (int *) ;
 int ep93xx_stop_hc (int *) ;
 int hcd_name ;
 int hcd_to_ohci (struct usb_hcd*) ;
 int * ioremap (scalar_t__,scalar_t__) ;
 int iounmap (int *) ;
 int ohci_hcd_init (int ) ;
 int release_mem_region (scalar_t__,scalar_t__) ;
 int request_mem_region (scalar_t__,scalar_t__,int ) ;
 int usb_add_hcd (struct usb_hcd*,scalar_t__,int ) ;
 struct usb_hcd* usb_create_hcd (struct hc_driver const*,int *,char*) ;
 int usb_host_clock ;
 int usb_put_hcd (struct usb_hcd*) ;

__attribute__((used)) static int usb_hcd_ep93xx_probe(const struct hc_driver *driver,
    struct platform_device *pdev)
{
 int retval;
 struct usb_hcd *hcd;

 if (pdev->resource[1].flags != IORESOURCE_IRQ) {
  dbg("resource[1] is not IORESOURCE_IRQ");
  return -ENOMEM;
 }

 hcd = usb_create_hcd(driver, &pdev->dev, "ep93xx");
 if (hcd == ((void*)0))
  return -ENOMEM;

 hcd->rsrc_start = pdev->resource[0].start;
 hcd->rsrc_len = pdev->resource[0].end - pdev->resource[0].start + 1;
 if (!request_mem_region(hcd->rsrc_start, hcd->rsrc_len, hcd_name)) {
  usb_put_hcd(hcd);
  retval = -EBUSY;
  goto err1;
 }

 hcd->regs = ioremap(hcd->rsrc_start, hcd->rsrc_len);
 if (hcd->regs == ((void*)0)) {
  dbg("ioremap failed");
  retval = -ENOMEM;
  goto err2;
 }

 usb_host_clock = clk_get(&pdev->dev, ((void*)0));
 if (IS_ERR(usb_host_clock)) {
  dbg("clk_get failed");
  retval = PTR_ERR(usb_host_clock);
  goto err3;
 }

 ep93xx_start_hc(&pdev->dev);

 ohci_hcd_init(hcd_to_ohci(hcd));

 retval = usb_add_hcd(hcd, pdev->resource[1].start, IRQF_DISABLED);
 if (retval == 0)
  return retval;

 ep93xx_stop_hc(&pdev->dev);
err3:
 iounmap(hcd->regs);
err2:
 release_mem_region(hcd->rsrc_start, hcd->rsrc_len);
err1:
 usb_put_hcd(hcd);

 return retval;
}
