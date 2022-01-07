
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_serial_port {int dummy; } ;


 unsigned int CONTROL_DCD ;
 int CP210X_GET_MDMSTS ;
 int cp210x_get_config (struct usb_serial_port*,int ,unsigned int*,int) ;

__attribute__((used)) static int cp210x_carrier_raised(struct usb_serial_port *p)
{
 unsigned int control;
 cp210x_get_config(p, CP210X_GET_MDMSTS, &control, 1);
 if (control & CONTROL_DCD)
  return 1;
 return 0;
}
