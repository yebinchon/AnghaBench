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
struct usb_interface {int /*<<< orphan*/  dev; struct usb_host_interface* altsetting; } ;
struct usb_idmouse {int bulk_in_size; int present; scalar_t__ bulk_in_endpointAddr; int /*<<< orphan*/  bulk_in_buffer; int /*<<< orphan*/  orig_bi_size; struct usb_interface* interface; struct usb_device* udev; int /*<<< orphan*/  lock; } ;
struct TYPE_3__ {int bInterfaceClass; } ;
struct usb_host_interface {TYPE_2__* endpoint; TYPE_1__ desc; } ;
struct usb_endpoint_descriptor {scalar_t__ bEndpointAddress; int /*<<< orphan*/  wMaxPacketSize; } ;
struct usb_device_id {int dummy; } ;
struct usb_device {int dummy; } ;
struct TYPE_4__ {struct usb_endpoint_descriptor desc; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRIVER_DESC ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ IMGSIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  idmouse_class ; 
 int /*<<< orphan*/  FUNC2 (struct usb_idmouse*) ; 
 struct usb_device* FUNC3 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int /*<<< orphan*/ ) ; 
 struct usb_idmouse* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (struct usb_endpoint_descriptor*) ; 
 int FUNC9 (struct usb_interface*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct usb_interface*,struct usb_idmouse*) ; 

__attribute__((used)) static int FUNC11(struct usb_interface *interface,
				const struct usb_device_id *id)
{
	struct usb_device *udev = FUNC3(interface);
	struct usb_idmouse *dev;
	struct usb_host_interface *iface_desc;
	struct usb_endpoint_descriptor *endpoint;
	int result;

	/* check if we have gotten the data or the hid interface */
	iface_desc = &interface->altsetting[0];
	if (iface_desc->desc.bInterfaceClass != 0x0A)
		return -ENODEV;

	/* allocate memory for our device state and initialize it */
	dev = FUNC5(sizeof(*dev), GFP_KERNEL);
	if (dev == NULL)
		return -ENOMEM;

	FUNC7(&dev->lock);
	dev->udev = udev;
	dev->interface = interface;

	/* set up the endpoint information - use only the first bulk-in endpoint */
	endpoint = &iface_desc->endpoint[0].desc;
	if (!dev->bulk_in_endpointAddr && FUNC8(endpoint)) {
		/* we found a bulk in endpoint */
		dev->orig_bi_size = FUNC6(endpoint->wMaxPacketSize);
		dev->bulk_in_size = 0x200; /* works _much_ faster */
		dev->bulk_in_endpointAddr = endpoint->bEndpointAddress;
		dev->bulk_in_buffer =
			FUNC4(IMGSIZE + dev->bulk_in_size, GFP_KERNEL);

		if (!dev->bulk_in_buffer) {
			FUNC1("Unable to allocate input buffer.");
			FUNC2(dev);
			return -ENOMEM;
		}
	}

	if (!(dev->bulk_in_endpointAddr)) {
		FUNC1("Unable to find bulk-in endpoint.");
		FUNC2(dev);
		return -ENODEV;
	}
	/* allow device read, write and ioctl */
	dev->present = 1;

	/* we can register the device now, as it is ready */
	FUNC10(interface, dev);
	result = FUNC9(interface, &idmouse_class);
	if (result) {
		/* something prevented us from registering this device */
		FUNC1("Unble to allocate minor number.");
		FUNC10(interface, NULL);
		FUNC2(dev);
		return result;
	}

	/* be noisy */
	FUNC0(&interface->dev,"%s now attached\n",DRIVER_DESC);

	return 0;
}