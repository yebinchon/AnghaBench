
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_serial_port {struct usb_serial* serial; } ;
struct usb_serial {int dummy; } ;
struct tty_struct {struct usb_serial_port* driver_data; } ;
struct file {int dummy; } ;


 int TIOCM_CAR ;
 int TIOCM_CTS ;
 int TIOCM_DSR ;
 int TIOCM_DTR ;
 int TIOCM_RNG ;
 int TIOCM_RTS ;
 int keyspan_pda_get_modem_info (struct usb_serial*,unsigned char*) ;

__attribute__((used)) static int keyspan_pda_tiocmget(struct tty_struct *tty, struct file *file)
{
 struct usb_serial_port *port = tty->driver_data;
 struct usb_serial *serial = port->serial;
 int rc;
 unsigned char status;
 int value;

 rc = keyspan_pda_get_modem_info(serial, &status);
 if (rc < 0)
  return rc;
 value =
  ((status & (1<<7)) ? TIOCM_DTR : 0) |
  ((status & (1<<6)) ? TIOCM_CAR : 0) |
  ((status & (1<<5)) ? TIOCM_RNG : 0) |
  ((status & (1<<4)) ? TIOCM_DSR : 0) |
  ((status & (1<<3)) ? TIOCM_CTS : 0) |
  ((status & (1<<2)) ? TIOCM_RTS : 0);
 return value;
}
