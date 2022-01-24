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
struct TYPE_2__ {int /*<<< orphan*/  iSerialNumber; int /*<<< orphan*/  iManufacturer; int /*<<< orphan*/  iProduct; } ;
struct usb_device {int wusb; scalar_t__ authorized; TYPE_1__ descriptor; void* serial; void* manufacturer; void* product; int /*<<< orphan*/  dev; int /*<<< orphan*/ * config; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 void* FUNC1 (char*,int /*<<< orphan*/ ) ; 
 void* FUNC2 (struct usb_device*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct usb_device*) ; 
 int FUNC4 (struct usb_device*) ; 

__attribute__((used)) static int FUNC5(struct usb_device *udev)
{
	int err;

	if (udev->config == NULL) {
		err = FUNC4(udev);
		if (err < 0) {
			FUNC0(&udev->dev, "can't read configurations, error %d\n",
				err);
			goto fail;
		}
	}
	if (udev->wusb == 1 && udev->authorized == 0) {
		udev->product = FUNC1("n/a (unauthorized)", GFP_KERNEL);
		udev->manufacturer = FUNC1("n/a (unauthorized)", GFP_KERNEL);
		udev->serial = FUNC1("n/a (unauthorized)", GFP_KERNEL);
	}
	else {
		/* read the standard strings and cache them if present */
		udev->product = FUNC2(udev, udev->descriptor.iProduct);
		udev->manufacturer = FUNC2(udev,
						      udev->descriptor.iManufacturer);
		udev->serial = FUNC2(udev, udev->descriptor.iSerialNumber);
	}
	err = FUNC3(udev);
fail:
	return err;
}