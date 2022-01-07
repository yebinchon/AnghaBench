
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_hcd {int dummy; } ;
struct usb_device {struct usb_device* serial; struct usb_device* manufacturer; struct usb_device* product; int bus; } ;
struct device {int dummy; } ;


 struct usb_hcd* bus_to_hcd (int ) ;
 int kfree (struct usb_device*) ;
 struct usb_device* to_usb_device (struct device*) ;
 int usb_destroy_configuration (struct usb_device*) ;
 int usb_put_hcd (struct usb_hcd*) ;
 int usb_release_bos_descriptor (struct usb_device*) ;

__attribute__((used)) static void usb_release_dev(struct device *dev)
{
 struct usb_device *udev;
 struct usb_hcd *hcd;

 udev = to_usb_device(dev);
 hcd = bus_to_hcd(udev->bus);

 usb_destroy_configuration(udev);
 usb_release_bos_descriptor(udev);
 usb_put_hcd(hcd);
 kfree(udev->product);
 kfree(udev->manufacturer);
 kfree(udev->serial);
 kfree(udev);
}
