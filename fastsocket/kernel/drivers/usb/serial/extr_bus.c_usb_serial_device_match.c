
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_serial_port {TYPE_1__* serial; } ;
struct usb_serial_driver {int dummy; } ;
struct device_driver {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct usb_serial_driver* type; } ;


 struct usb_serial_driver* to_usb_serial_driver (struct device_driver*) ;
 struct usb_serial_port* to_usb_serial_port (struct device*) ;

__attribute__((used)) static int usb_serial_device_match(struct device *dev,
      struct device_driver *drv)
{
 struct usb_serial_driver *driver;
 const struct usb_serial_port *port;





 port = to_usb_serial_port(dev);
 if (!port)
  return 0;

 driver = to_usb_serial_driver(drv);

 if (driver == port->serial->type)
  return 1;

 return 0;
}
