
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_hcd {int rsrc_len; int rsrc_start; int regs; } ;
struct pxa27x_ohci {int clk; } ;
struct platform_device {int dev; } ;


 int clk_put (int ) ;
 int iounmap (int ) ;
 int pxa27x_stop_hc (struct pxa27x_ohci*,int *) ;
 int release_mem_region (int ,int ) ;
 struct pxa27x_ohci* to_pxa27x_ohci (struct usb_hcd*) ;
 int usb_put_hcd (struct usb_hcd*) ;
 int usb_remove_hcd (struct usb_hcd*) ;

void usb_hcd_pxa27x_remove (struct usb_hcd *hcd, struct platform_device *pdev)
{
 struct pxa27x_ohci *ohci = to_pxa27x_ohci(hcd);

 usb_remove_hcd(hcd);
 pxa27x_stop_hc(ohci, &pdev->dev);
 iounmap(hcd->regs);
 release_mem_region(hcd->rsrc_start, hcd->rsrc_len);
 usb_put_hcd(hcd);
 clk_put(ohci->clk);
}
