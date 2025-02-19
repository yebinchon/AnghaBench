
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_serial_port {int bulk_out_size; } ;
struct tty_struct {int dummy; } ;


 int USB_DEBUG_MAX_PACKET_SIZE ;
 int usb_serial_generic_open (struct tty_struct*,struct usb_serial_port*) ;

__attribute__((used)) static int usb_debug_open(struct tty_struct *tty, struct usb_serial_port *port)
{
 port->bulk_out_size = USB_DEBUG_MAX_PACKET_SIZE;
 return usb_serial_generic_open(tty, port);
}
