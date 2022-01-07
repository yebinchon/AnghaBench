
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct usb_hub {int intfdev; struct usb_device* hdev; } ;
struct usb_device {scalar_t__ state; struct usb_device** children; } ;


 int ENODEV ;
 int USB_PORT_FEAT_C_SUSPEND ;
 int USB_PORT_STAT_C_SUSPEND ;
 int USB_PORT_STAT_LINK_STATE ;
 int USB_SS_PORT_LS_U0 ;
 scalar_t__ USB_STATE_SUSPENDED ;
 int clear_port_feature (struct usb_device*,unsigned int,int ) ;
 int dev_dbg (int ,char*,unsigned int,int) ;
 int hub_is_superspeed (struct usb_device*) ;
 int hub_port_disable (struct usb_hub*,unsigned int,int) ;
 int msleep (int) ;
 int remote_wakeup (struct usb_device*) ;
 int usb_lock_device (struct usb_device*) ;
 int usb_unlock_device (struct usb_device*) ;

__attribute__((used)) static int hub_handle_remote_wakeup(struct usb_hub *hub, unsigned int port,
  u16 portstatus, u16 portchange)
{
 struct usb_device *hdev;
 struct usb_device *udev;
 int connect_change = 0;
 int ret;

 hdev = hub->hdev;
 udev = hdev->children[port-1];
 if (!hub_is_superspeed(hdev)) {
  if (!(portchange & USB_PORT_STAT_C_SUSPEND))
   return 0;
  clear_port_feature(hdev, port, USB_PORT_FEAT_C_SUSPEND);
 } else {
  if (!udev || udev->state != USB_STATE_SUSPENDED ||
     (portstatus & USB_PORT_STAT_LINK_STATE) !=
     USB_SS_PORT_LS_U0)
   return 0;
 }

 if (udev) {

  msleep(10);

  usb_lock_device(udev);
  ret = remote_wakeup(udev);
  usb_unlock_device(udev);
  if (ret < 0)
   connect_change = 1;
 } else {
  ret = -ENODEV;
  hub_port_disable(hub, port, 1);
 }
 dev_dbg(hub->intfdev, "resume on port %d, status %d\n",
   port, ret);
 return connect_change;
}
