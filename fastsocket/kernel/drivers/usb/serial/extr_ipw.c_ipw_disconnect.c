
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_serial_port {int dummy; } ;


 int usb_set_serial_port_data (struct usb_serial_port*,int *) ;

__attribute__((used)) static int ipw_disconnect(struct usb_serial_port *port)
{
 usb_set_serial_port_data(port, ((void*)0));
 return 0;
}
