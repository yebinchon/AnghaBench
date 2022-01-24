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
struct usb_skel {size_t bulk_in_size; int /*<<< orphan*/  kref; scalar_t__ bulk_out_endpointAddr; scalar_t__ bulk_in_endpointAddr; int /*<<< orphan*/  bulk_in_urb; int /*<<< orphan*/  bulk_in_buffer; struct usb_interface* interface; int /*<<< orphan*/  udev; int /*<<< orphan*/  bulk_in_completion; int /*<<< orphan*/  submitted; int /*<<< orphan*/  err_lock; int /*<<< orphan*/  io_mutex; int /*<<< orphan*/  limit_sem; } ;
struct usb_interface {int /*<<< orphan*/  minor; int /*<<< orphan*/  dev; struct usb_host_interface* cur_altsetting; } ;
struct TYPE_3__ {int bNumEndpoints; } ;
struct usb_host_interface {TYPE_2__* endpoint; TYPE_1__ desc; } ;
struct usb_endpoint_descriptor {scalar_t__ bEndpointAddress; int /*<<< orphan*/  wMaxPacketSize; } ;
struct usb_device_id {int dummy; } ;
struct TYPE_4__ {struct usb_endpoint_descriptor desc; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  WRITES_IN_FLIGHT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC5 (size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct usb_skel* FUNC8 (int,int /*<<< orphan*/ ) ; 
 size_t FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  skel_class ; 
 int /*<<< orphan*/  skel_delete ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC14 (struct usb_endpoint_descriptor*) ; 
 scalar_t__ FUNC15 (struct usb_endpoint_descriptor*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int FUNC17 (struct usb_interface*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (struct usb_interface*,struct usb_skel*) ; 

__attribute__((used)) static int FUNC19(struct usb_interface *interface,
		      const struct usb_device_id *id)
{
	struct usb_skel *dev;
	struct usb_host_interface *iface_desc;
	struct usb_endpoint_descriptor *endpoint;
	size_t buffer_size;
	int i;
	int retval = -ENOMEM;

	/* allocate memory for our device state and initialize it */
	dev = FUNC8(sizeof(*dev), GFP_KERNEL);
	if (!dev) {
		FUNC1("Out of memory");
		goto error;
	}
	FUNC6(&dev->kref);
	FUNC11(&dev->limit_sem, WRITES_IN_FLIGHT);
	FUNC10(&dev->io_mutex);
	FUNC12(&dev->err_lock);
	FUNC3(&dev->submitted);
	FUNC2(&dev->bulk_in_completion);

	dev->udev = FUNC16(FUNC4(interface));
	dev->interface = interface;

	/* set up the endpoint information */
	/* use only the first bulk-in and bulk-out endpoints */
	iface_desc = interface->cur_altsetting;
	for (i = 0; i < iface_desc->desc.bNumEndpoints; ++i) {
		endpoint = &iface_desc->endpoint[i].desc;

		if (!dev->bulk_in_endpointAddr &&
		    FUNC14(endpoint)) {
			/* we found a bulk in endpoint */
			buffer_size = FUNC9(endpoint->wMaxPacketSize);
			dev->bulk_in_size = buffer_size;
			dev->bulk_in_endpointAddr = endpoint->bEndpointAddress;
			dev->bulk_in_buffer = FUNC5(buffer_size, GFP_KERNEL);
			if (!dev->bulk_in_buffer) {
				FUNC1("Could not allocate bulk_in_buffer");
				goto error;
			}
			dev->bulk_in_urb = FUNC13(0, GFP_KERNEL);
			if (!dev->bulk_in_urb) {
				FUNC1("Could not allocate bulk_in_urb");
				goto error;
			}
		}

		if (!dev->bulk_out_endpointAddr &&
		    FUNC15(endpoint)) {
			/* we found a bulk out endpoint */
			dev->bulk_out_endpointAddr = endpoint->bEndpointAddress;
		}
	}
	if (!(dev->bulk_in_endpointAddr && dev->bulk_out_endpointAddr)) {
		FUNC1("Could not find both bulk-in and bulk-out endpoints");
		goto error;
	}

	/* save our data pointer in this interface device */
	FUNC18(interface, dev);

	/* we can register the device now, as it is ready */
	retval = FUNC17(interface, &skel_class);
	if (retval) {
		/* something prevented us from registering this driver */
		FUNC1("Not able to get a minor for this device.");
		FUNC18(interface, NULL);
		goto error;
	}

	/* let the user know what node this device is now attached to */
	FUNC0(&interface->dev,
		 "USB Skeleton device now attached to USBSkel-%d",
		 interface->minor);
	return 0;

error:
	if (dev)
		/* this frees allocated memory */
		FUNC7(&dev->kref, skel_delete);
	return retval;
}