
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_serial_port {int work; } ;


 int schedule_work (int *) ;

void usb_serial_port_softint(struct usb_serial_port *port)
{
 schedule_work(&port->work);
}
