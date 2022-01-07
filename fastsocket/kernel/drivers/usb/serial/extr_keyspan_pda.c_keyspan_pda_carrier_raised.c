
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_serial_port {struct usb_serial* serial; } ;
struct usb_serial {int dummy; } ;


 scalar_t__ keyspan_pda_get_modem_info (struct usb_serial*,unsigned char*) ;

__attribute__((used)) static int keyspan_pda_carrier_raised(struct usb_serial_port *port)
{
 struct usb_serial *serial = port->serial;
 unsigned char modembits;



 if (keyspan_pda_get_modem_info(serial, &modembits) >= 0) {
  if (!(modembits & (1>>6)))
   return 0;
 }


 return 1;
}
