
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_hcd {int dummy; } ;
struct platform_device {int dev; } ;
struct oxu_info {struct usb_hcd** hcd; } ;


 int ENODEV ;
 scalar_t__ IS_ERR (struct usb_hcd*) ;
 int OXU_CHIPIRQEN_SET ;
 int PTR_ERR (struct usb_hcd*) ;
 int dev_err (int *,char*) ;
 int oxu_configuration (struct platform_device*,void*) ;
 struct usb_hcd* oxu_create (struct platform_device*,unsigned long,unsigned long,void*,int,int) ;
 int oxu_readl (void*,int ) ;
 int oxu_verify_id (struct platform_device*,void*) ;
 int oxu_writel (void*,int ,int) ;
 struct oxu_info* platform_get_drvdata (struct platform_device*) ;
 int usb_put_hcd (struct usb_hcd*) ;
 int usb_remove_hcd (struct usb_hcd*) ;

__attribute__((used)) static int oxu_init(struct platform_device *pdev,
    unsigned long memstart, unsigned long memlen,
    void *base, int irq)
{
 struct oxu_info *info = platform_get_drvdata(pdev);
 struct usb_hcd *hcd;
 int ret;


 oxu_configuration(pdev, base);

 ret = oxu_verify_id(pdev, base);
 if (ret) {
  dev_err(&pdev->dev, "no devices found!\n");
  return -ENODEV;
 }


 hcd = oxu_create(pdev, memstart, memlen, base, irq, 1);
 if (IS_ERR(hcd)) {
  dev_err(&pdev->dev, "cannot create OTG controller!\n");
  ret = PTR_ERR(hcd);
  goto error_create_otg;
 }
 info->hcd[0] = hcd;


 hcd = oxu_create(pdev, memstart, memlen, base, irq, 0);
 if (IS_ERR(hcd)) {
  dev_err(&pdev->dev, "cannot create SPH controller!\n");
  ret = PTR_ERR(hcd);
  goto error_create_sph;
 }
 info->hcd[1] = hcd;

 oxu_writel(base, OXU_CHIPIRQEN_SET,
  oxu_readl(base, OXU_CHIPIRQEN_SET) | 3);

 return 0;

error_create_sph:
 usb_remove_hcd(info->hcd[0]);
 usb_put_hcd(info->hcd[0]);

error_create_otg:
 return ret;
}
