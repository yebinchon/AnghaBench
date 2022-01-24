#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_7__ ;
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct usb_hub {int /*<<< orphan*/  tt; struct usb_device* hdev; } ;
struct usb_hcd {TYPE_2__* driver; } ;
struct usb_device_descriptor {int bMaxPacketSize0; int bDescriptorType; } ;
struct TYPE_8__ {int bMaxPacketSize0; void* bcdUSB; } ;
struct TYPE_10__ {void* wMaxPacketSize; } ;
struct TYPE_11__ {TYPE_3__ desc; } ;
struct usb_device {int speed; int devnum; int ttport; scalar_t__ wusb; int /*<<< orphan*/  lpm_capable; TYPE_1__ descriptor; int /*<<< orphan*/  dev; TYPE_4__ ep0; TYPE_7__* bus; scalar_t__ config; int /*<<< orphan*/ * tt; int /*<<< orphan*/  parent; } ;
typedef  enum usb_device_speed { ____Placeholder_usb_device_speed } usb_device_speed ;
struct TYPE_14__ {int otg_port; TYPE_6__* controller; scalar_t__ b_hnp_enable; } ;
struct TYPE_13__ {TYPE_5__* driver; } ;
struct TYPE_12__ {int /*<<< orphan*/  name; } ;
struct TYPE_9__ {int flags; int /*<<< orphan*/  (* update_device ) (struct usb_hcd*,struct usb_device*) ;} ;
typedef  int /*<<< orphan*/  DEFINE_MUTEX ;

/* Variables and functions */
 int EINVAL ; 
 int EMSGSIZE ; 
 int ENODEV ; 
 int ENOMEM ; 
 int ENOMSG ; 
 int EPROTO ; 
 int /*<<< orphan*/  GET_DESCRIPTOR_BUFSIZE ; 
 int GET_DESCRIPTOR_TRIES ; 
 int /*<<< orphan*/  GFP_NOIO ; 
 int HCD_USB3 ; 
 unsigned int HUB_BH_RESET_TIME ; 
 unsigned int HUB_LONG_RESET_TIME ; 
 unsigned int HUB_ROOT_RESET_TIME ; 
 unsigned int HUB_SHORT_RESET_TIME ; 
 int SET_ADDRESS_TRIES ; 
 int /*<<< orphan*/  USB_DIR_IN ; 
 int USB_DT_DEVICE ; 
 int USB_DT_DEVICE_SIZE ; 
 int /*<<< orphan*/  USB_REQ_GET_DESCRIPTOR ; 
#define  USB_SPEED_FULL 132 
#define  USB_SPEED_HIGH 131 
#define  USB_SPEED_LOW 130 
#define  USB_SPEED_SUPER 129 
 int USB_SPEED_UNKNOWN ; 
#define  USB_SPEED_WIRELESS 128 
 scalar_t__ FUNC0 (int) ; 
 struct usb_hcd* FUNC1 (TYPE_7__*) ; 
 void* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (struct usb_hub*,int,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct usb_hub*,int,struct usb_device*,unsigned int,int) ; 
 int FUNC8 (struct usb_device*,int) ; 
 int /*<<< orphan*/  initial_descriptor_timeout ; 
 int /*<<< orphan*/  FUNC9 (struct usb_device_descriptor*) ; 
 struct usb_device_descriptor* FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC11 (void*) ; 
 int /*<<< orphan*/  FUNC12 (int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (struct usb_hcd*,struct usb_device*) ; 
 int /*<<< orphan*/  FUNC16 (struct usb_device*,int) ; 
 int FUNC17 (struct usb_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,struct usb_device_descriptor*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (struct usb_device*) ; 
 int /*<<< orphan*/  FUNC19 (struct usb_device*) ; 
 int FUNC20 (struct usb_device*) ; 
 int FUNC21 (struct usb_device*,int) ; 
 int /*<<< orphan*/  FUNC22 () ; 
 int /*<<< orphan*/  FUNC23 (struct usb_device*) ; 

__attribute__((used)) static int
FUNC24 (struct usb_hub *hub, struct usb_device *udev, int port1,
		int retry_counter)
{
	static DEFINE_MUTEX(usb_address0_mutex);

	struct usb_device	*hdev = hub->hdev;
	struct usb_hcd		*hcd = FUNC1(hdev->bus);
	int			i, j, retval;
	unsigned		delay = HUB_SHORT_RESET_TIME;
	enum usb_device_speed	oldspeed = udev->speed;
	char 			*speed, *type;
	int			devnum = udev->devnum;

	/* root hub ports have a slightly longer reset period
	 * (from USB 2.0 spec, section 7.1.7.5)
	 */
	if (!hdev->parent) {
		delay = HUB_ROOT_RESET_TIME;
		if (port1 == hdev->bus->otg_port)
			hdev->bus->b_hnp_enable = 0;
	}

	/* Some low speed devices have problems with the quick delay, so */
	/*  be a bit pessimistic with those devices. RHbug #23670 */
	if (oldspeed == USB_SPEED_LOW)
		delay = HUB_LONG_RESET_TIME;

	FUNC13(&usb_address0_mutex);

	/* Reset the device; full speed may morph to high speed */
	/* FIXME a USB 2.0 device may morph into SuperSpeed on reset. */
	retval = FUNC7(hub, port1, udev, delay, false);
	if (retval < 0)		/* error or disconnect */
		goto fail;
	/* success, speed is known */

	retval = -ENODEV;

	if (oldspeed != USB_SPEED_UNKNOWN && oldspeed != udev->speed) {
		FUNC3(&udev->dev, "device reset changed speed!\n");
		goto fail;
	}
	oldspeed = udev->speed;

	/* USB 2.0 section 5.5.3 talks about ep0 maxpacket ...
	 * it's fixed size except for full speed devices.
	 * For Wireless USB devices, ep0 max packet is always 512 (tho
	 * reported as 0xff in the device descriptor). WUSB1.0[4.8.1].
	 */
	switch (udev->speed) {
	case USB_SPEED_SUPER:
	case USB_SPEED_WIRELESS:	/* fixed at 512 */
		udev->ep0.desc.wMaxPacketSize = FUNC2(512);
		break;
	case USB_SPEED_HIGH:		/* fixed at 64 */
		udev->ep0.desc.wMaxPacketSize = FUNC2(64);
		break;
	case USB_SPEED_FULL:		/* 8, 16, 32, or 64 */
		/* to determine the ep0 maxpacket size, try to read
		 * the device descriptor to get bMaxPacketSize0 and
		 * then correct our initial guess.
		 */
		udev->ep0.desc.wMaxPacketSize = FUNC2(64);
		break;
	case USB_SPEED_LOW:		/* fixed at 8 */
		udev->ep0.desc.wMaxPacketSize = FUNC2(8);
		break;
	default:
		goto fail;
	}
 
	type = "";
	switch (udev->speed) {
	case USB_SPEED_LOW:	speed = "low";	break;
	case USB_SPEED_FULL:	speed = "full";	break;
	case USB_SPEED_HIGH:	speed = "high";	break;
	case USB_SPEED_SUPER:
				speed = "super";
				break;
	case USB_SPEED_WIRELESS:
				speed = "variable";
				type = "Wireless ";
				break;
	default: 		speed = "?";	break;
	}
	if (udev->speed != USB_SPEED_SUPER)
		FUNC5(&udev->dev,
				"%s %s speed %sUSB device number %d using %s\n",
				(udev->config) ? "reset" : "new", speed, type,
				devnum, udev->bus->controller->driver->name);

	/* Set up TT records, if needed  */
	if (hdev->tt) {
		udev->tt = hdev->tt;
		udev->ttport = hdev->ttport;
	} else if (udev->speed != USB_SPEED_HIGH
			&& hdev->speed == USB_SPEED_HIGH) {
		udev->tt = &hub->tt;
		udev->ttport = port1;
	}
 
	/* Why interleave GET_DESCRIPTOR and SET_ADDRESS this way?
	 * Because device hardware and firmware is sometimes buggy in
	 * this area, and this is how Linux has done it for ages.
	 * Change it cautiously.
	 *
	 * NOTE:  If USE_NEW_SCHEME() is true we will start by issuing
	 * a 64-byte GET_DESCRIPTOR request.  This is what Windows does,
	 * so it may help with some non-standards-compliant devices.
	 * Otherwise we start with SET_ADDRESS and then try to read the
	 * first 8 bytes of the device descriptor to get the ep0 maxpacket
	 * value.
	 */
	for (i = 0; i < GET_DESCRIPTOR_TRIES; (++i, FUNC12(100))) {
		if (FUNC0(retry_counter) && !(hcd->driver->flags & HCD_USB3)) {
			struct usb_device_descriptor *buf;
			int r = 0;

#define GET_DESCRIPTOR_BUFSIZE	64
			buf = FUNC10(GET_DESCRIPTOR_BUFSIZE, GFP_NOIO);
			if (!buf) {
				retval = -ENOMEM;
				continue;
			}

			/* Retry on all errors; some devices are flakey.
			 * 255 is for WUSB devices, we actually need to use
			 * 512 (WUSB1.0[4.8.1]).
			 */
			for (j = 0; j < 3; ++j) {
				buf->bMaxPacketSize0 = 0;
				r = FUNC17(udev, FUNC22(),
					USB_REQ_GET_DESCRIPTOR, USB_DIR_IN,
					USB_DT_DEVICE << 8, 0,
					buf, GET_DESCRIPTOR_BUFSIZE,
					initial_descriptor_timeout);
				switch (buf->bMaxPacketSize0) {
				case 8: case 16: case 32: case 64: case 255:
					if (buf->bDescriptorType ==
							USB_DT_DEVICE) {
						r = 0;
						break;
					}
					/* FALL THROUGH */
				default:
					if (r == 0)
						r = -EPROTO;
					break;
				}
				if (r == 0)
					break;
			}
			udev->descriptor.bMaxPacketSize0 =
					buf->bMaxPacketSize0;
			FUNC9(buf);

			retval = FUNC7(hub, port1, udev, delay, false);
			if (retval < 0)		/* error or disconnect */
				goto fail;
			if (oldspeed != udev->speed) {
				FUNC3(&udev->dev,
					"device reset changed speed!\n");
				retval = -ENODEV;
				goto fail;
			}
			if (r) {
				FUNC4(&udev->dev,
					"device descriptor read/64, error %d\n",
					r);
				retval = -EMSGSIZE;
				continue;
			}
#undef GET_DESCRIPTOR_BUFSIZE
		}

 		/*
 		 * If device is WUSB, we already assigned an
 		 * unauthorized address in the Connect Ack sequence;
 		 * authorization will assign the final address.
 		 */
		if (udev->wusb == 0) {
			for (j = 0; j < SET_ADDRESS_TRIES; ++j) {
				retval = FUNC8(udev, devnum);
				if (retval >= 0)
					break;
				FUNC12(200);
			}
			if (retval < 0) {
				FUNC4(&udev->dev,
					"device not accepting address %d, error %d\n",
					devnum, retval);
				goto fail;
			}
			if (udev->speed == USB_SPEED_SUPER) {
				devnum = udev->devnum;
				FUNC5(&udev->dev,
						"%s SuperSpeed USB device number %d using %s\n",
						(udev->config) ? "reset" : "new",
						devnum, udev->bus->controller->driver->name);
			}

			/* cope with hardware quirkiness:
			 *  - let SET_ADDRESS settle, some device hardware wants it
			 *  - read ep0 maxpacket even for high and low speed,
			 */
			FUNC12(10);
			if (FUNC0(retry_counter) && !(hcd->driver->flags & HCD_USB3))
				break;
  		}

		retval = FUNC21(udev, 8);
		if (retval < 8) {
			FUNC4(&udev->dev,
					"device descriptor read/8, error %d\n",
					retval);
			if (retval >= 0)
				retval = -EMSGSIZE;
		} else {
			retval = 0;
			break;
		}
	}
	if (retval)
		goto fail;

	/*
	 * Some superspeed devices have finished the link training process
	 * and attached to a superspeed hub port, but the device descriptor
	 * got from those devices show they aren't superspeed devices. Warm
	 * reset the port attached by the devices can fix them.
	 */
	if ((udev->speed == USB_SPEED_SUPER) &&
			(FUNC11(udev->descriptor.bcdUSB) < 0x0300)) {
		FUNC4(&udev->dev, "got a wrong device descriptor, "
				"warm reset device\n");
		FUNC7(hub, port1, udev,
				HUB_BH_RESET_TIME, true);
		retval = -EINVAL;
		goto fail;
	}

	if (udev->descriptor.bMaxPacketSize0 == 0xff ||
			udev->speed == USB_SPEED_SUPER)
		i = 512;
	else
		i = udev->descriptor.bMaxPacketSize0;
	if (FUNC11(udev->ep0.desc.wMaxPacketSize) != i) {
		if (udev->speed != USB_SPEED_FULL ||
				!(i == 8 || i == 16 || i == 32 || i == 64)) {
			FUNC4(&udev->dev, "ep0 maxpacket = %d\n", i);
			retval = -EMSGSIZE;
			goto fail;
		}
		FUNC3(&udev->dev, "ep0 maxpacket = %d\n", i);
		udev->ep0.desc.wMaxPacketSize = FUNC2(i);
		FUNC19(udev);
	}
  
	retval = FUNC21(udev, USB_DT_DEVICE_SIZE);
	if (retval < (signed)sizeof(udev->descriptor)) {
		FUNC4(&udev->dev, "device descriptor read/all, error %d\n",
			retval);
		if (retval >= 0)
			retval = -ENOMSG;
		goto fail;
	}

	if (udev->wusb == 0 && FUNC11(udev->descriptor.bcdUSB) >= 0x0201) {
		retval = FUNC20(udev);
		if (!retval) {
			udev->lpm_capable = FUNC18(udev);
			FUNC23(udev);
		}
	}

	retval = 0;
	/* notify HCD that we have a device connected and addressed */
	if (hcd->driver->update_device)
		hcd->driver->update_device(hcd, udev);
fail:
	if (retval) {
		FUNC6(hub, port1, 0);
		FUNC16(udev, devnum);	/* for disconnect processing */
	}
	FUNC14(&usb_address0_mutex);
	return retval;
}