
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_hcd {int dummy; } ;
struct platform_device {int dummy; } ;


 int usb_put_hcd (struct usb_hcd*) ;
 int usb_remove_hcd (struct usb_hcd*) ;

__attribute__((used)) static void oxu_remove(struct platform_device *pdev, struct usb_hcd *hcd)
{
 usb_remove_hcd(hcd);
 usb_put_hcd(hcd);
}
