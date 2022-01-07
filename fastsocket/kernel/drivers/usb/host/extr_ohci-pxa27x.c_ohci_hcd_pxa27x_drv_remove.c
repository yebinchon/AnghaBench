
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_hcd {int dummy; } ;
struct platform_device {int dummy; } ;


 struct usb_hcd* platform_get_drvdata (struct platform_device*) ;
 int platform_set_drvdata (struct platform_device*,int *) ;
 int usb_hcd_pxa27x_remove (struct usb_hcd*,struct platform_device*) ;

__attribute__((used)) static int ohci_hcd_pxa27x_drv_remove(struct platform_device *pdev)
{
 struct usb_hcd *hcd = platform_get_drvdata(pdev);

 usb_hcd_pxa27x_remove(hcd, pdev);
 platform_set_drvdata(pdev, ((void*)0));
 return 0;
}
