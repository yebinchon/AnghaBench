#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct usb_interface {scalar_t__ minor; int /*<<< orphan*/  dev; struct usb_host_interface* cur_altsetting; } ;
struct TYPE_4__ {int bNumEndpoints; } ;
struct usb_host_interface {TYPE_2__* endpoint; TYPE_1__ desc; } ;
struct usb_endpoint_descriptor {scalar_t__ bInterval; int /*<<< orphan*/  wMaxPacketSize; } ;
struct usb_device_id {int dummy; } ;
struct TYPE_6__ {void* bMaxPacketSize0; } ;
struct usb_device {TYPE_3__ descriptor; } ;
struct usb_alphatrack {int interrupt_in_endpoint_size; int interrupt_out_endpoint_size; int /*<<< orphan*/  writes_pending; struct usb_endpoint_descriptor* interrupt_out_endpoint; scalar_t__ interrupt_out_interval; struct usb_endpoint_descriptor* interrupt_in_endpoint; scalar_t__ interrupt_in_interval; void* interrupt_out_urb; void* write_buffer; void* interrupt_out_buffer; void* interrupt_in_urb; void* oldi_buffer; void* interrupt_in_buffer; void* ring_buffer; int /*<<< orphan*/  write_wait; int /*<<< orphan*/  read_wait; struct usb_interface* intf; int /*<<< orphan*/  sem; } ;
struct alphatrack_ocmd {int dummy; } ;
struct alphatrack_icmd {int dummy; } ;
struct TYPE_5__ {struct usb_endpoint_descriptor desc; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ RING_BUFFER_SIZE ; 
 scalar_t__ USB_ALPHATRACK_MINOR_BASE ; 
 int /*<<< orphan*/  USB_MAJOR ; 
 scalar_t__ WRITE_BUFFER_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,scalar_t__,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 struct usb_device* FUNC6 (struct usb_interface*) ; 
 void* FUNC7 (int,int /*<<< orphan*/ ) ; 
 struct usb_alphatrack* FUNC8 (int,int /*<<< orphan*/ ) ; 
 void* FUNC9 (int /*<<< orphan*/ ) ; 
 int FUNC10 (scalar_t__,scalar_t__) ; 
 scalar_t__ min_interrupt_in_interval ; 
 scalar_t__ min_interrupt_out_interval ; 
 scalar_t__ ring_buffer_size ; 
 void* FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  usb_alphatrack_class ; 
 int /*<<< orphan*/  FUNC12 (struct usb_alphatrack*) ; 
 scalar_t__ FUNC13 (struct usb_endpoint_descriptor*) ; 
 scalar_t__ FUNC14 (struct usb_endpoint_descriptor*) ; 
 int FUNC15 (struct usb_interface*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (struct usb_interface*,struct usb_alphatrack*) ; 
 scalar_t__ write_buffer_size ; 

__attribute__((used)) static int FUNC17(struct usb_interface *intf,
				const struct usb_device_id *id)
{
	struct usb_device *udev = FUNC6(intf);
	struct usb_alphatrack *dev = NULL;
	struct usb_host_interface *iface_desc;
	struct usb_endpoint_descriptor *endpoint;
	int i;
	int true_size;
	int retval = -ENOMEM;

	/* allocate memory for our device state and intialize it */

	dev = FUNC8(sizeof(*dev), GFP_KERNEL);
	if (dev == NULL) {
		FUNC1(&intf->dev, "Out of memory\n");
		goto exit;
	}
	FUNC4(&dev->sem);
	dev->intf = intf;
	FUNC5(&dev->read_wait);
	FUNC5(&dev->write_wait);

	iface_desc = intf->cur_altsetting;

	/* set up the endpoint information */
	for (i = 0; i < iface_desc->desc.bNumEndpoints; ++i) {
		endpoint = &iface_desc->endpoint[i].desc;

		if (FUNC13(endpoint))
			dev->interrupt_in_endpoint = endpoint;

		if (FUNC14(endpoint))
			dev->interrupt_out_endpoint = endpoint;
	}
	if (dev->interrupt_in_endpoint == NULL) {
		FUNC1(&intf->dev, "Interrupt in endpoint not found\n");
		goto error;
	}
	if (dev->interrupt_out_endpoint == NULL)
		FUNC3(&intf->dev,
			 "Interrupt out endpoint not found"
			 "(using control endpoint instead)\n");

	dev->interrupt_in_endpoint_size =
	    FUNC9(dev->interrupt_in_endpoint->wMaxPacketSize);

	if (dev->interrupt_in_endpoint_size != 64)
		FUNC3(&intf->dev, "Interrupt in endpoint size is not 64!\n");

	if (ring_buffer_size == 0)
		ring_buffer_size = RING_BUFFER_SIZE;

	true_size = FUNC10(ring_buffer_size, RING_BUFFER_SIZE);

	/* FIXME - there are more usb_alloc routines for dma correctness.
	   Needed? */
	dev->ring_buffer =
	    FUNC7((true_size * sizeof(struct alphatrack_icmd)), GFP_KERNEL);

	if (!dev->ring_buffer) {
		FUNC1(&intf->dev,
			"Couldn't allocate input ring_buffer of size %d\n",
			true_size);
		goto error;
	}

	dev->interrupt_in_buffer =
	    FUNC7(dev->interrupt_in_endpoint_size, GFP_KERNEL);

	if (!dev->interrupt_in_buffer) {
		FUNC1(&intf->dev, "Couldn't allocate interrupt_in_buffer\n");
		goto error;
	}
	dev->oldi_buffer = FUNC7(dev->interrupt_in_endpoint_size, GFP_KERNEL);
	if (!dev->oldi_buffer) {
		FUNC1(&intf->dev, "Couldn't allocate old buffer\n");
		goto error;
	}
	dev->interrupt_in_urb = FUNC11(0, GFP_KERNEL);
	if (!dev->interrupt_in_urb) {
		FUNC1(&intf->dev, "Couldn't allocate interrupt_in_urb\n");
		goto error;
	}

	dev->interrupt_out_endpoint_size =
	    dev->interrupt_out_endpoint ? FUNC9(dev->
						      interrupt_out_endpoint->
						      wMaxPacketSize) : udev->
	    descriptor.bMaxPacketSize0;

	if (dev->interrupt_out_endpoint_size != 64)
		FUNC3(&intf->dev,
			 "Interrupt out endpoint size is not 64!)\n");

	if (write_buffer_size == 0)
		write_buffer_size = WRITE_BUFFER_SIZE;
	true_size = FUNC10(write_buffer_size, WRITE_BUFFER_SIZE);

	dev->interrupt_out_buffer =
	    FUNC7(true_size * dev->interrupt_out_endpoint_size, GFP_KERNEL);

	if (!dev->interrupt_out_buffer) {
		FUNC1(&intf->dev, "Couldn't allocate interrupt_out_buffer\n");
		goto error;
	}

	dev->write_buffer =
	    FUNC7(sizeof(struct alphatrack_ocmd) * true_size, GFP_KERNEL);

	if (!dev->write_buffer) {
		FUNC1(&intf->dev, "Couldn't allocate write_buffer \n");
		goto error;
	}

	dev->interrupt_out_urb = FUNC11(0, GFP_KERNEL);
	if (!dev->interrupt_out_urb) {
		FUNC1(&intf->dev, "Couldn't allocate interrupt_out_urb\n");
		goto error;
	}
	dev->interrupt_in_interval =
	    min_interrupt_in_interval >
	    dev->interrupt_in_endpoint->
	    bInterval ? min_interrupt_in_interval : dev->interrupt_in_endpoint->
	    bInterval;
	if (dev->interrupt_out_endpoint)
		dev->interrupt_out_interval =
		    min_interrupt_out_interval >
		    dev->interrupt_out_endpoint->
		    bInterval ? min_interrupt_out_interval : dev->
		    interrupt_out_endpoint->bInterval;

	/* we can register the device now, as it is ready */
	FUNC16(intf, dev);

	FUNC0(&dev->writes_pending, 0);
	retval = FUNC15(intf, &usb_alphatrack_class);
	if (retval) {
		/* something prevented us from registering this driver */
		FUNC1(&intf->dev,
			"Not able to get a minor for this device.\n");
		FUNC16(intf, NULL);
		goto error;
	}

	/* let the user know what node this device is now attached to */
	FUNC2(&intf->dev,
		 "Alphatrack Device #%d now attached to major %d minor %d\n",
		 (intf->minor - USB_ALPHATRACK_MINOR_BASE), USB_MAJOR,
		 intf->minor);

exit:
	return retval;

error:
	FUNC12(dev);

	return retval;
}