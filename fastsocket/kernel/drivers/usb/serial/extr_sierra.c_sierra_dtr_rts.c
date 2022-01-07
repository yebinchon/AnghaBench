
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_serial_port {struct usb_serial* serial; } ;
struct usb_serial {int disc_mutex; int disconnected; scalar_t__ dev; } ;
struct sierra_port_private {int rts_state; int dtr_state; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int sierra_send_setup (struct usb_serial_port*) ;
 struct sierra_port_private* usb_get_serial_port_data (struct usb_serial_port*) ;

__attribute__((used)) static void sierra_dtr_rts(struct usb_serial_port *port, int on)
{
 struct usb_serial *serial = port->serial;
 struct sierra_port_private *portdata;

 portdata = usb_get_serial_port_data(port);
 portdata->rts_state = on;
 portdata->dtr_state = on;

 if (serial->dev) {
  mutex_lock(&serial->disc_mutex);
  if (!serial->disconnected)
   sierra_send_setup(port);
  mutex_unlock(&serial->disc_mutex);
 }
}
