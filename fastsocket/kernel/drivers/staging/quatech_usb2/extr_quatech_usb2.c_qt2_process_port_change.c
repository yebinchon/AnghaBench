
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_serial_port {struct usb_serial* serial; } ;
struct usb_serial {int * port; } ;
struct quatech2_dev {int current_port; } ;


 struct quatech2_dev* qt2_get_dev_private (struct usb_serial*) ;

__attribute__((used)) static void qt2_process_port_change(struct usb_serial_port *port,
 unsigned char New_Current_Port)
{

 struct usb_serial *serial = port->serial;

 struct quatech2_dev *dev_extra = qt2_get_dev_private(serial);
 dev_extra->current_port = serial->port[New_Current_Port];



}
