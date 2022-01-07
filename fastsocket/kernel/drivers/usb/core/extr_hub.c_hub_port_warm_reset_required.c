
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct usb_hub {int hdev; } ;


 int USB_PORT_STAT_LINK_STATE ;
 int USB_SS_PORT_LS_COMP_MOD ;
 int USB_SS_PORT_LS_SS_INACTIVE ;
 scalar_t__ hub_is_superspeed (int ) ;

__attribute__((used)) static bool hub_port_warm_reset_required(struct usb_hub *hub, u16 portstatus)
{
 return hub_is_superspeed(hub->hdev) &&
  (((portstatus & USB_PORT_STAT_LINK_STATE) ==
    USB_SS_PORT_LS_SS_INACTIVE) ||
   ((portstatus & USB_PORT_STAT_LINK_STATE) ==
    USB_SS_PORT_LS_COMP_MOD)) ;
}
