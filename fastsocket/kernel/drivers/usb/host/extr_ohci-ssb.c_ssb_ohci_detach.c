
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_hcd {int regs; } ;
struct ssb_device {int dummy; } ;


 int iounmap (int ) ;
 int ssb_device_disable (struct ssb_device*,int ) ;
 struct usb_hcd* ssb_get_drvdata (struct ssb_device*) ;
 int usb_put_hcd (struct usb_hcd*) ;
 int usb_remove_hcd (struct usb_hcd*) ;

__attribute__((used)) static void ssb_ohci_detach(struct ssb_device *dev)
{
 struct usb_hcd *hcd = ssb_get_drvdata(dev);

 usb_remove_hcd(hcd);
 iounmap(hcd->regs);
 usb_put_hcd(hcd);
 ssb_device_disable(dev, 0);
}
