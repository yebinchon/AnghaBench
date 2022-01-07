
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_hcd {int rsrc_len; int rsrc_start; int regs; } ;
struct platform_device {int dev; } ;


 int clk_put (int ) ;
 int ep93xx_stop_hc (int *) ;
 int iounmap (int ) ;
 int release_mem_region (int ,int ) ;
 int usb_host_clock ;
 int usb_put_hcd (struct usb_hcd*) ;
 int usb_remove_hcd (struct usb_hcd*) ;

__attribute__((used)) static void usb_hcd_ep93xx_remove(struct usb_hcd *hcd,
   struct platform_device *pdev)
{
 usb_remove_hcd(hcd);
 ep93xx_stop_hc(&pdev->dev);
 clk_put(usb_host_clock);
 iounmap(hcd->regs);
 release_mem_region(hcd->rsrc_start, hcd->rsrc_len);
 usb_put_hcd(hcd);
}
