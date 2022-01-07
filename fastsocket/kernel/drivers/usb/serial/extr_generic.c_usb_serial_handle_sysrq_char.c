
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_serial_port {scalar_t__ sysrq; scalar_t__ console; } ;
struct tty_struct {int dummy; } ;


 int handle_sysrq (unsigned int,struct tty_struct*) ;
 int jiffies ;
 scalar_t__ time_before (int ,scalar_t__) ;

int usb_serial_handle_sysrq_char(struct tty_struct *tty,
   struct usb_serial_port *port, unsigned int ch)
{
 if (port->sysrq && port->console) {
  if (ch && time_before(jiffies, port->sysrq)) {
   handle_sysrq(ch, tty);
   port->sysrq = 0;
   return 1;
  }
  port->sysrq = 0;
 }
 return 0;
}
