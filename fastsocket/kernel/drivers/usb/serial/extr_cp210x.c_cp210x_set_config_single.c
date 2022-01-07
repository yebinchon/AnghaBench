
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct usb_serial_port {int dummy; } ;


 int cp210x_set_config (struct usb_serial_port*,int ,unsigned int*,int) ;

__attribute__((used)) static inline int cp210x_set_config_single(struct usb_serial_port *port,
  u8 request, unsigned int data)
{
 return cp210x_set_config(port, request, &data, 2);
}
