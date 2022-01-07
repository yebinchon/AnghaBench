
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_serial_port {scalar_t__ write_urb_busy; } ;
struct urb {struct usb_serial_port* context; } ;
struct keyspan_pda_private {int wakeup_work; } ;


 int schedule_work (int *) ;
 struct keyspan_pda_private* usb_get_serial_port_data (struct usb_serial_port*) ;

__attribute__((used)) static void keyspan_pda_write_bulk_callback(struct urb *urb)
{
 struct usb_serial_port *port = urb->context;
 struct keyspan_pda_private *priv;

 port->write_urb_busy = 0;
 priv = usb_get_serial_port_data(port);


 schedule_work(&priv->wakeup_work);
}
