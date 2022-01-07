
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xhci_hcd {struct usb_hcd* shared_hcd; } ;
struct usb_hcd {int regs; } ;
struct platform_device {int dummy; } ;


 struct xhci_hcd* hcd_to_xhci (struct usb_hcd*) ;
 int iounmap (int ) ;
 int kfree (struct xhci_hcd*) ;
 struct usb_hcd* platform_get_drvdata (struct platform_device*) ;
 int usb_put_hcd (struct usb_hcd*) ;
 int usb_remove_hcd (struct usb_hcd*) ;

__attribute__((used)) static int xhci_plat_remove(struct platform_device *dev)
{
 struct usb_hcd *hcd = platform_get_drvdata(dev);
 struct xhci_hcd *xhci = hcd_to_xhci(hcd);

 usb_remove_hcd(xhci->shared_hcd);
 usb_put_hcd(xhci->shared_hcd);

 usb_remove_hcd(hcd);
 iounmap(hcd->regs);
 usb_put_hcd(hcd);
 kfree(xhci);

 return 0;
}
