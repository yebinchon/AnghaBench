
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_wwan_port_private {int * out_urbs; int * in_urbs; } ;
struct usb_serial_port {int dummy; } ;
struct usb_serial {int num_ports; struct usb_serial_port** port; } ;


 int N_IN_URB ;
 int N_OUT_URB ;
 struct usb_wwan_port_private* usb_get_serial_port_data (struct usb_serial_port*) ;
 int usb_kill_urb (int ) ;

__attribute__((used)) static void stop_read_write_urbs(struct usb_serial *serial)
{
 int i, j;
 struct usb_serial_port *port;
 struct usb_wwan_port_private *portdata;


 for (i = 0; i < serial->num_ports; ++i) {
  port = serial->port[i];
  portdata = usb_get_serial_port_data(port);
  for (j = 0; j < N_IN_URB; j++)
   usb_kill_urb(portdata->in_urbs[j]);
  for (j = 0; j < N_OUT_URB; j++)
   usb_kill_urb(portdata->out_urbs[j]);
 }
}
