
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_serial_port {struct usb_serial* serial; } ;
struct usb_serial {int dummy; } ;
struct tty_struct {struct usb_serial_port* driver_data; } ;
struct file {int dummy; } ;


 int ARK3116_RCV_QUIET (struct usb_serial*,int,int,int,int,char*) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int TIOCM_CTS ;
 int TIOCM_DSR ;
 int dbg (char*) ;
 int kfree (char*) ;
 char* kmalloc (int,int ) ;

__attribute__((used)) static int ark3116_tiocmget(struct tty_struct *tty, struct file *file)
{
 struct usb_serial_port *port = tty->driver_data;
 struct usb_serial *serial = port->serial;
 char *buf;
 char temp;







 buf = kmalloc(1, GFP_KERNEL);
 if (!buf) {
  dbg("error kmalloc");
  return -ENOMEM;
 }


 ARK3116_RCV_QUIET(serial, 0xFE, 0xC0, 0x0000, 0x0006, buf);
 temp = buf[0];
 kfree(buf);




 return (temp & (1<<4) ? TIOCM_CTS : 0)
        | (temp & (1<<6) ? TIOCM_DSR : 0);
}
