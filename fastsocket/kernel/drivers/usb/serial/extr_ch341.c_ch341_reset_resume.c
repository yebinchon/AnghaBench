
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_serial {int * port; } ;
struct usb_interface {int dummy; } ;
struct usb_device {int dummy; } ;
struct ch341_private {int dummy; } ;


 int ch341_configure (struct usb_device*,struct ch341_private*) ;
 struct usb_device* interface_to_usbdev (struct usb_interface*) ;
 struct usb_serial* usb_get_intfdata (struct usb_interface*) ;
 struct ch341_private* usb_get_serial_port_data (int ) ;
 int usb_serial_resume (struct usb_interface*) ;

__attribute__((used)) static int ch341_reset_resume(struct usb_interface *intf)
{
 struct usb_device *dev = interface_to_usbdev(intf);
 struct usb_serial *serial = ((void*)0);
 struct ch341_private *priv;

 serial = usb_get_intfdata(intf);
 priv = usb_get_serial_port_data(serial->port[0]);


 ch341_configure(dev, priv);

 usb_serial_resume(intf);

 return 0;
}
