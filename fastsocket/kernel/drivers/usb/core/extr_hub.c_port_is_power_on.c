
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_hub {int hdev; } ;


 unsigned int USB_PORT_STAT_POWER ;
 unsigned int USB_SS_PORT_STAT_POWER ;
 scalar_t__ hub_is_superspeed (int ) ;

__attribute__((used)) static int port_is_power_on(struct usb_hub *hub, unsigned portstatus)
{
 int ret = 0;

 if (hub_is_superspeed(hub->hdev)) {
  if (portstatus & USB_SS_PORT_STAT_POWER)
   ret = 1;
 } else {
  if (portstatus & USB_PORT_STAT_POWER)
   ret = 1;
 }

 return ret;
}
