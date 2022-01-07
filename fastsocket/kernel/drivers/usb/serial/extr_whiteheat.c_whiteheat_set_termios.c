
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_serial_port {int dummy; } ;
struct tty_struct {int dummy; } ;
struct ktermios {int dummy; } ;


 int firm_setup_port (struct tty_struct*) ;

__attribute__((used)) static void whiteheat_set_termios(struct tty_struct *tty,
 struct usb_serial_port *port, struct ktermios *old_termios)
{
 firm_setup_port(tty);
}
