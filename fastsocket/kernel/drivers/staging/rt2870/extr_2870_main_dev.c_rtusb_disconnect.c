
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_interface {int dummy; } ;
struct usb_device {int dummy; } ;
typedef int PRTMP_ADAPTER ;


 int _rtusb_disconnect (struct usb_device*,int ) ;
 struct usb_device* interface_to_usbdev (struct usb_interface*) ;
 int usb_get_intfdata (struct usb_interface*) ;
 int usb_set_intfdata (struct usb_interface*,int *) ;

__attribute__((used)) static void rtusb_disconnect(struct usb_interface *intf)
{
 struct usb_device *dev = interface_to_usbdev(intf);
 PRTMP_ADAPTER pAd;


 pAd = usb_get_intfdata(intf);
 usb_set_intfdata(intf, ((void*)0));

 _rtusb_disconnect(dev, pAd);
}
