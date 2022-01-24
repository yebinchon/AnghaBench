#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct usb_lcd {size_t bulk_in_size; int /*<<< orphan*/  kref; TYPE_4__* udev; scalar_t__ bulk_out_endpointAddr; scalar_t__ bulk_in_endpointAddr; int /*<<< orphan*/  bulk_in_buffer; struct usb_interface* interface; int /*<<< orphan*/  submitted; int /*<<< orphan*/  limit_sem; } ;
struct usb_interface {int /*<<< orphan*/  minor; int /*<<< orphan*/  dev; struct usb_host_interface* cur_altsetting; } ;
struct TYPE_5__ {int bNumEndpoints; } ;
struct usb_host_interface {TYPE_2__* endpoint; TYPE_1__ desc; } ;
struct usb_endpoint_descriptor {scalar_t__ bEndpointAddress; int /*<<< orphan*/  wMaxPacketSize; } ;
struct usb_device_id {int dummy; } ;
struct TYPE_7__ {int /*<<< orphan*/  bcdDevice; int /*<<< orphan*/  idProduct; } ;
struct TYPE_8__ {int /*<<< orphan*/  devnum; TYPE_3__ descriptor; } ;
struct TYPE_6__ {struct usb_endpoint_descriptor desc; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  USB_LCD_CONCURRENT_WRITES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC5 (size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct usb_lcd* FUNC8 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  lcd_class ; 
 int /*<<< orphan*/  lcd_delete ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (struct usb_endpoint_descriptor*) ; 
 scalar_t__ FUNC12 (struct usb_endpoint_descriptor*) ; 
 TYPE_4__* FUNC13 (int /*<<< orphan*/ ) ; 
 int FUNC14 (struct usb_interface*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (struct usb_interface*,struct usb_lcd*) ; 

__attribute__((used)) static int FUNC16(struct usb_interface *interface, const struct usb_device_id *id)
{
	struct usb_lcd *dev = NULL;
	struct usb_host_interface *iface_desc;
	struct usb_endpoint_descriptor *endpoint;
	size_t buffer_size;
	int i;
	int retval = -ENOMEM;

	/* allocate memory for our device state and initialize it */
	dev = FUNC8(sizeof(*dev), GFP_KERNEL);
	if (dev == NULL) {
		FUNC2("Out of memory");
		goto error;
	}
	FUNC6(&dev->kref);
	FUNC10(&dev->limit_sem, USB_LCD_CONCURRENT_WRITES);
	FUNC3(&dev->submitted);

	dev->udev = FUNC13(FUNC4(interface));
	dev->interface = interface;

	if (FUNC9(dev->udev->descriptor.idProduct) != 0x0001) {
		FUNC1(&interface->dev, "USBLCD model not supported.\n");
		retval = -ENODEV;
		goto error;
	}
	
	/* set up the endpoint information */
	/* use only the first bulk-in and bulk-out endpoints */
	iface_desc = interface->cur_altsetting;
	for (i = 0; i < iface_desc->desc.bNumEndpoints; ++i) {
		endpoint = &iface_desc->endpoint[i].desc;

		if (!dev->bulk_in_endpointAddr &&
		    FUNC11(endpoint)) {
			/* we found a bulk in endpoint */
			buffer_size = FUNC9(endpoint->wMaxPacketSize);
			dev->bulk_in_size = buffer_size;
			dev->bulk_in_endpointAddr = endpoint->bEndpointAddress;
			dev->bulk_in_buffer = FUNC5(buffer_size, GFP_KERNEL);
			if (!dev->bulk_in_buffer) {
				FUNC2("Could not allocate bulk_in_buffer");
				goto error;
			}
		}

		if (!dev->bulk_out_endpointAddr &&
		    FUNC12(endpoint)) {
			/* we found a bulk out endpoint */
			dev->bulk_out_endpointAddr = endpoint->bEndpointAddress;
		}
	}
	if (!(dev->bulk_in_endpointAddr && dev->bulk_out_endpointAddr)) {
		FUNC2("Could not find both bulk-in and bulk-out endpoints");
		goto error;
	}

	/* save our data pointer in this interface device */
	FUNC15(interface, dev);

	/* we can register the device now, as it is ready */
	retval = FUNC14(interface, &lcd_class);
	if (retval) {
		/* something prevented us from registering this driver */
		FUNC2("Not able to get a minor for this device.");
		FUNC15(interface, NULL);
		goto error;
	}

	i = FUNC9(dev->udev->descriptor.bcdDevice);

	FUNC0(&interface->dev, "USBLCD Version %1d%1d.%1d%1d found "
		 "at address %d\n", (i & 0xF000)>>12, (i & 0xF00)>>8,
		 (i & 0xF0)>>4,(i & 0xF), dev->udev->devnum);

	/* let the user know what node this device is now attached to */
	FUNC0(&interface->dev, "USB LCD device now attached to USBLCD-%d\n",
		 interface->minor);
	return 0;

error:
	if (dev)
		FUNC7(&dev->kref, lcd_delete);
	return retval;
}