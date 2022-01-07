
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wusbhc {int dummy; } ;
struct usb_hcd {int dummy; } ;
struct usb_bus {int dummy; } ;
struct device {int dummy; } ;


 struct usb_hcd* bus_to_hcd (struct usb_bus*) ;
 struct usb_bus* dev_get_drvdata (struct device*) ;
 struct wusbhc* usb_hcd_to_wusbhc (struct usb_hcd*) ;

__attribute__((used)) static struct wusbhc *usbhc_dev_to_wusbhc(struct device *dev)
{
 struct usb_bus *usb_bus = dev_get_drvdata(dev);
 struct usb_hcd *usb_hcd = bus_to_hcd(usb_bus);
 return usb_hcd_to_wusbhc(usb_hcd);
}
