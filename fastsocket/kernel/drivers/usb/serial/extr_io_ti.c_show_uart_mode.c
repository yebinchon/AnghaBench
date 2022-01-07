
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_serial_port {int dummy; } ;
struct edgeport_port {int bUartMode; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int sprintf (char*,char*,int) ;
 struct usb_serial_port* to_usb_serial_port (struct device*) ;
 struct edgeport_port* usb_get_serial_port_data (struct usb_serial_port*) ;

__attribute__((used)) static ssize_t show_uart_mode(struct device *dev,
 struct device_attribute *attr, char *buf)
{
 struct usb_serial_port *port = to_usb_serial_port(dev);
 struct edgeport_port *edge_port = usb_get_serial_port_data(port);

 return sprintf(buf, "%d\n", edge_port->bUartMode);
}
