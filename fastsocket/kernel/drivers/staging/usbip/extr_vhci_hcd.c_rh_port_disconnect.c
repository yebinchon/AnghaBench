
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int* port_status; int lock; } ;


 int USB_PORT_FEAT_C_CONNECTION ;
 int USB_PORT_STAT_CONNECTION ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 TYPE_1__* the_controller ;
 int usbip_dbg_vhci_rh (char*,int) ;

void rh_port_disconnect(int rhport)
{
 unsigned long flags;

 usbip_dbg_vhci_rh("rh_port_disconnect %d\n", rhport);

 spin_lock_irqsave(&the_controller->lock, flags);

 the_controller->port_status[rhport] &= ~USB_PORT_STAT_CONNECTION;
 the_controller->port_status[rhport] |=
     (1 << USB_PORT_FEAT_C_CONNECTION);







 spin_unlock_irqrestore(&the_controller->lock, flags);
}
