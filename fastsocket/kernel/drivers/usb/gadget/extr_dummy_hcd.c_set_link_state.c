
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dummy {int active; int port_status; int old_status; scalar_t__ rh_state; int old_active; int lock; int gadget; TYPE_1__* driver; scalar_t__ resuming; scalar_t__ udc_suspended; int pullup; } ;
struct TYPE_2__ {int (* resume ) (int *) ;int (* suspend ) (int *) ;int (* disconnect ) (int *) ;} ;


 scalar_t__ DUMMY_RH_SUSPENDED ;
 int USB_PORT_STAT_CONNECTION ;
 int USB_PORT_STAT_C_CONNECTION ;
 int USB_PORT_STAT_ENABLE ;
 int USB_PORT_STAT_HIGH_SPEED ;
 int USB_PORT_STAT_LOW_SPEED ;
 int USB_PORT_STAT_POWER ;
 int USB_PORT_STAT_RESET ;
 int USB_PORT_STAT_SUSPEND ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int stop_activity (struct dummy*) ;
 int stub1 (int *) ;
 int stub2 (int *) ;
 int stub3 (int *) ;

__attribute__((used)) static void
set_link_state (struct dummy *dum)
{
 dum->active = 0;
 if ((dum->port_status & USB_PORT_STAT_POWER) == 0)
  dum->port_status = 0;


 else if (!dum->pullup || dum->udc_suspended) {
  dum->port_status &= ~(USB_PORT_STAT_CONNECTION |
     USB_PORT_STAT_ENABLE |
     USB_PORT_STAT_LOW_SPEED |
     USB_PORT_STAT_HIGH_SPEED |
     USB_PORT_STAT_SUSPEND);
  if ((dum->old_status & USB_PORT_STAT_CONNECTION) != 0)
   dum->port_status |= (USB_PORT_STAT_C_CONNECTION << 16);
 } else {
  dum->port_status |= USB_PORT_STAT_CONNECTION;
  if ((dum->old_status & USB_PORT_STAT_CONNECTION) == 0)
   dum->port_status |= (USB_PORT_STAT_C_CONNECTION << 16);
  if ((dum->port_status & USB_PORT_STAT_ENABLE) == 0)
   dum->port_status &= ~USB_PORT_STAT_SUSPEND;
  else if ((dum->port_status & USB_PORT_STAT_SUSPEND) == 0 &&
    dum->rh_state != DUMMY_RH_SUSPENDED)
   dum->active = 1;
 }

 if ((dum->port_status & USB_PORT_STAT_ENABLE) == 0 || dum->active)
  dum->resuming = 0;

 if ((dum->port_status & USB_PORT_STAT_CONNECTION) == 0 ||
   (dum->port_status & USB_PORT_STAT_RESET) != 0) {
  if ((dum->old_status & USB_PORT_STAT_CONNECTION) != 0 &&
    (dum->old_status & USB_PORT_STAT_RESET) == 0 &&
    dum->driver) {
   stop_activity (dum);
   spin_unlock (&dum->lock);
   dum->driver->disconnect (&dum->gadget);
   spin_lock (&dum->lock);
  }
 } else if (dum->active != dum->old_active) {
  if (dum->old_active && dum->driver->suspend) {
   spin_unlock (&dum->lock);
   dum->driver->suspend (&dum->gadget);
   spin_lock (&dum->lock);
  } else if (!dum->old_active && dum->driver->resume) {
   spin_unlock (&dum->lock);
   dum->driver->resume (&dum->gadget);
   spin_lock (&dum->lock);
  }
 }

 dum->old_status = dum->port_status;
 dum->old_active = dum->active;
}
