
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct usb_serial_port {TYPE_2__* serial; int port; } ;
struct urb {scalar_t__ actual_length; } ;
struct tty_struct {int dummy; } ;
struct TYPE_4__ {TYPE_1__** port; } ;
struct TYPE_3__ {struct urb* read_urb; } ;


 int tty_buffer_request_room (struct tty_struct*,int) ;
 int tty_insert_flip_string (struct tty_struct*,unsigned char*,int) ;
 struct tty_struct* tty_port_tty_get (int *) ;

__attribute__((used)) static void qt2_process_rx_char(struct usb_serial_port *port,
 unsigned char data)
{

 struct tty_struct *tty = tty_port_tty_get(&(port->port));

 struct urb *urb = port->serial->port[0]->read_urb;

 if (tty && urb->actual_length) {
  tty_buffer_request_room(tty, 1);
  tty_insert_flip_string(tty, &data, 1);


 }
}
