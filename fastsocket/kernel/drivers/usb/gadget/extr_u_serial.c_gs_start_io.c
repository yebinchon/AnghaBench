
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_ep {int dummy; } ;
struct list_head {int dummy; } ;
struct gs_port {struct list_head write_pool; TYPE_1__* port_usb; int port_tty; scalar_t__ n_read; struct list_head read_pool; } ;
struct TYPE_2__ {struct usb_ep* in; struct usb_ep* out; } ;


 int EIO ;
 int gs_alloc_requests (struct usb_ep*,struct list_head*,int ) ;
 int gs_free_requests (struct usb_ep*,struct list_head*) ;
 int gs_read_complete ;
 unsigned int gs_start_rx (struct gs_port*) ;
 int gs_write_complete ;
 int tty_wakeup (int ) ;

__attribute__((used)) static int gs_start_io(struct gs_port *port)
{
 struct list_head *head = &port->read_pool;
 struct usb_ep *ep = port->port_usb->out;
 int status;
 unsigned started;







 status = gs_alloc_requests(ep, head, gs_read_complete);
 if (status)
  return status;

 status = gs_alloc_requests(port->port_usb->in, &port->write_pool,
   gs_write_complete);
 if (status) {
  gs_free_requests(ep, head);
  return status;
 }


 port->n_read = 0;
 started = gs_start_rx(port);


 if (started) {
  tty_wakeup(port->port_tty);
 } else {
  gs_free_requests(ep, head);
  gs_free_requests(port->port_usb->in, &port->write_pool);
  status = -EIO;
 }

 return status;
}
