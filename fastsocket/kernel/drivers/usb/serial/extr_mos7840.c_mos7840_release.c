
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_serial {int num_ports; int * port; } ;
struct moschip_port {struct moschip_port* dr; struct moschip_port* ctrl_buf; } ;


 int dbg (char*,...) ;
 int kfree (struct moschip_port*) ;
 struct moschip_port* mos7840_get_port_private (int ) ;

__attribute__((used)) static void mos7840_release(struct usb_serial *serial)
{
 int i;
 struct moschip_port *mos7840_port;
 dbg("%s", " release :entering..........");

 if (!serial) {
  dbg("%s", "Invalid Handler");
  return;
 }






 for (i = 0; i < serial->num_ports; ++i) {
  mos7840_port = mos7840_get_port_private(serial->port[i]);
  dbg("mos7840_port %d = %p", i, mos7840_port);
  if (mos7840_port) {
   kfree(mos7840_port->ctrl_buf);
   kfree(mos7840_port->dr);
   kfree(mos7840_port);
  }
 }

 dbg("%s", "Thank u :: ");

}
