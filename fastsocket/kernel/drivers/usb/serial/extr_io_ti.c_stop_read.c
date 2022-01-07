
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct edgeport_port {scalar_t__ ep_read_urb_state; int ep_lock; int shadow_mcr; } ;


 scalar_t__ EDGE_READ_URB_RUNNING ;
 scalar_t__ EDGE_READ_URB_STOPPING ;
 int MCR_RTS ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void stop_read(struct edgeport_port *edge_port)
{
 unsigned long flags;

 spin_lock_irqsave(&edge_port->ep_lock, flags);

 if (edge_port->ep_read_urb_state == EDGE_READ_URB_RUNNING)
  edge_port->ep_read_urb_state = EDGE_READ_URB_STOPPING;
 edge_port->shadow_mcr &= ~MCR_RTS;

 spin_unlock_irqrestore(&edge_port->ep_lock, flags);
}
