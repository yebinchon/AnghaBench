
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_request {int list; } ;
struct usb_ep {struct gs_port* driver_data; } ;
struct gs_port {int port_lock; int push; int read_queue; } ;


 int list_add_tail (int *,int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int tasklet_schedule (int *) ;

__attribute__((used)) static void gs_read_complete(struct usb_ep *ep, struct usb_request *req)
{
 struct gs_port *port = ep->driver_data;


 spin_lock(&port->port_lock);
 list_add_tail(&req->list, &port->read_queue);
 tasklet_schedule(&port->push);
 spin_unlock(&port->port_lock);
}
