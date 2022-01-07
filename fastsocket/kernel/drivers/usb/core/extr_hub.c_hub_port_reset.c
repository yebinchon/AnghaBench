
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct usb_hub {int hdev; int intfdev; } ;
struct usb_device {int dummy; } ;


 int EINVAL ;
 int ENODEV ;
 int ENOTCONN ;
 unsigned int HUB_LONG_RESET_TIME ;
 int PORT_RESET_TRIES ;
 int USB_PORT_FEAT_BH_PORT_RESET ;
 int USB_PORT_FEAT_RESET ;
 int dev_dbg (int ,char*,int,...) ;
 int dev_err (int ,char*,...) ;
 int down_read (int *) ;
 int ehci_cf_port_reset_rwsem ;
 int hub_is_superspeed (int ) ;
 int hub_port_finish_reset (struct usb_hub*,int,struct usb_device*,int*,int) ;
 int hub_port_status (struct usb_hub*,int,int *,int *) ;
 int hub_port_wait_reset (struct usb_hub*,int,struct usb_device*,unsigned int,int) ;
 scalar_t__ hub_port_warm_reset_required (struct usb_hub*,int ) ;
 int set_port_feature (int ,int,int ) ;
 int up_read (int *) ;

__attribute__((used)) static int hub_port_reset(struct usb_hub *hub, int port1,
   struct usb_device *udev, unsigned int delay, bool warm)
{
 int i, status;
 u16 portchange, portstatus;

 if (!hub_is_superspeed(hub->hdev)) {
  if (warm) {
   dev_err(hub->intfdev, "only USB3 hub support "
      "warm reset\n");
   return -EINVAL;
  }



  down_read(&ehci_cf_port_reset_rwsem);
 } else if (!warm) {




  status = hub_port_status(hub, port1,
     &portstatus, &portchange);
  if (status < 0)
   goto done;

  if (hub_port_warm_reset_required(hub, portstatus))
   warm = 1;
 }


 for (i = 0; i < PORT_RESET_TRIES; i++) {
  status = set_port_feature(hub->hdev, port1, (warm ?
     USB_PORT_FEAT_BH_PORT_RESET :
     USB_PORT_FEAT_RESET));
  if (status) {
   dev_err(hub->intfdev,
     "cannot %sreset port %d (err = %d)\n",
     warm ? "warm " : "", port1, status);
  } else {
   status = hub_port_wait_reset(hub, port1, udev, delay,
        warm);
   if (status && status != -ENOTCONN)
    dev_dbg(hub->intfdev,
      "port_wait_reset: err = %d\n",
      status);
  }


  if (status == 0 || status == -ENOTCONN || status == -ENODEV) {
   hub_port_finish_reset(hub, port1, udev, &status, warm);
   goto done;
  }

  dev_dbg (hub->intfdev,
   "port %d not enabled, trying %sreset again...\n",
   port1, warm ? "warm " : "");
  delay = HUB_LONG_RESET_TIME;
 }

 dev_err (hub->intfdev,
  "Cannot enable port %i.  Maybe the USB cable is bad?\n",
  port1);

done:
 if (!hub_is_superspeed(hub->hdev))
  up_read(&ehci_cf_port_reset_rwsem);

 return status;
}
