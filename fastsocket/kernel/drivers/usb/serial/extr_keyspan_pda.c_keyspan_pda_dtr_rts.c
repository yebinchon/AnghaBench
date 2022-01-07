
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_serial_port {struct usb_serial* serial; } ;
struct usb_serial {scalar_t__ dev; } ;


 int keyspan_pda_set_modem_info (struct usb_serial*,int) ;

__attribute__((used)) static void keyspan_pda_dtr_rts(struct usb_serial_port *port, int on)
{
 struct usb_serial *serial = port->serial;

 if (serial->dev) {
  if (on)
   keyspan_pda_set_modem_info(serial, (1<<7) | (1<< 2));
  else
   keyspan_pda_set_modem_info(serial, 0);
 }
}
