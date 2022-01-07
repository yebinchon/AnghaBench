
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct usb_serial_port {TYPE_2__* interrupt_in_urb; TYPE_1__* serial; int number; } ;
struct tty_struct {struct usb_serial_port* driver_data; } ;
struct TYPE_4__ {int dev; } ;
struct TYPE_3__ {int dev; } ;


 int GFP_KERNEL ;
 int dbg (char*,...) ;
 scalar_t__ usb_submit_urb (TYPE_2__*,int ) ;

__attribute__((used)) static void keyspan_pda_rx_unthrottle(struct tty_struct *tty)
{
 struct usb_serial_port *port = tty->driver_data;

 dbg("keyspan_pda_rx_unthrottle port %d", port->number);
 port->interrupt_in_urb->dev = port->serial->dev;
 if (usb_submit_urb(port->interrupt_in_urb, GFP_KERNEL))
  dbg(" usb_submit_urb(read urb) failed");
 return;
}
