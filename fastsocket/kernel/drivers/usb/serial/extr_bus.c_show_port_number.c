
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_serial_port {int number; TYPE_1__* serial; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {int minor; } ;


 int sprintf (char*,char*,int) ;
 struct usb_serial_port* to_usb_serial_port (struct device*) ;

__attribute__((used)) static ssize_t show_port_number(struct device *dev,
    struct device_attribute *attr, char *buf)
{
 struct usb_serial_port *port = to_usb_serial_port(dev);

 return sprintf(buf, "%d\n", port->number - port->serial->minor);
}
