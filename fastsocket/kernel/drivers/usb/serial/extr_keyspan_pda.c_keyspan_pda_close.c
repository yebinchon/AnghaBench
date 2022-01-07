
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_serial_port {int interrupt_in_urb; int write_urb; struct usb_serial* serial; } ;
struct usb_serial {scalar_t__ dev; } ;


 int usb_kill_urb (int ) ;

__attribute__((used)) static void keyspan_pda_close(struct usb_serial_port *port)
{
 struct usb_serial *serial = port->serial;

 if (serial->dev) {

  usb_kill_urb(port->write_urb);
  usb_kill_urb(port->interrupt_in_urb);
 }
}
