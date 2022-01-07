
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct usb_interface {int needs_remote_wakeup; int dev; struct usb_host_interface* cur_altsetting; } ;
struct usb_hub {int init_work; int leds; struct usb_device* hdev; int * intfdev; int event_list; int kref; } ;
struct TYPE_3__ {int bInterfaceSubClass; int bNumEndpoints; } ;
struct usb_host_interface {TYPE_2__* endpoint; TYPE_1__ desc; } ;
struct usb_endpoint_descriptor {int dummy; } ;
struct usb_device_id {int dummy; } ;
struct usb_device {scalar_t__ level; scalar_t__ speed; scalar_t__ parent; } ;
struct TYPE_4__ {struct usb_endpoint_descriptor desc; } ;


 int E2BIG ;
 int EIO ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_DELAYED_WORK (int *,int *) ;
 int INIT_LIST_HEAD (int *) ;
 scalar_t__ MAX_TOPO_LEVEL ;
 scalar_t__ USB_SPEED_HIGH ;
 int dev_dbg (int *,char*) ;
 int dev_err (int *,char*) ;
 int dev_info (int *,char*) ;
 int dev_warn (int *,char*) ;
 int highspeed_hubs ;
 scalar_t__ hub_configure (struct usb_hub*,struct usb_endpoint_descriptor*) ;
 int hub_disconnect (struct usb_interface*) ;
 struct usb_device* interface_to_usbdev (struct usb_interface*) ;
 int kref_init (int *) ;
 struct usb_hub* kzalloc (int,int ) ;
 int * led_work ;
 int usb_endpoint_is_int_in (struct usb_endpoint_descriptor*) ;
 int usb_get_intf (struct usb_interface*) ;
 int usb_set_intfdata (struct usb_interface*,struct usb_hub*) ;

__attribute__((used)) static int hub_probe(struct usb_interface *intf, const struct usb_device_id *id)
{
 struct usb_host_interface *desc;
 struct usb_endpoint_descriptor *endpoint;
 struct usb_device *hdev;
 struct usb_hub *hub;

 desc = intf->cur_altsetting;
 hdev = interface_to_usbdev(intf);

 if (hdev->level == MAX_TOPO_LEVEL) {
  dev_err(&intf->dev,
   "Unsupported bus topology: hub nested too deep\n");
  return -E2BIG;
 }
 if ((desc->desc.bInterfaceSubClass != 0) &&
     (desc->desc.bInterfaceSubClass != 1)) {
descriptor_error:
  dev_err (&intf->dev, "bad descriptor, ignoring hub\n");
  return -EIO;
 }


 if (desc->desc.bNumEndpoints != 1)
  goto descriptor_error;

 endpoint = &desc->endpoint[0].desc;


 if (!usb_endpoint_is_int_in(endpoint))
  goto descriptor_error;


 dev_info (&intf->dev, "USB hub found\n");

 hub = kzalloc(sizeof(*hub), GFP_KERNEL);
 if (!hub) {
  dev_dbg (&intf->dev, "couldn't kmalloc hub struct\n");
  return -ENOMEM;
 }

 kref_init(&hub->kref);
 INIT_LIST_HEAD(&hub->event_list);
 hub->intfdev = &intf->dev;
 hub->hdev = hdev;
 INIT_DELAYED_WORK(&hub->leds, led_work);
 INIT_DELAYED_WORK(&hub->init_work, ((void*)0));
 usb_get_intf(intf);

 usb_set_intfdata (intf, hub);
 intf->needs_remote_wakeup = 1;

 if (hdev->speed == USB_SPEED_HIGH)
  highspeed_hubs++;

 if (hub_configure(hub, endpoint) >= 0)
  return 0;

 hub_disconnect (intf);
 return -ENODEV;
}
