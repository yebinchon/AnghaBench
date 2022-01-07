
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbatm_data {struct uea_softc* driver_data; } ;
struct usb_interface {int dummy; } ;
struct uea_softc {int dummy; } ;
struct device {int dummy; } ;


 struct usb_interface* to_usb_interface (struct device*) ;
 struct usbatm_data* usb_get_intfdata (struct usb_interface*) ;

__attribute__((used)) static struct uea_softc *dev_to_uea(struct device *dev)
{
 struct usb_interface *intf;
 struct usbatm_data *usbatm;

 intf = to_usb_interface(dev);
 if (!intf)
  return ((void*)0);

 usbatm = usb_get_intfdata(intf);
 if (!usbatm)
  return ((void*)0);

 return usbatm->driver_data;
}
