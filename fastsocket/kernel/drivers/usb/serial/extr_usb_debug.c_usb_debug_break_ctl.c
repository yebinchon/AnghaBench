
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_serial_port {int dummy; } ;
struct tty_struct {struct usb_serial_port* driver_data; } ;


 int USB_DEBUG_BRK ;
 int USB_DEBUG_BRK_SIZE ;
 int usb_serial_generic_write (struct tty_struct*,struct usb_serial_port*,int ,int ) ;

__attribute__((used)) static void usb_debug_break_ctl(struct tty_struct *tty, int break_state)
{
 struct usb_serial_port *port = tty->driver_data;
 if (!break_state)
  return;
 usb_serial_generic_write(tty, port, USB_DEBUG_BRK, USB_DEBUG_BRK_SIZE);
}
