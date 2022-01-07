
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_hcd {int dummy; } ;
struct resource {int start; } ;
struct platform_device {int dummy; } ;
struct isp116x {int addr_reg; int data_reg; } ;


 int IORESOURCE_MEM ;
 struct isp116x* hcd_to_isp116x (struct usb_hcd*) ;
 int iounmap (int ) ;
 struct usb_hcd* platform_get_drvdata (struct platform_device*) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int) ;
 int release_mem_region (int ,int) ;
 int remove_debug_file (struct isp116x*) ;
 int usb_put_hcd (struct usb_hcd*) ;
 int usb_remove_hcd (struct usb_hcd*) ;

__attribute__((used)) static int isp116x_remove(struct platform_device *pdev)
{
 struct usb_hcd *hcd = platform_get_drvdata(pdev);
 struct isp116x *isp116x;
 struct resource *res;

 if (!hcd)
  return 0;
 isp116x = hcd_to_isp116x(hcd);
 remove_debug_file(isp116x);
 usb_remove_hcd(hcd);

 iounmap(isp116x->data_reg);
 res = platform_get_resource(pdev, IORESOURCE_MEM, 1);
 release_mem_region(res->start, 2);
 iounmap(isp116x->addr_reg);
 res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 release_mem_region(res->start, 2);

 usb_put_hcd(hcd);
 return 0;
}
