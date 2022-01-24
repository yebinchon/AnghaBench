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
struct TYPE_2__ {int bEncryptionValue; int /*<<< orphan*/  bEncryptionType; } ;
struct wusb_dev {TYPE_1__ ccm1_etd; } ;
struct device {int dummy; } ;
struct usb_device {struct wusb_dev* wusb_dev; struct device dev; } ;

/* Variables and functions */
 int USB_DIR_OUT ; 
 int USB_RECIP_DEVICE ; 
 int /*<<< orphan*/  USB_REQ_SET_ENCRYPTION ; 
 int USB_TYPE_STANDARD ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,int /*<<< orphan*/ ,int,int) ; 
 int FUNC1 (struct usb_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct usb_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct usb_device *usb_dev, int value)
{
	int result;
	struct device *dev = &usb_dev->dev;
	struct wusb_dev *wusb_dev = usb_dev->wusb_dev;

	if (value) {
		value = wusb_dev->ccm1_etd.bEncryptionValue;
	} else {
		/* FIXME: should be wusb_dev->etd[UNSECURE].bEncryptionValue */
		value = 0;
	}
	/* Set device's */
	result = FUNC1(usb_dev, FUNC2(usb_dev, 0),
			USB_REQ_SET_ENCRYPTION,
			USB_DIR_OUT | USB_TYPE_STANDARD | USB_RECIP_DEVICE,
			value, 0, NULL, 0, 1000 /* FIXME: arbitrary */);
	if (result < 0)
		FUNC0(dev, "Can't set device's WUSB encryption to "
			"%s (value %d): %d\n",
			FUNC3(wusb_dev->ccm1_etd.bEncryptionType),
			wusb_dev->ccm1_etd.bEncryptionValue,  result);
	return result;
}