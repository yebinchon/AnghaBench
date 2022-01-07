
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_hub {int intfdev; int hdev; } ;






 int USB_PORT_FEAT_INDICATOR ;
 int dev_dbg (int ,char*,int,int ,int) ;
 int set_port_feature (int ,int,int ) ;

__attribute__((used)) static void set_port_led(
 struct usb_hub *hub,
 int port1,
 int selector
)
{
 int status = set_port_feature(hub->hdev, (selector << 8) | port1,
   USB_PORT_FEAT_INDICATOR);
 if (status < 0)
  dev_dbg (hub->intfdev,
   "port %d indicator %s status %d\n",
   port1,
   ({ char *s; switch (selector) {
   case 131: s = "amber"; break;
   case 129: s = "green"; break;
   case 128: s = "off"; break;
   case 130: s = "auto"; break;
   default: s = "??"; break;
   }; s; }),
   status);
}
