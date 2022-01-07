
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_serial {int num_ports; int * port; } ;


 int kfree (int ) ;
 int usb_get_serial_data (struct usb_serial*) ;
 int usb_get_serial_port_data (int ) ;

__attribute__((used)) static void mos7720_release(struct usb_serial *serial)
{
 int i;


 for (i = 0; i < serial->num_ports; ++i)
  kfree(usb_get_serial_port_data(serial->port[i]));


 kfree(usb_get_serial_data(serial));
}
