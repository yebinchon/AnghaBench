
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_serial_port {int sysrq; int console; int port; struct urb* read_urb; } ;
struct urb {int actual_length; scalar_t__ transfer_buffer; } ;
struct tty_struct {int dummy; } ;


 int GFP_ATOMIC ;
 int TTY_NORMAL ;
 int tty_flip_buffer_push (struct tty_struct*) ;
 int tty_insert_flip_char (struct tty_struct*,char,int ) ;
 int tty_insert_flip_string (struct tty_struct*,char*,int) ;
 int tty_kref_put (struct tty_struct*) ;
 struct tty_struct* tty_port_tty_get (int *) ;
 int usb_serial_generic_resubmit_read_urb (struct usb_serial_port*,int ) ;
 int usb_serial_handle_sysrq_char (struct tty_struct*,struct usb_serial_port*,char) ;

__attribute__((used)) static void flush_and_resubmit_read_urb(struct usb_serial_port *port)
{
 struct urb *urb = port->read_urb;
 struct tty_struct *tty = tty_port_tty_get(&port->port);
 char *ch = (char *)urb->transfer_buffer;
 int i;

 if (!tty)
  goto done;




 if (!port->console || !port->sysrq)
  tty_insert_flip_string(tty, ch, urb->actual_length);
 else {

  for (i = 0; i < urb->actual_length; i++, ch++) {
   if (!usb_serial_handle_sysrq_char(tty, port, *ch))
    tty_insert_flip_char(tty, *ch, TTY_NORMAL);
  }
 }
 tty_flip_buffer_push(tty);
 tty_kref_put(tty);
done:
 usb_serial_generic_resubmit_read_urb(port, GFP_ATOMIC);
}
