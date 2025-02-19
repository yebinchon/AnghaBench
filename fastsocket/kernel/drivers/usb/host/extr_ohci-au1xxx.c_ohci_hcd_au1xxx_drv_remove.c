
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_hcd {int rsrc_len; int rsrc_start; int regs; } ;
struct platform_device {int dummy; } ;


 int au1xxx_stop_ohc () ;
 int iounmap (int ) ;
 struct usb_hcd* platform_get_drvdata (struct platform_device*) ;
 int platform_set_drvdata (struct platform_device*,int *) ;
 int release_mem_region (int ,int ) ;
 int usb_put_hcd (struct usb_hcd*) ;
 int usb_remove_hcd (struct usb_hcd*) ;

__attribute__((used)) static int ohci_hcd_au1xxx_drv_remove(struct platform_device *pdev)
{
 struct usb_hcd *hcd = platform_get_drvdata(pdev);

 usb_remove_hcd(hcd);
 au1xxx_stop_ohc();
 iounmap(hcd->regs);
 release_mem_region(hcd->rsrc_start, hcd->rsrc_len);
 usb_put_hcd(hcd);
 platform_set_drvdata(pdev, ((void*)0));

 return 0;
}
