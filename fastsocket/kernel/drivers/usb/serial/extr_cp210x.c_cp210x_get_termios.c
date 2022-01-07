
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_serial_port {int dummy; } ;
struct tty_struct {TYPE_1__* termios; struct usb_serial_port* driver_data; } ;
struct TYPE_2__ {unsigned int c_cflag; } ;


 int cp210x_get_termios_port (struct usb_serial_port*,unsigned int*,unsigned int*) ;
 int tty_encode_baud_rate (struct tty_struct*,unsigned int,unsigned int) ;

__attribute__((used)) static void cp210x_get_termios(struct tty_struct *tty,
 struct usb_serial_port *port)
{
 unsigned int baud;

 if (tty) {
  cp210x_get_termios_port(tty->driver_data,
   &tty->termios->c_cflag, &baud);
  tty_encode_baud_rate(tty, baud, baud);
 }

 else {
  unsigned int cflag;
  cflag = 0;
  cp210x_get_termios_port(port, &cflag, &baud);
 }
}
