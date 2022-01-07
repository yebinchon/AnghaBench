
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_serial_port {int dummy; } ;
struct quatech2_port {unsigned char shadowMSR; int wait; } ;


 struct quatech2_port* qt2_get_port_private (struct usb_serial_port*) ;
 int wake_up_interruptible (int *) ;

__attribute__((used)) static void qt2_process_modem_status(struct usb_serial_port *port,
 unsigned char ModemStatus)
{

 struct quatech2_port *port_extra = qt2_get_port_private(port);
 port_extra->shadowMSR = ModemStatus;
 wake_up_interruptible(&port_extra->wait);




}
