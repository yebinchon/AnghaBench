
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_serial_port {struct urb* read_urb; } ;
struct urb {scalar_t__ actual_length; } ;
struct tty_struct {int dummy; } ;


 int TTY_NORMAL ;
 int tty_insert_flip_char (struct tty_struct*,unsigned char,int ) ;

__attribute__((used)) static void ProcessRxChar(struct tty_struct *tty, struct usb_serial_port *port,
      unsigned char data)
{
 struct urb *urb = port->read_urb;
 if (urb->actual_length)
  tty_insert_flip_char(tty, data, TTY_NORMAL);
}
