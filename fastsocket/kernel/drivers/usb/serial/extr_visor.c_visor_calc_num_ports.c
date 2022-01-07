
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_serial {int dummy; } ;


 scalar_t__ usb_get_serial_data (struct usb_serial*) ;
 int usb_set_serial_data (struct usb_serial*,int *) ;

__attribute__((used)) static int visor_calc_num_ports(struct usb_serial *serial)
{
 int num_ports = (int)(long)(usb_get_serial_data(serial));

 if (num_ports)
  usb_set_serial_data(serial, ((void*)0));

 return num_ports;
}
