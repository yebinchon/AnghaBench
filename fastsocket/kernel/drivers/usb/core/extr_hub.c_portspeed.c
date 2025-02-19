
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_hub {int hdev; } ;


 int USB_PORT_FEAT_HIGHSPEED ;
 int USB_PORT_FEAT_LOWSPEED ;
 scalar_t__ hub_is_superspeed (int ) ;

__attribute__((used)) static inline char *portspeed(struct usb_hub *hub, int portstatus)
{
 if (hub_is_superspeed(hub->hdev))
  return "5.0 Gb/s";
 if (portstatus & (1 << USB_PORT_FEAT_HIGHSPEED))
      return "480 Mb/s";
 else if (portstatus & (1 << USB_PORT_FEAT_LOWSPEED))
  return "1.5 Mb/s";
 else
  return "12 Mb/s";
}
