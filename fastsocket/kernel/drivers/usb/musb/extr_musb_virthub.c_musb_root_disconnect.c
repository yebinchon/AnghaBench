
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int is_a_peripheral; } ;
struct musb {int port1_status; TYPE_3__* xceiv; scalar_t__ is_active; TYPE_2__ g; } ;
struct TYPE_6__ {int state; TYPE_1__* host; } ;
struct TYPE_4__ {int b_hnp_enable; } ;


 int DBG (int,char*,int ) ;

 int OTG_STATE_A_PERIPHERAL ;

 int OTG_STATE_A_WAIT_BCON ;

 int OTG_STATE_B_IDLE ;
 int USB_PORT_FEAT_C_CONNECTION ;
 int USB_PORT_FEAT_POWER ;
 int is_otg_enabled (struct musb*) ;
 int musb_to_hcd (struct musb*) ;
 int otg_state_string (struct musb*) ;
 int usb_hcd_poll_rh_status (int ) ;

void musb_root_disconnect(struct musb *musb)
{
 musb->port1_status = (1 << USB_PORT_FEAT_POWER)
   | (1 << USB_PORT_FEAT_C_CONNECTION);

 usb_hcd_poll_rh_status(musb_to_hcd(musb));
 musb->is_active = 0;

 switch (musb->xceiv->state) {
 case 129:
 case 130:
  musb->xceiv->state = OTG_STATE_A_WAIT_BCON;
  musb->is_active = 0;
  break;
 case 128:
  musb->xceiv->state = OTG_STATE_B_IDLE;
  break;
 default:
  DBG(1, "host disconnect (%s)\n", otg_state_string(musb));
 }
}
