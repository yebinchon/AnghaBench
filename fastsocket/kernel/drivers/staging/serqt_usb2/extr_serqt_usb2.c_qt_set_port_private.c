
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_serial_port {int dummy; } ;
struct quatech_port {int dummy; } ;


 int usb_set_serial_port_data (struct usb_serial_port*,void*) ;

__attribute__((used)) static inline void qt_set_port_private(struct usb_serial_port *port,
           struct quatech_port *data)
{
 usb_set_serial_port_data(port, (void *)data);
}
