
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_hub {int intfdev; struct usb_device* hdev; int error; } ;
struct usb_device {scalar_t__* children; } ;


 int USB_PORT_FEAT_ENABLE ;
 int USB_STATE_NOTATTACHED ;
 int clear_port_feature (struct usb_device*,int,int ) ;
 int dev_err (int ,char*,int,int) ;
 scalar_t__ hub_is_superspeed (struct usb_device*) ;
 int hub_usb3_port_disable (struct usb_hub*,int) ;
 int usb_set_device_state (scalar_t__,int ) ;

__attribute__((used)) static int hub_port_disable(struct usb_hub *hub, int port1, int set_state)
{
 struct usb_device *hdev = hub->hdev;
 int ret = 0;

 if (hdev->children[port1-1] && set_state)
  usb_set_device_state(hdev->children[port1-1],
    USB_STATE_NOTATTACHED);
 if (!hub->error) {
  if (hub_is_superspeed(hub->hdev))
   ret = hub_usb3_port_disable(hub, port1);
  else
   ret = clear_port_feature(hdev, port1,
     USB_PORT_FEAT_ENABLE);
 }
 if (ret)
  dev_err(hub->intfdev, "cannot disable port %d (err = %d)\n",
    port1, ret);
 return ret;
}
