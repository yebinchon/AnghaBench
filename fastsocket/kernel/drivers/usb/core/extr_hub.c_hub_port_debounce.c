
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u16 ;
struct usb_hub {int intfdev; int hdev; } ;


 int ETIMEDOUT ;
 int HUB_DEBOUNCE_STABLE ;
 scalar_t__ HUB_DEBOUNCE_STEP ;
 int HUB_DEBOUNCE_TIMEOUT ;
 int USB_PORT_FEAT_C_CONNECTION ;
 unsigned int USB_PORT_STAT_CONNECTION ;
 unsigned int USB_PORT_STAT_C_CONNECTION ;
 int clear_port_feature (int ,int,int ) ;
 int dev_dbg (int ,char*,int,int,int,unsigned int) ;
 int hub_port_status (struct usb_hub*,int,unsigned int*,unsigned int*) ;
 int msleep (scalar_t__) ;

__attribute__((used)) static int hub_port_debounce(struct usb_hub *hub, int port1)
{
 int ret;
 int total_time, stable_time = 0;
 u16 portchange, portstatus;
 unsigned connection = 0xffff;

 for (total_time = 0; ; total_time += HUB_DEBOUNCE_STEP) {
  ret = hub_port_status(hub, port1, &portstatus, &portchange);
  if (ret < 0)
   return ret;

  if (!(portchange & USB_PORT_STAT_C_CONNECTION) &&
       (portstatus & USB_PORT_STAT_CONNECTION) == connection) {
   stable_time += HUB_DEBOUNCE_STEP;
   if (stable_time >= HUB_DEBOUNCE_STABLE)
    break;
  } else {
   stable_time = 0;
   connection = portstatus & USB_PORT_STAT_CONNECTION;
  }

  if (portchange & USB_PORT_STAT_C_CONNECTION) {
   clear_port_feature(hub->hdev, port1,
     USB_PORT_FEAT_C_CONNECTION);
  }

  if (total_time >= HUB_DEBOUNCE_TIMEOUT)
   break;
  msleep(HUB_DEBOUNCE_STEP);
 }

 dev_dbg (hub->intfdev,
  "debounce: port %d: total %dms stable %dms status 0x%x\n",
  port1, total_time, stable_time, portstatus);

 if (stable_time < HUB_DEBOUNCE_STABLE)
  return -ETIMEDOUT;
 return portstatus;
}
