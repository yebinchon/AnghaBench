
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int flags; } ;
struct usb_serial_port {int mutex; TYPE_2__ port; scalar_t__ console; TYPE_1__* serial; } ;
struct usb_serial_driver {int (* close ) (struct usb_serial_port*) ;} ;
struct TYPE_3__ {struct usb_serial_driver* type; } ;


 int ASYNCB_INITIALIZED ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int stub1 (struct usb_serial_port*) ;
 int test_and_clear_bit (int ,int *) ;

__attribute__((used)) static void serial_down(struct usb_serial_port *port)
{
 struct usb_serial_driver *drv = port->serial->type;





 if (port->console)
  return;




 if (!test_and_clear_bit(ASYNCB_INITIALIZED, &port->port.flags))
  return;

 mutex_lock(&port->mutex);
 if (drv->close)
  drv->close(port);
 mutex_unlock(&port->mutex);
}
