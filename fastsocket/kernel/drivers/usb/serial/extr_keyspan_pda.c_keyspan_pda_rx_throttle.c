
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_serial_port {int interrupt_in_urb; int number; } ;
struct tty_struct {struct usb_serial_port* driver_data; } ;


 int dbg (char*,int ) ;
 int usb_kill_urb (int ) ;

__attribute__((used)) static void keyspan_pda_rx_throttle(struct tty_struct *tty)
{






 struct usb_serial_port *port = tty->driver_data;
 dbg("keyspan_pda_rx_throttle port %d", port->number);
 usb_kill_urb(port->interrupt_in_urb);
}
