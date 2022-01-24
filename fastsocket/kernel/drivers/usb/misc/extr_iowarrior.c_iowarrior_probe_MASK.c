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
struct usb_interface {int /*<<< orphan*/  dev; scalar_t__ minor; struct usb_host_interface* cur_altsetting; } ;
struct TYPE_6__ {int bNumEndpoints; scalar_t__ bInterfaceNumber; } ;
struct usb_host_interface {TYPE_3__ desc; TYPE_1__* endpoint; } ;
struct usb_endpoint_descriptor {int /*<<< orphan*/  bInterval; int /*<<< orphan*/  bEndpointAddress; int /*<<< orphan*/  wMaxPacketSize; } ;
struct usb_device_id {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  iSerialNumber; int /*<<< orphan*/  idProduct; } ;
struct usb_device {TYPE_2__ descriptor; } ;
struct iowarrior {scalar_t__ product_id; int report_size; int present; scalar_t__ minor; int /*<<< orphan*/  chip_serial; struct usb_interface* interface; void* read_queue; struct usb_endpoint_descriptor* int_in_endpoint; void* int_in_buffer; struct usb_device* udev; int /*<<< orphan*/  int_in_urb; struct usb_endpoint_descriptor* int_out_endpoint; int /*<<< orphan*/  write_wait; int /*<<< orphan*/  write_busy; int /*<<< orphan*/  read_wait; int /*<<< orphan*/  overflow_flag; int /*<<< orphan*/  intr_idx_lock; int /*<<< orphan*/  read_idx; int /*<<< orphan*/  intr_idx; int /*<<< orphan*/  mutex; } ;
struct TYPE_4__ {struct usb_endpoint_descriptor desc; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ IOWARRIOR_MINOR_BASE ; 
 int MAX_INTERRUPT_BUFFER ; 
 int /*<<< orphan*/  USB_CTRL_SET_TIMEOUT ; 
 scalar_t__ USB_DEVICE_ID_CODEMERCS_IOW56 ; 
 int USB_RECIP_INTERFACE ; 
 int USB_TYPE_CLASS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,scalar_t__,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct usb_device* FUNC4 (struct usb_interface*) ; 
 int /*<<< orphan*/  iowarrior_callback ; 
 int /*<<< orphan*/  iowarrior_class ; 
 int /*<<< orphan*/  FUNC5 (struct iowarrior*) ; 
 void* FUNC6 (int,int /*<<< orphan*/ ) ; 
 struct iowarrior* FUNC7 (int,int /*<<< orphan*/ ) ; 
 void* FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct usb_device*,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC15 (struct usb_endpoint_descriptor*) ; 
 scalar_t__ FUNC16 (struct usb_endpoint_descriptor*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,struct usb_device*,int /*<<< orphan*/ ,void*,int,int /*<<< orphan*/ ,struct iowarrior*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (struct usb_device*,int /*<<< orphan*/ ) ; 
 int FUNC19 (struct usb_interface*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (struct usb_interface*,struct iowarrior*) ; 
 int /*<<< orphan*/  FUNC21 (struct usb_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (struct usb_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC23(struct usb_interface *interface,
			   const struct usb_device_id *id)
{
	struct usb_device *udev = FUNC4(interface);
	struct iowarrior *dev = NULL;
	struct usb_host_interface *iface_desc;
	struct usb_endpoint_descriptor *endpoint;
	int i;
	int retval = -ENOMEM;

	/* allocate memory for our device state and intialize it */
	dev = FUNC7(sizeof(struct iowarrior), GFP_KERNEL);
	if (dev == NULL) {
		FUNC1(&interface->dev, "Out of memory\n");
		return retval;
	}

	FUNC10(&dev->mutex);

	FUNC0(&dev->intr_idx, 0);
	FUNC0(&dev->read_idx, 0);
	FUNC11(&dev->intr_idx_lock);
	FUNC0(&dev->overflow_flag, 0);
	FUNC3(&dev->read_wait);
	FUNC0(&dev->write_busy, 0);
	FUNC3(&dev->write_wait);

	dev->udev = udev;
	dev->interface = interface;

	iface_desc = interface->cur_altsetting;
	dev->product_id = FUNC8(udev->descriptor.idProduct);

	/* set up the endpoint information */
	for (i = 0; i < iface_desc->desc.bNumEndpoints; ++i) {
		endpoint = &iface_desc->endpoint[i].desc;

		if (FUNC15(endpoint))
			dev->int_in_endpoint = endpoint;
		if (FUNC16(endpoint))
			/* this one will match for the IOWarrior56 only */
			dev->int_out_endpoint = endpoint;
	}
	/* we have to check the report_size often, so remember it in the endianess suitable for our machine */
	dev->report_size = FUNC8(dev->int_in_endpoint->wMaxPacketSize);
	if ((dev->interface->cur_altsetting->desc.bInterfaceNumber == 0) &&
	    (dev->product_id == USB_DEVICE_ID_CODEMERCS_IOW56))
		/* IOWarrior56 has wMaxPacketSize different from report size */
		dev->report_size = 7;

	/* create the urb and buffer for reading */
	dev->int_in_urb = FUNC13(0, GFP_KERNEL);
	if (!dev->int_in_urb) {
		FUNC1(&interface->dev, "Couldn't allocate interrupt_in_urb\n");
		goto error;
	}
	dev->int_in_buffer = FUNC6(dev->report_size, GFP_KERNEL);
	if (!dev->int_in_buffer) {
		FUNC1(&interface->dev, "Couldn't allocate int_in_buffer\n");
		goto error;
	}
	FUNC17(dev->int_in_urb, dev->udev,
			 FUNC18(dev->udev,
					dev->int_in_endpoint->bEndpointAddress),
			 dev->int_in_buffer, dev->report_size,
			 iowarrior_callback, dev,
			 dev->int_in_endpoint->bInterval);
	/* create an internal buffer for interrupt data from the device */
	dev->read_queue =
	    FUNC6(((dev->report_size + 1) * MAX_INTERRUPT_BUFFER),
		    GFP_KERNEL);
	if (!dev->read_queue) {
		FUNC1(&interface->dev, "Couldn't allocate read_queue\n");
		goto error;
	}
	/* Get the serial-number of the chip */
	FUNC9(dev->chip_serial, 0x00, sizeof(dev->chip_serial));
	FUNC22(udev, udev->descriptor.iSerialNumber, dev->chip_serial,
		   sizeof(dev->chip_serial));
	if (FUNC12(dev->chip_serial) != 8)
		FUNC9(dev->chip_serial, 0x00, sizeof(dev->chip_serial));

	/* Set the idle timeout to 0, if this is interface 0 */
	if (dev->interface->cur_altsetting->desc.bInterfaceNumber == 0) {
	    FUNC14(udev, FUNC21(udev, 0),
			    0x0A,
			    USB_TYPE_CLASS | USB_RECIP_INTERFACE, 0,
			    0, NULL, 0, USB_CTRL_SET_TIMEOUT);
	}
	/* allow device read and ioctl */
	dev->present = 1;

	/* we can register the device now, as it is ready */
	FUNC20(interface, dev);

	retval = FUNC19(interface, &iowarrior_class);
	if (retval) {
		/* something prevented us from registering this driver */
		FUNC1(&interface->dev, "Not able to get a minor for this device.\n");
		FUNC20(interface, NULL);
		goto error;
	}

	dev->minor = interface->minor;

	/* let the user know what node this device is now attached to */
	FUNC2(&interface->dev, "IOWarrior product=0x%x, serial=%s interface=%d "
		 "now attached to iowarrior%d\n", dev->product_id, dev->chip_serial,
		 iface_desc->desc.bInterfaceNumber, dev->minor - IOWARRIOR_MINOR_BASE);
	return retval;

error:
	FUNC5(dev);
	return retval;
}