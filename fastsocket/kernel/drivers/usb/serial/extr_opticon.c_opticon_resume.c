
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ count; } ;
struct usb_serial_port {int mutex; TYPE_1__ port; } ;
struct usb_serial {struct usb_serial_port** port; } ;
struct usb_interface {int dummy; } ;
struct opticon_private {int bulk_read_urb; } ;


 int GFP_NOIO ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct usb_serial* usb_get_intfdata (struct usb_interface*) ;
 struct opticon_private* usb_get_serial_data (struct usb_serial*) ;
 int usb_submit_urb (int ,int ) ;

__attribute__((used)) static int opticon_resume(struct usb_interface *intf)
{
 struct usb_serial *serial = usb_get_intfdata(intf);
 struct opticon_private *priv = usb_get_serial_data(serial);
 struct usb_serial_port *port = serial->port[0];
 int result;

 mutex_lock(&port->mutex);
 if (port->port.count)
  result = usb_submit_urb(priv->bulk_read_urb, GFP_NOIO);
 else
  result = 0;
 mutex_unlock(&port->mutex);
 return result;
}
