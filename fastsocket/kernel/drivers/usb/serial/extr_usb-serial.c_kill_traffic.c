
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_serial_port {int interrupt_out_urb; int interrupt_in_urb; int read_urb; int write_urb; } ;


 int usb_kill_urb (int ) ;

__attribute__((used)) static void kill_traffic(struct usb_serial_port *port)
{
 usb_kill_urb(port->read_urb);
 usb_kill_urb(port->write_urb);
 usb_kill_urb(port->read_urb);
 usb_kill_urb(port->interrupt_in_urb);
 usb_kill_urb(port->interrupt_out_urb);
}
