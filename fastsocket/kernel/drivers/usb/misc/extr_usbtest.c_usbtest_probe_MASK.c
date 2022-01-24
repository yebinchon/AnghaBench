#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u16 ;
struct usbtest_info {int /*<<< orphan*/  alt; int /*<<< orphan*/  ctrl_out; int /*<<< orphan*/  name; scalar_t__ ep_out; scalar_t__ ep_in; scalar_t__ autoconf; } ;
struct usbtest_dev {scalar_t__ out_iso_pipe; scalar_t__ in_iso_pipe; scalar_t__ out_pipe; scalar_t__ in_pipe; int /*<<< orphan*/ * buf; struct usb_interface* intf; int /*<<< orphan*/  lock; struct usbtest_info* info; } ;
struct usb_interface {int /*<<< orphan*/  dev; } ;
struct usb_device_id {scalar_t__ match_flags; scalar_t__ driver_info; } ;
struct TYPE_2__ {int /*<<< orphan*/  idProduct; int /*<<< orphan*/  idVendor; } ;
struct usb_device {int speed; TYPE_1__ descriptor; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  TBUF_SIZE ; 
#define  USB_SPEED_FULL 130 
#define  USB_SPEED_HIGH 129 
#define  USB_SPEED_LOW 128 
 int /*<<< orphan*/  FUNC0 (struct usbtest_dev*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,scalar_t__,...) ; 
 scalar_t__ force_interrupt ; 
 int FUNC2 (struct usbtest_dev*,struct usb_interface*) ; 
 struct usb_device* FUNC3 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC4 (struct usbtest_dev*) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct usbtest_dev* FUNC6 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ product ; 
 scalar_t__ FUNC9 (struct usb_device*,scalar_t__) ; 
 scalar_t__ FUNC10 (struct usb_device*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (struct usb_interface*,struct usbtest_dev*) ; 
 scalar_t__ FUNC12 (struct usb_device*,scalar_t__) ; 
 scalar_t__ FUNC13 (struct usb_device*,scalar_t__) ; 
 scalar_t__ vendor ; 

__attribute__((used)) static int
FUNC14 (struct usb_interface *intf, const struct usb_device_id *id)
{
	struct usb_device	*udev;
	struct usbtest_dev	*dev;
	struct usbtest_info	*info;
	char			*rtest, *wtest;
	char			*irtest, *iwtest;

	udev = FUNC3 (intf);

#ifdef	GENERIC
	/* specify devices by module parameters? */
	if (id->match_flags == 0) {
		/* vendor match required, product match optional */
		if (!vendor || le16_to_cpu(udev->descriptor.idVendor) != (u16)vendor)
			return -ENODEV;
		if (product && le16_to_cpu(udev->descriptor.idProduct) != (u16)product)
			return -ENODEV;
		dev_info(&intf->dev, "matched module params, "
					"vend=0x%04x prod=0x%04x\n",
				le16_to_cpu(udev->descriptor.idVendor),
				le16_to_cpu(udev->descriptor.idProduct));
	}
#endif

	dev = FUNC6(sizeof(*dev), GFP_KERNEL);
	if (!dev)
		return -ENOMEM;
	info = (struct usbtest_info *) id->driver_info;
	dev->info = info;
	FUNC8(&dev->lock);

	dev->intf = intf;

	/* cacheline-aligned scratch for i/o */
	if ((dev->buf = FUNC5 (TBUF_SIZE, GFP_KERNEL)) == NULL) {
		FUNC4 (dev);
		return -ENOMEM;
	}

	/* NOTE this doesn't yet test the handful of difference that are
	 * visible with high speed interrupts:  bigger maxpacket (1K) and
	 * "high bandwidth" modes (up to 3 packets/uframe).
	 */
	rtest = wtest = "";
	irtest = iwtest = "";
	if (force_interrupt || udev->speed == USB_SPEED_LOW) {
		if (info->ep_in) {
			dev->in_pipe = FUNC10 (udev, info->ep_in);
			rtest = " intr-in";
		}
		if (info->ep_out) {
			dev->out_pipe = FUNC13 (udev, info->ep_out);
			wtest = " intr-out";
		}
	} else {
		if (info->autoconf) {
			int status;

			status = FUNC2 (dev, intf);
			if (status < 0) {
				FUNC0(dev, "couldn't get endpoints, %d\n",
						status);
				return status;
			}
			/* may find bulk or ISO pipes */
		} else {
			if (info->ep_in)
				dev->in_pipe = FUNC9 (udev,
							info->ep_in);
			if (info->ep_out)
				dev->out_pipe = FUNC12 (udev,
							info->ep_out);
		}
		if (dev->in_pipe)
			rtest = " bulk-in";
		if (dev->out_pipe)
			wtest = " bulk-out";
		if (dev->in_iso_pipe)
			irtest = " iso-in";
		if (dev->out_iso_pipe)
			iwtest = " iso-out";
	}

	FUNC11 (intf, dev);
	FUNC1 (&intf->dev, "%s\n", info->name);
	FUNC1 (&intf->dev, "%s speed {control%s%s%s%s%s} tests%s\n",
			({ char *tmp;
			switch (udev->speed) {
			case USB_SPEED_LOW: tmp = "low"; break;
			case USB_SPEED_FULL: tmp = "full"; break;
			case USB_SPEED_HIGH: tmp = "high"; break;
			default: tmp = "unknown"; break;
			}; tmp; }),
			info->ctrl_out ? " in/out" : "",
			rtest, wtest,
			irtest, iwtest,
			info->alt >= 0 ? " (+alt)" : "");
	return 0;
}