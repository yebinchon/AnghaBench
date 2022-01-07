
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct usb_hcd {int rsrc_start; int rsrc_len; int * regs; } ;
struct resource {int start; int end; } ;
struct TYPE_5__ {scalar_t__ platform_data; } ;
struct platform_device {TYPE_1__ dev; } ;
struct hc_driver {int description; } ;
struct fsl_usb2_platform_data {scalar_t__ operating_mode; } ;


 int EBUSY ;
 int EFAULT ;
 int ENODEV ;
 int ENOMEM ;
 scalar_t__ FSL_USB2_DR_HOST ;
 scalar_t__ FSL_USB2_DR_OTG ;
 scalar_t__ FSL_USB2_MPH_HOST ;
 int IORESOURCE_IRQ ;
 int IORESOURCE_MEM ;
 int IRQF_DISABLED ;
 int IRQF_SHARED ;
 int dev_dbg (TYPE_1__*,char*) ;
 int dev_err (TYPE_1__*,char*,int ,...) ;
 int dev_name (TYPE_1__*) ;
 unsigned int in_be32 (int *) ;
 unsigned int in_le32 (int *) ;
 int * ioremap (int,int) ;
 int iounmap (int *) ;
 int out_be32 (int *,unsigned int) ;
 int out_le32 (int *,unsigned int) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int pr_debug (char*) ;
 int release_mem_region (int,int) ;
 int request_mem_region (int,int,int ) ;
 int usb_add_hcd (struct usb_hcd*,int,int) ;
 struct usb_hcd* usb_create_hcd (struct hc_driver const*,TYPE_1__*,int ) ;
 int usb_put_hcd (struct usb_hcd*) ;

int usb_hcd_fsl_probe(const struct hc_driver *driver,
        struct platform_device *pdev)
{
 struct fsl_usb2_platform_data *pdata;
 struct usb_hcd *hcd;
 struct resource *res;
 int irq;
 int retval;
 unsigned int temp;

 pr_debug("initializing FSL-SOC USB Controller\n");


 pdata = (struct fsl_usb2_platform_data *)pdev->dev.platform_data;
 if (!pdata) {
  dev_err(&pdev->dev,
   "No platform data for %s.\n", dev_name(&pdev->dev));
  return -ENODEV;
 }





 if (!((pdata->operating_mode == FSL_USB2_DR_HOST) ||
       (pdata->operating_mode == FSL_USB2_MPH_HOST) ||
       (pdata->operating_mode == FSL_USB2_DR_OTG))) {
  dev_err(&pdev->dev,
   "Non Host Mode configured for %s. Wrong driver linked.\n",
   dev_name(&pdev->dev));
  return -ENODEV;
 }

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
  goto err1;
 }

 res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 if (!res) {
  dev_err(&pdev->dev,
   "Found HC with no register addr. Check %s setup!\n",
   dev_name(&pdev->dev));
  retval = -ENODEV;
  goto err2;
 }
 hcd->rsrc_start = res->start;
 hcd->rsrc_len = res->end - res->start + 1;
 if (!request_mem_region(hcd->rsrc_start, hcd->rsrc_len,
    driver->description)) {
  dev_dbg(&pdev->dev, "controller already in use\n");
  retval = -EBUSY;
  goto err2;
 }
 hcd->regs = ioremap(hcd->rsrc_start, hcd->rsrc_len);

 if (hcd->regs == ((void*)0)) {
  dev_dbg(&pdev->dev, "error mapping memory\n");
  retval = -EFAULT;
  goto err3;
 }


 temp = in_be32(hcd->regs + 0x500);
 out_be32(hcd->regs + 0x500, temp | 0x4);


 temp = in_le32(hcd->regs + 0x1a8);
 out_le32(hcd->regs + 0x1a8, temp | 0x3);

 retval = usb_add_hcd(hcd, irq, IRQF_DISABLED | IRQF_SHARED);
 if (retval != 0)
  goto err4;
 return retval;

      err4:
 iounmap(hcd->regs);
      err3:
 release_mem_region(hcd->rsrc_start, hcd->rsrc_len);
      err2:
 usb_put_hcd(hcd);
      err1:
 dev_err(&pdev->dev, "init %s fail, %d\n", dev_name(&pdev->dev), retval);
 return retval;
}
