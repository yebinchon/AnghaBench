
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct usb_hub {int intfdev; int hdev; } ;
struct usb_device {int speed; } ;


 int EBUSY ;
 int ENOTCONN ;
 int HUB_BH_RESET_TIME ;
 unsigned int HUB_LONG_RESET_TIME ;
 int HUB_RESET_TIMEOUT ;
 int HUB_SHORT_RESET_TIME ;
 int USB_PORT_FEAT_C_CONNECTION ;
 int USB_PORT_FEAT_C_PORT_LINK_STATE ;
 int USB_PORT_FEAT_C_RESET ;
 int USB_PORT_STAT_CONNECTION ;
 int USB_PORT_STAT_C_CONNECTION ;
 int USB_PORT_STAT_C_LINK_STATE ;
 int USB_PORT_STAT_C_RESET ;
 int USB_PORT_STAT_ENABLE ;
 int USB_PORT_STAT_HIGH_SPEED ;
 int USB_PORT_STAT_LOW_SPEED ;
 int USB_PORT_STAT_RESET ;
 int USB_SPEED_FULL ;
 int USB_SPEED_HIGH ;
 int USB_SPEED_LOW ;
 int USB_SPEED_SUPER ;
 int USB_SPEED_WIRELESS ;
 int clear_port_feature (int ,int,int ) ;
 int dev_dbg (int ,char*,int,...) ;
 scalar_t__ hub_is_superspeed (int ) ;
 scalar_t__ hub_is_wusb (struct usb_hub*) ;
 int hub_port_reset (struct usb_hub*,int,struct usb_device*,int ,int) ;
 int hub_port_status (struct usb_hub*,int,int*,int*) ;
 scalar_t__ hub_port_warm_reset_required (struct usb_hub*,int) ;
 int msleep (unsigned int) ;

__attribute__((used)) static int hub_port_wait_reset(struct usb_hub *hub, int port1,
   struct usb_device *udev, unsigned int delay, bool warm)
{
 int delay_time, ret;
 u16 portstatus;
 u16 portchange;

 for (delay_time = 0;
   delay_time < HUB_RESET_TIMEOUT;
   delay_time += delay) {

  msleep(delay);


  ret = hub_port_status(hub, port1, &portstatus, &portchange);
  if (ret < 0)
   return ret;


  if ((portstatus & USB_PORT_STAT_RESET))
   goto delay;





  if (!warm) {
   if (hub_port_warm_reset_required(hub, portstatus)) {
    int ret;

    if ((portchange & USB_PORT_STAT_C_CONNECTION))
     clear_port_feature(hub->hdev, port1,
       USB_PORT_FEAT_C_CONNECTION);
    if (portchange & USB_PORT_STAT_C_LINK_STATE)
     clear_port_feature(hub->hdev, port1,
       USB_PORT_FEAT_C_PORT_LINK_STATE);
    if (portchange & USB_PORT_STAT_C_RESET)
     clear_port_feature(hub->hdev, port1,
       USB_PORT_FEAT_C_RESET);
    dev_dbg(hub->intfdev, "hot reset failed, warm reset port %d\n",
      port1);
    ret = hub_port_reset(hub, port1,
      udev, HUB_BH_RESET_TIME,
      1);
    if ((portchange & USB_PORT_STAT_C_CONNECTION))
     clear_port_feature(hub->hdev, port1,
       USB_PORT_FEAT_C_CONNECTION);
    return ret;
   }

   if (!(portstatus & USB_PORT_STAT_CONNECTION))
    return -ENOTCONN;


   if ((portchange & USB_PORT_STAT_C_CONNECTION))
    return -ENOTCONN;

   if ((portstatus & USB_PORT_STAT_ENABLE)) {
    if (hub_is_wusb(hub))
     udev->speed = USB_SPEED_WIRELESS;
    else if (hub_is_superspeed(hub->hdev))
     udev->speed = USB_SPEED_SUPER;
    else if (portstatus & USB_PORT_STAT_HIGH_SPEED)
     udev->speed = USB_SPEED_HIGH;
    else if (portstatus & USB_PORT_STAT_LOW_SPEED)
     udev->speed = USB_SPEED_LOW;
    else
     udev->speed = USB_SPEED_FULL;
    return 0;
   }
  } else {
   if (!(portstatus & USB_PORT_STAT_CONNECTION) ||
     hub_port_warm_reset_required(hub,
      portstatus))
    return -ENOTCONN;

   return 0;
  }

delay:

  if (delay_time >= 2 * HUB_SHORT_RESET_TIME)
   delay = HUB_LONG_RESET_TIME;

  dev_dbg (hub->intfdev,
   "port %d not %sreset yet, waiting %dms\n",
   port1, warm ? "warm " : "", delay);
 }

 return -EBUSY;
}
