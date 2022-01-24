#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct usb_interface {int needs_remote_wakeup; int /*<<< orphan*/  dev; struct usb_host_interface* cur_altsetting; } ;
struct usb_hub {int /*<<< orphan*/  init_work; int /*<<< orphan*/  leds; struct usb_device* hdev; int /*<<< orphan*/ * intfdev; int /*<<< orphan*/  event_list; int /*<<< orphan*/  kref; } ;
struct TYPE_3__ {int bInterfaceSubClass; int bNumEndpoints; } ;
struct usb_host_interface {TYPE_2__* endpoint; TYPE_1__ desc; } ;
struct usb_endpoint_descriptor {int dummy; } ;
struct usb_device_id {int dummy; } ;
struct usb_device {scalar_t__ level; scalar_t__ speed; scalar_t__ parent; } ;
struct TYPE_4__ {struct usb_endpoint_descriptor desc; } ;

/* Variables and functions */
 int E2BIG ; 
 int EIO ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ MAX_TOPO_LEVEL ; 
 scalar_t__ USB_SPEED_HIGH ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  highspeed_hubs ; 
 scalar_t__ FUNC6 (struct usb_hub*,struct usb_endpoint_descriptor*) ; 
 int /*<<< orphan*/  FUNC7 (struct usb_interface*) ; 
 struct usb_device* FUNC8 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 struct usb_hub* FUNC10 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * led_work ; 
 int /*<<< orphan*/  FUNC11 (struct usb_endpoint_descriptor*) ; 
 int /*<<< orphan*/  FUNC12 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC13 (struct usb_interface*,struct usb_hub*) ; 

__attribute__((used)) static int FUNC14(struct usb_interface *intf, const struct usb_device_id *id)
{
	struct usb_host_interface *desc;
	struct usb_endpoint_descriptor *endpoint;
	struct usb_device *hdev;
	struct usb_hub *hub;

	desc = intf->cur_altsetting;
	hdev = FUNC8(intf);

	if (hdev->level == MAX_TOPO_LEVEL) {
		FUNC3(&intf->dev,
			"Unsupported bus topology: hub nested too deep\n");
		return -E2BIG;
	}

#ifdef	CONFIG_USB_OTG_BLACKLIST_HUB
	if (hdev->parent) {
		dev_warn(&intf->dev, "ignoring external hub\n");
		return -ENODEV;
	}
#endif

	/* Some hubs have a subclass of 1, which AFAICT according to the */
	/*  specs is not defined, but it works */
	if ((desc->desc.bInterfaceSubClass != 0) &&
	    (desc->desc.bInterfaceSubClass != 1)) {
descriptor_error:
		FUNC3 (&intf->dev, "bad descriptor, ignoring hub\n");
		return -EIO;
	}

	/* Multiple endpoints? What kind of mutant ninja-hub is this? */
	if (desc->desc.bNumEndpoints != 1)
		goto descriptor_error;

	endpoint = &desc->endpoint[0].desc;

	/* If it's not an interrupt in endpoint, we'd better punt! */
	if (!FUNC11(endpoint))
		goto descriptor_error;

	/* We found a hub */
	FUNC4 (&intf->dev, "USB hub found\n");

	hub = FUNC10(sizeof(*hub), GFP_KERNEL);
	if (!hub) {
		FUNC2 (&intf->dev, "couldn't kmalloc hub struct\n");
		return -ENOMEM;
	}

	FUNC9(&hub->kref);
	FUNC1(&hub->event_list);
	hub->intfdev = &intf->dev;
	hub->hdev = hdev;
	FUNC0(&hub->leds, led_work);
	FUNC0(&hub->init_work, NULL);
	FUNC12(intf);

	FUNC13 (intf, hub);
	intf->needs_remote_wakeup = 1;

	if (hdev->speed == USB_SPEED_HIGH)
		highspeed_hubs++;

	if (FUNC6(hub, endpoint) >= 0)
		return 0;

	FUNC7 (intf);
	return -ENODEV;
}