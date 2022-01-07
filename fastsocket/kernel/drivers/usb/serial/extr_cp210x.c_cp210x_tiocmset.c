
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_serial_port {int dummy; } ;
struct tty_struct {struct usb_serial_port* driver_data; } ;
struct file {int dummy; } ;


 int cp210x_tiocmset_port (struct usb_serial_port*,struct file*,unsigned int,unsigned int) ;

__attribute__((used)) static int cp210x_tiocmset (struct tty_struct *tty, struct file *file,
  unsigned int set, unsigned int clear)
{
 struct usb_serial_port *port = tty->driver_data;
 return cp210x_tiocmset_port(port, file, set, clear);
}
