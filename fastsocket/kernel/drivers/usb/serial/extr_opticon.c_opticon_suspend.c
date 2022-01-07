
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_serial {int dummy; } ;
struct usb_interface {int dummy; } ;
struct opticon_private {int bulk_read_urb; } ;
typedef int pm_message_t ;


 struct usb_serial* usb_get_intfdata (struct usb_interface*) ;
 struct opticon_private* usb_get_serial_data (struct usb_serial*) ;
 int usb_kill_urb (int ) ;

__attribute__((used)) static int opticon_suspend(struct usb_interface *intf, pm_message_t message)
{
 struct usb_serial *serial = usb_get_intfdata(intf);
 struct opticon_private *priv = usb_get_serial_data(serial);

 usb_kill_urb(priv->bulk_read_urb);
 return 0;
}
