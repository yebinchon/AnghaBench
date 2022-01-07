
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_serial {int num_ports; int * port; } ;
struct moschip_port {int zombie; int control_urb; int pool_lock; } ;


 int dbg (char*,...) ;
 struct moschip_port* mos7840_get_port_private (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int usb_kill_urb (int ) ;

__attribute__((used)) static void mos7840_disconnect(struct usb_serial *serial)
{
 int i;
 unsigned long flags;
 struct moschip_port *mos7840_port;
 dbg("%s", " disconnect :entering..........");

 if (!serial) {
  dbg("%s", "Invalid Handler");
  return;
 }






 for (i = 0; i < serial->num_ports; ++i) {
  mos7840_port = mos7840_get_port_private(serial->port[i]);
  dbg ("mos7840_port %d = %p", i, mos7840_port);
  if (mos7840_port) {
   spin_lock_irqsave(&mos7840_port->pool_lock, flags);
   mos7840_port->zombie = 1;
   spin_unlock_irqrestore(&mos7840_port->pool_lock, flags);
   usb_kill_urb(mos7840_port->control_urb);
  }
 }

 dbg("%s", "Thank u :: ");

}
