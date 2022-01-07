
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u16 ;
struct usb_hub {int mA_per_port; struct usb_device* hdev; int leds; int * indicator; scalar_t__ has_indicators; int removed_bits; int change_bits; TYPE_2__* descriptor; struct device* intfdev; } ;
struct usb_hcd {TYPE_1__* driver; } ;
struct TYPE_8__ {scalar_t__ bDeviceClass; int bcdUSB; } ;
struct device {int dummy; } ;
struct usb_device {scalar_t__ state; int bus_mA; scalar_t__ speed; scalar_t__ devnum; scalar_t__ parent; struct usb_device** children; TYPE_3__ descriptor; struct device dev; int wusb; scalar_t__ level; TYPE_4__* bus; scalar_t__ persist_enabled; } ;
struct TYPE_9__ {scalar_t__ is_b_host; } ;
struct TYPE_7__ {int wHubCharacteristics; } ;
struct TYPE_6__ {int (* relinquish_port ) (struct usb_hcd*,int) ;int (* port_handed_over ) (struct usb_hcd*,int) ;} ;


 int ENODEV ;
 int ENOTCONN ;
 int ENOTSUPP ;
 unsigned int HUB_CHAR_LPSM ;
 int HUB_LED_AUTO ;
 int INDICATOR_AMBER_BLINK ;
 int INDICATOR_AUTO ;
 int SET_CONFIG_TRIES ;
 scalar_t__ USB_CLASS_HUB ;
 int USB_DEVICE_SELF_POWERED ;
 int USB_PORT_FEAT_POWER ;
 int USB_PORT_STAT_CONNECTION ;
 int USB_PORT_STAT_C_CONNECTION ;
 int USB_PORT_STAT_C_ENABLE ;
 int USB_PORT_STAT_ENABLE ;
 int USB_RECIP_DEVICE ;
 scalar_t__ USB_SPEED_FULL ;
 scalar_t__ USB_SPEED_SUPER ;
 scalar_t__ USB_SPEED_UNKNOWN ;
 scalar_t__ USB_STATE_NOTATTACHED ;
 int USB_STATE_POWERED ;
 scalar_t__ USB_STATE_SUSPENDED ;
 struct usb_hcd* bus_to_hcd (TYPE_4__*) ;
 int check_highspeed (struct usb_hub*,struct usb_device*,int) ;
 int choose_devnum (struct usb_device*) ;
 int clear_bit (int,int ) ;
 int dev_dbg (struct device*,char*,int,...) ;
 int dev_err (struct device*,char*,...) ;
 int device_state_lock ;
 scalar_t__ highspeed_hubs ;
 int hub_free_dev (struct usb_device*) ;
 scalar_t__ hub_is_superspeed (struct usb_device*) ;
 int hub_is_wusb (struct usb_hub*) ;
 int hub_port_debounce (struct usb_hub*,int) ;
 int hub_port_disable (struct usb_hub*,int,int) ;
 int hub_port_init (struct usb_hub*,struct usb_device*,int,int) ;
 int hub_power_remaining (struct usb_hub*) ;
 int le16_to_cpu (int ) ;
 int le16_to_cpus (int*) ;
 int port_is_power_on (struct usb_hub*,int) ;
 int portspeed (struct usb_hub*,int) ;
 scalar_t__ printk_ratelimit () ;
 int release_devnum (struct usb_device*) ;
 int remote_wakeup (struct usb_device*) ;
 int schedule_delayed_work (int *,int ) ;
 int set_port_feature (struct usb_device*,int,int ) ;
 int set_port_led (struct usb_hub*,int,int ) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int stub1 (struct usb_hcd*,int) ;
 int stub2 (struct usb_hcd*,int) ;
 scalar_t__ test_bit (int,int ) ;
 struct usb_device* usb_alloc_dev (struct usb_device*,TYPE_4__*,int) ;
 int usb_disconnect (struct usb_device**) ;
 int usb_ep0_reinit (struct usb_device*) ;
 int usb_get_status (struct usb_device*,int ,int ,int*) ;
 int usb_lock_device (struct usb_device*) ;
 int usb_new_device (struct usb_device*) ;
 int usb_put_dev (struct usb_device*) ;
 int usb_set_device_state (struct usb_device*,int ) ;
 int usb_unlock_device (struct usb_device*) ;

__attribute__((used)) static void hub_port_connect_change(struct usb_hub *hub, int port1,
     u16 portstatus, u16 portchange)
{
 struct usb_device *hdev = hub->hdev;
 struct device *hub_dev = hub->intfdev;
 struct usb_hcd *hcd = bus_to_hcd(hdev->bus);
 unsigned wHubCharacteristics =
   le16_to_cpu(hub->descriptor->wHubCharacteristics);
 struct usb_device *udev;
 int status, i;

 dev_dbg (hub_dev,
  "port %d, status %04x, change %04x, %s\n",
  port1, portstatus, portchange, portspeed(hub, portstatus));

 if (hub->has_indicators) {
  set_port_led(hub, port1, HUB_LED_AUTO);
  hub->indicator[port1-1] = INDICATOR_AUTO;
 }
 udev = hdev->children[port1-1];
 if ((portstatus & USB_PORT_STAT_CONNECTION) && udev &&
   udev->state != USB_STATE_NOTATTACHED) {
  usb_lock_device(udev);
  if (portstatus & USB_PORT_STAT_ENABLE) {
   status = 0;
  } else {
   status = -ENODEV;
  }
  usb_unlock_device(udev);

  if (status == 0) {
   clear_bit(port1, hub->change_bits);
   return;
  }
 }


 if (udev)
  usb_disconnect(&hdev->children[port1-1]);
 clear_bit(port1, hub->change_bits);




 if (!(portstatus & USB_PORT_STAT_CONNECTION) ||
   (portchange & USB_PORT_STAT_C_CONNECTION))
  clear_bit(port1, hub->removed_bits);

 if (portchange & (USB_PORT_STAT_C_CONNECTION |
    USB_PORT_STAT_C_ENABLE)) {
  status = hub_port_debounce(hub, port1);
  if (status < 0) {
   if (printk_ratelimit())
    dev_err(hub_dev, "connect-debounce failed, "
      "port %d disabled\n", port1);
   portstatus &= ~USB_PORT_STAT_CONNECTION;
  } else {
   portstatus = status;
  }
 }




 if (!(portstatus & USB_PORT_STAT_CONNECTION) ||
   test_bit(port1, hub->removed_bits)) {


  if ((wHubCharacteristics & HUB_CHAR_LPSM) < 2
    && !port_is_power_on(hub, portstatus))
   set_port_feature(hdev, port1, USB_PORT_FEAT_POWER);

  if (portstatus & USB_PORT_STAT_ENABLE)
     goto done;
  return;
 }

 for (i = 0; i < SET_CONFIG_TRIES; i++) {




  udev = usb_alloc_dev(hdev, hdev->bus, port1);
  if (!udev) {
   dev_err (hub_dev,
    "couldn't allocate port %d usb_device\n",
    port1);
   goto done;
  }

  usb_set_device_state(udev, USB_STATE_POWERED);
   udev->bus_mA = hub->mA_per_port;
  udev->level = hdev->level + 1;
  udev->wusb = hub_is_wusb(hub);


  if (hub_is_superspeed(hub->hdev))
   udev->speed = USB_SPEED_SUPER;
  else
   udev->speed = USB_SPEED_UNKNOWN;

  choose_devnum(udev);
  if (udev->devnum <= 0) {
   status = -ENOTCONN;
   goto loop;
  }


  status = hub_port_init(hub, udev, port1, i);
  if (status < 0)
   goto loop;







  if (udev->descriptor.bDeviceClass == USB_CLASS_HUB
    && udev->bus_mA <= 100) {
   u16 devstat;

   status = usb_get_status(udev, USB_RECIP_DEVICE, 0,
     &devstat);
   if (status < 2) {
    dev_dbg(&udev->dev, "get status %d ?\n", status);
    goto loop_disable;
   }
   le16_to_cpus(&devstat);
   if ((devstat & (1 << USB_DEVICE_SELF_POWERED)) == 0) {
    dev_err(&udev->dev,
     "can't connect bus-powered hub "
     "to this port\n");
    if (hub->has_indicators) {
     hub->indicator[port1-1] =
      INDICATOR_AMBER_BLINK;
     schedule_delayed_work (&hub->leds, 0);
    }
    status = -ENOTCONN;
    goto loop_disable;
   }
  }


  if (le16_to_cpu(udev->descriptor.bcdUSB) >= 0x0200
    && udev->speed == USB_SPEED_FULL
    && highspeed_hubs != 0)
   check_highspeed (hub, udev, port1);





  status = 0;





  spin_lock_irq(&device_state_lock);
  if (hdev->state == USB_STATE_NOTATTACHED)
   status = -ENOTCONN;
  else
   hdev->children[port1-1] = udev;
  spin_unlock_irq(&device_state_lock);


  if (!status) {
   status = usb_new_device(udev);
   if (status) {
    spin_lock_irq(&device_state_lock);
    hdev->children[port1-1] = ((void*)0);
    spin_unlock_irq(&device_state_lock);
   }
  }

  if (status)
   goto loop_disable;

  status = hub_power_remaining(hub);
  if (status)
   dev_dbg(hub_dev, "%dmA power budget left\n", status);

  return;

loop_disable:
  hub_port_disable(hub, port1, 1);
loop:
  usb_ep0_reinit(udev);
  release_devnum(udev);
  hub_free_dev(udev);
  usb_put_dev(udev);
  if ((status == -ENOTCONN) || (status == -ENOTSUPP))
   break;
 }
 if (hub->hdev->parent ||
   !hcd->driver->port_handed_over ||
   !(hcd->driver->port_handed_over)(hcd, port1))
  dev_err(hub_dev, "unable to enumerate USB device on port %d\n",
    port1);

done:
 hub_port_disable(hub, port1, 1);
 if (hcd->driver->relinquish_port && !hub->hdev->parent)
  hcd->driver->relinquish_port(hcd, port1);
}
