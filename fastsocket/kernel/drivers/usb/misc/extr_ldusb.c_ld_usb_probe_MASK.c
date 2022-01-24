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
struct TYPE_6__ {int bMaxPacketSize0; int /*<<< orphan*/  bcdDevice; int /*<<< orphan*/  idProduct; int /*<<< orphan*/  idVendor; } ;
struct usb_device {TYPE_3__ descriptor; } ;
struct ld_usb {int interrupt_in_endpoint_size; int interrupt_out_endpoint_size; struct usb_endpoint_descriptor* interrupt_out_endpoint; scalar_t__ interrupt_out_interval; struct usb_endpoint_descriptor* interrupt_in_endpoint; scalar_t__ interrupt_in_interval; void* interrupt_out_urb; void* interrupt_out_buffer; void* interrupt_in_urb; void* interrupt_in_buffer; void* ring_buffer; int /*<<< orphan*/  write_wait; int /*<<< orphan*/  read_wait; struct usb_interface* intf; int /*<<< orphan*/  rbsl; int /*<<< orphan*/  mutex; } ;
struct TYPE_5__ {struct usb_endpoint_descriptor desc; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int USB_DEVICE_ID_LD_CASSY ; 
 int USB_DEVICE_ID_LD_COM3LAB ; 
 scalar_t__ USB_LD_MINOR_BASE ; 
 int /*<<< orphan*/  USB_MAJOR ; 
 int USB_VENDOR_ID_LD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,scalar_t__,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct usb_device* FUNC4 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 void* FUNC6 (int,int /*<<< orphan*/ ) ; 
 struct ld_usb* FUNC7 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ld_usb_class ; 
 int /*<<< orphan*/  FUNC8 (struct ld_usb*) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ min_interrupt_in_interval ; 
 scalar_t__ min_interrupt_out_interval ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int ring_buffer_size ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 void* FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (struct usb_endpoint_descriptor*) ; 
 scalar_t__ FUNC14 (struct usb_endpoint_descriptor*) ; 
 int FUNC15 (struct usb_interface*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (struct usb_interface*,struct ld_usb*) ; 
 int /*<<< orphan*/  FUNC17 (struct usb_device*,int,char*,int) ; 
 int write_buffer_size ; 

__attribute__((used)) static int FUNC18(struct usb_interface *intf, const struct usb_device_id *id)
{
	struct usb_device *udev = FUNC4(intf);
	struct ld_usb *dev = NULL;
	struct usb_host_interface *iface_desc;
	struct usb_endpoint_descriptor *endpoint;
	char *buffer;
	int i;
	int retval = -ENOMEM;

	/* allocate memory for our device state and intialize it */

	dev = FUNC7(sizeof(*dev), GFP_KERNEL);
	if (dev == NULL) {
		FUNC0(&intf->dev, "Out of memory\n");
		goto exit;
	}
	FUNC10(&dev->mutex);
	FUNC11(&dev->rbsl);
	dev->intf = intf;
	FUNC3(&dev->read_wait);
	FUNC3(&dev->write_wait);

	/* workaround for early firmware versions on fast computers */
	if ((FUNC9(udev->descriptor.idVendor) == USB_VENDOR_ID_LD) &&
	    ((FUNC9(udev->descriptor.idProduct) == USB_DEVICE_ID_LD_CASSY) ||
	     (FUNC9(udev->descriptor.idProduct) == USB_DEVICE_ID_LD_COM3LAB)) &&
	    (FUNC9(udev->descriptor.bcdDevice) <= 0x103)) {
		buffer = FUNC6(256, GFP_KERNEL);
		if (buffer == NULL) {
			FUNC0(&intf->dev, "Couldn't allocate string buffer\n");
			goto error;
		}
		/* usb_string makes SETUP+STALL to leave always ControlReadLoop */
		FUNC17(udev, 255, buffer, 256);
		FUNC5(buffer);
	}

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
		FUNC0(&intf->dev, "Interrupt in endpoint not found\n");
		goto error;
	}
	if (dev->interrupt_out_endpoint == NULL)
		FUNC2(&intf->dev, "Interrupt out endpoint not found (using control endpoint instead)\n");

	dev->interrupt_in_endpoint_size = FUNC9(dev->interrupt_in_endpoint->wMaxPacketSize);
	dev->ring_buffer = FUNC6(ring_buffer_size*(sizeof(size_t)+dev->interrupt_in_endpoint_size), GFP_KERNEL);
	if (!dev->ring_buffer) {
		FUNC0(&intf->dev, "Couldn't allocate ring_buffer\n");
		goto error;
	}
	dev->interrupt_in_buffer = FUNC6(dev->interrupt_in_endpoint_size, GFP_KERNEL);
	if (!dev->interrupt_in_buffer) {
		FUNC0(&intf->dev, "Couldn't allocate interrupt_in_buffer\n");
		goto error;
	}
	dev->interrupt_in_urb = FUNC12(0, GFP_KERNEL);
	if (!dev->interrupt_in_urb) {
		FUNC0(&intf->dev, "Couldn't allocate interrupt_in_urb\n");
		goto error;
	}
	dev->interrupt_out_endpoint_size = dev->interrupt_out_endpoint ? FUNC9(dev->interrupt_out_endpoint->wMaxPacketSize) :
									 udev->descriptor.bMaxPacketSize0;
	dev->interrupt_out_buffer = FUNC6(write_buffer_size*dev->interrupt_out_endpoint_size, GFP_KERNEL);
	if (!dev->interrupt_out_buffer) {
		FUNC0(&intf->dev, "Couldn't allocate interrupt_out_buffer\n");
		goto error;
	}
	dev->interrupt_out_urb = FUNC12(0, GFP_KERNEL);
	if (!dev->interrupt_out_urb) {
		FUNC0(&intf->dev, "Couldn't allocate interrupt_out_urb\n");
		goto error;
	}
	dev->interrupt_in_interval = min_interrupt_in_interval > dev->interrupt_in_endpoint->bInterval ? min_interrupt_in_interval : dev->interrupt_in_endpoint->bInterval;
	if (dev->interrupt_out_endpoint)
		dev->interrupt_out_interval = min_interrupt_out_interval > dev->interrupt_out_endpoint->bInterval ? min_interrupt_out_interval : dev->interrupt_out_endpoint->bInterval;

	/* we can register the device now, as it is ready */
	FUNC16(intf, dev);

	retval = FUNC15(intf, &ld_usb_class);
	if (retval) {
		/* something prevented us from registering this driver */
		FUNC0(&intf->dev, "Not able to get a minor for this device.\n");
		FUNC16(intf, NULL);
		goto error;
	}

	/* let the user know what node this device is now attached to */
	FUNC1(&intf->dev, "LD USB Device #%d now attached to major %d minor %d\n",
		(intf->minor - USB_LD_MINOR_BASE), USB_MAJOR, intf->minor);

exit:
	return retval;

error:
	FUNC8(dev);

	return retval;
}