#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct usbtest_dev {int* buf; struct usb_interface* intf; } ;
struct usb_qualifier_descriptor {unsigned int bNumConfigurations; } ;
struct usb_interface {int num_altsetting; int /*<<< orphan*/  dev; TYPE_5__* altsetting; } ;
struct TYPE_8__ {int bNumConfigurations; int /*<<< orphan*/  bcdUSB; } ;
struct usb_device {scalar_t__ speed; TYPE_3__ descriptor; TYPE_2__* actconfig; } ;
struct TYPE_9__ {int bAlternateSetting; int /*<<< orphan*/  bInterfaceNumber; } ;
struct TYPE_10__ {TYPE_4__ desc; } ;
struct TYPE_6__ {int bConfigurationValue; } ;
struct TYPE_7__ {TYPE_1__ desc; } ;

/* Variables and functions */
 int EDOM ; 
 int EPIPE ; 
 int TBUF_SIZE ; 
 int /*<<< orphan*/  USB_CTRL_GET_TIMEOUT ; 
 int USB_DIR_IN ; 
 int /*<<< orphan*/  USB_DT_CONFIG ; 
 int /*<<< orphan*/  USB_DT_DEVICE ; 
 int /*<<< orphan*/  USB_DT_DEVICE_QUALIFIER ; 
 int /*<<< orphan*/  USB_DT_OTHER_SPEED_CONFIG ; 
 int USB_RECIP_DEVICE ; 
 int USB_RECIP_INTERFACE ; 
 int /*<<< orphan*/  USB_REQ_GET_CONFIGURATION ; 
 scalar_t__ USB_SPEED_HIGH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int,...) ; 
 int FUNC1 (struct usbtest_dev*) ; 
 struct usb_device* FUNC2 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC3 (struct usbtest_dev*,int) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ realworld ; 
 int FUNC5 (struct usbtest_dev*,int) ; 
 int FUNC6 (struct usb_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct usb_device*,int /*<<< orphan*/ ,int,int*,int) ; 
 int FUNC8 (struct usb_device*,int,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC9 (struct usb_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10 (struct usbtest_dev *dev)
{
	struct usb_interface	*iface = dev->intf;
	struct usb_device	*udev = FUNC2 (iface);
	int			i, alt, retval;

	/* [9.2.3] if there's more than one altsetting, we need to be able to
	 * set and get each one.  mostly trusts the descriptors from usbcore.
	 */
	for (i = 0; i < iface->num_altsetting; i++) {

		/* 9.2.3 constrains the range here */
		alt = iface->altsetting [i].desc.bAlternateSetting;
		if (alt < 0 || alt >= iface->num_altsetting) {
			FUNC0(&iface->dev,
					"invalid alt [%d].bAltSetting = %d\n",
					i, alt);
		}

		/* [real world] get/set unimplemented if there's only one */
		if (realworld && iface->num_altsetting == 1)
			continue;

		/* [9.4.10] set_interface */
		retval = FUNC5 (dev, alt);
		if (retval) {
			FUNC0(&iface->dev, "can't set_interface = %d, %d\n",
					alt, retval);
			return retval;
		}

		/* [9.4.4] get_interface always works */
		retval = FUNC1 (dev);
		if (retval != alt) {
			FUNC0(&iface->dev, "get alt should be %d, was %d\n",
					alt, retval);
			return (retval < 0) ? retval : -EDOM;
		}

	}

	/* [real world] get_config unimplemented if there's only one */
	if (!realworld || udev->descriptor.bNumConfigurations != 1) {
		int	expected = udev->actconfig->desc.bConfigurationValue;

		/* [9.4.2] get_configuration always works
		 * ... although some cheap devices (like one TI Hub I've got)
		 * won't return config descriptors except before set_config.
		 */
		retval = FUNC6 (udev, FUNC9 (udev, 0),
				USB_REQ_GET_CONFIGURATION,
				USB_DIR_IN | USB_RECIP_DEVICE,
				0, 0, dev->buf, 1, USB_CTRL_GET_TIMEOUT);
		if (retval != 1 || dev->buf [0] != expected) {
			FUNC0(&iface->dev, "get config --> %d %d (1 %d)\n",
				retval, dev->buf[0], expected);
			return (retval < 0) ? retval : -EDOM;
		}
	}

	/* there's always [9.4.3] a device descriptor [9.6.1] */
	retval = FUNC7 (udev, USB_DT_DEVICE, 0,
			dev->buf, sizeof udev->descriptor);
	if (retval != sizeof udev->descriptor) {
		FUNC0(&iface->dev, "dev descriptor --> %d\n", retval);
		return (retval < 0) ? retval : -EDOM;
	}

	/* there's always [9.4.3] at least one config descriptor [9.6.3] */
	for (i = 0; i < udev->descriptor.bNumConfigurations; i++) {
		retval = FUNC7 (udev, USB_DT_CONFIG, i,
				dev->buf, TBUF_SIZE);
		if (!FUNC3(dev, retval)) {
			FUNC0(&iface->dev,
					"config [%d] descriptor --> %d\n",
					i, retval);
			return (retval < 0) ? retval : -EDOM;
		}

		// FIXME cross-checking udev->config[i] to make sure usbcore
		// parsed it right (etc) would be good testing paranoia
	}

	/* and sometimes [9.2.6.6] speed dependent descriptors */
	if (FUNC4(udev->descriptor.bcdUSB) == 0x0200) {
		struct usb_qualifier_descriptor		*d = NULL;

		/* device qualifier [9.6.2] */
		retval = FUNC7 (udev,
				USB_DT_DEVICE_QUALIFIER, 0, dev->buf,
				sizeof (struct usb_qualifier_descriptor));
		if (retval == -EPIPE) {
			if (udev->speed == USB_SPEED_HIGH) {
				FUNC0(&iface->dev,
						"hs dev qualifier --> %d\n",
						retval);
				return (retval < 0) ? retval : -EDOM;
			}
			/* usb2.0 but not high-speed capable; fine */
		} else if (retval != sizeof (struct usb_qualifier_descriptor)) {
			FUNC0(&iface->dev, "dev qualifier --> %d\n", retval);
			return (retval < 0) ? retval : -EDOM;
		} else
			d = (struct usb_qualifier_descriptor *) dev->buf;

		/* might not have [9.6.2] any other-speed configs [9.6.4] */
		if (d) {
			unsigned max = d->bNumConfigurations;
			for (i = 0; i < max; i++) {
				retval = FUNC7 (udev,
					USB_DT_OTHER_SPEED_CONFIG, i,
					dev->buf, TBUF_SIZE);
				if (!FUNC3(dev, retval)) {
					FUNC0(&iface->dev,
						"other speed config --> %d\n",
						retval);
					return (retval < 0) ? retval : -EDOM;
				}
			}
		}
	}
	// FIXME fetch strings from at least the device descriptor

	/* [9.4.5] get_status always works */
	retval = FUNC8 (udev, USB_RECIP_DEVICE, 0, dev->buf);
	if (retval != 2) {
		FUNC0(&iface->dev, "get dev status --> %d\n", retval);
		return (retval < 0) ? retval : -EDOM;
	}

	// FIXME configuration.bmAttributes says if we could try to set/clear
	// the device's remote wakeup feature ... if we can, test that here

	retval = FUNC8 (udev, USB_RECIP_INTERFACE,
			iface->altsetting [0].desc.bInterfaceNumber, dev->buf);
	if (retval != 2) {
		FUNC0(&iface->dev, "get interface status --> %d\n", retval);
		return (retval < 0) ? retval : -EDOM;
	}
	// FIXME get status for each endpoint in the interface

	return 0;
}