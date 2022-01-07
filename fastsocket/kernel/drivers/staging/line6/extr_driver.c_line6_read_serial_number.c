
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_line6 {int dummy; } ;


 int line6_read_data (struct usb_line6*,int,int*,int) ;

int line6_read_serial_number(struct usb_line6 *line6, int *serial_number)
{
 return line6_read_data(line6, 0x80d0, serial_number, sizeof(*serial_number));
}
