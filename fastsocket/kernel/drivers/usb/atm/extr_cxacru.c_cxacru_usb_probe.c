
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_interface {int dummy; } ;
struct usb_device_id {int dummy; } ;


 int cxacru_driver ;
 int usbatm_usb_probe (struct usb_interface*,struct usb_device_id const*,int *) ;

__attribute__((used)) static int cxacru_usb_probe(struct usb_interface *intf, const struct usb_device_id *id)
{
 return usbatm_usb_probe(intf, id, &cxacru_driver);
}
