
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_serial_port {int dummy; } ;
struct quatech2_port {unsigned char shadowLSR; } ;


 unsigned char QT2_SERIAL_LSR_BI ;
 unsigned char QT2_SERIAL_LSR_FE ;
 unsigned char QT2_SERIAL_LSR_OE ;
 unsigned char QT2_SERIAL_LSR_PE ;
 struct quatech2_port* qt2_get_port_private (struct usb_serial_port*) ;

__attribute__((used)) static void qt2_process_line_status(struct usb_serial_port *port,
 unsigned char LineStatus)
{

 struct quatech2_port *port_extra = qt2_get_port_private(port);
 port_extra->shadowLSR = LineStatus & (QT2_SERIAL_LSR_OE |
  QT2_SERIAL_LSR_PE | QT2_SERIAL_LSR_FE | QT2_SERIAL_LSR_BI);
}
