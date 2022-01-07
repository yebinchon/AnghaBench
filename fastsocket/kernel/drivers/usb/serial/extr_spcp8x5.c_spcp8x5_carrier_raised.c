
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_serial_port {int dummy; } ;
struct spcp8x5_private {int line_status; } ;


 int MSR_STATUS_LINE_DCD ;
 struct spcp8x5_private* usb_get_serial_port_data (struct usb_serial_port*) ;

__attribute__((used)) static int spcp8x5_carrier_raised(struct usb_serial_port *port)
{
 struct spcp8x5_private *priv = usb_get_serial_port_data(port);
 if (priv->line_status & MSR_STATUS_LINE_DCD)
  return 1;
 return 0;
}
