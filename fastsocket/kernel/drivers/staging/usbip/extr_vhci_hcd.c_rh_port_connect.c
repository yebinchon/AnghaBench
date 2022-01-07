
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef enum usb_device_speed { ____Placeholder_usb_device_speed } usb_device_speed ;
struct TYPE_3__ {int* port_status; int pending_port; int lock; } ;


 int USB_PORT_FEAT_C_CONNECTION ;
 int USB_PORT_STAT_CONNECTION ;
 int USB_PORT_STAT_HIGH_SPEED ;
 int USB_PORT_STAT_LOW_SPEED ;


 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 TYPE_1__* the_controller ;
 int usb_hcd_poll_rh_status (int ) ;
 int usbip_dbg_vhci_rh (char*,int) ;
 int vhci_to_hcd (TYPE_1__*) ;

void rh_port_connect(int rhport, enum usb_device_speed speed)
{
 unsigned long flags;

 usbip_dbg_vhci_rh("rh_port_connect %d\n", rhport);

 spin_lock_irqsave(&the_controller->lock, flags);

 the_controller->port_status[rhport] |= USB_PORT_STAT_CONNECTION
  | (1 << USB_PORT_FEAT_C_CONNECTION);

 switch (speed) {
 case 129:
  the_controller->port_status[rhport] |= USB_PORT_STAT_HIGH_SPEED;
  break;
 case 128:
  the_controller->port_status[rhport] |= USB_PORT_STAT_LOW_SPEED;
  break;
 default:
  break;
 }





 the_controller->pending_port = rhport;

 spin_unlock_irqrestore(&the_controller->lock, flags);

 usb_hcd_poll_rh_status(vhci_to_hcd(the_controller));
}
