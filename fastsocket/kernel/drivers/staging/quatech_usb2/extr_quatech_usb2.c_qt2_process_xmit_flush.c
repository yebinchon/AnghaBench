
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_serial_port {int dummy; } ;
struct quatech2_port {int xmit_flush; } ;


 struct quatech2_port* qt2_get_port_private (struct usb_serial_port*) ;

__attribute__((used)) static void qt2_process_xmit_flush(struct usb_serial_port *port)
{

 struct quatech2_port *port_extra = qt2_get_port_private(port);
 port_extra->xmit_flush = 1;
}
