#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  devt; } ;
struct usb_device {int devnum; int /*<<< orphan*/  ep0; TYPE_2__ dev; TYPE_1__* bus; scalar_t__ parent; } ;
struct TYPE_8__ {int busnum; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  USB_DEVICE_MAJOR ; 
 int /*<<< orphan*/  USB_STATE_NOTATTACHED ; 
 int /*<<< orphan*/  FUNC1 (struct usb_device*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,char*,int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,char*,int) ; 
 int FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,int /*<<< orphan*/ *,struct usb_device*) ; 
 int /*<<< orphan*/  FUNC9 (struct usb_device*) ; 
 int FUNC10 (struct usb_device*) ; 
 int /*<<< orphan*/  FUNC11 (struct usb_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct usb_device*) ; 

int FUNC13(struct usb_device *udev)
{
	int err;

	if (udev->parent) {
		/* Increment the parent's count of unsuspended children */
		FUNC7(udev->parent);

		/* Initialize non-root-hub device wakeup to disabled;
		 * device (un)configuration controls wakeup capable
		 * sysfs power/wakeup controls wakeup enabled/disabled
		 */
		FUNC5(&udev->dev, 0);
		FUNC6(&udev->dev, 1);
	}

	FUNC9(udev);
	err = FUNC10(udev);	/* Read descriptors */
	if (err < 0)
		goto fail;
	FUNC2(&udev->dev, "udev %d, busnum %d, minor = %d\n",
			udev->devnum, udev->bus->busnum,
			(((udev->bus->busnum-1) * 128) + (udev->devnum-1)));
	/* export the usbdev device-node for libusb */
	udev->dev.devt = FUNC0(USB_DEVICE_MAJOR,
			(((udev->bus->busnum-1) * 128) + (udev->devnum-1)));

	/* Tell the world! */
	FUNC1(udev);

	/* Register the device.  The device driver is responsible
	 * for configuring the device and invoking the add-device
	 * notifier chain (used by usbfs and possibly others).
	 */
	err = FUNC4(&udev->dev);
	if (err) {
		FUNC3(&udev->dev, "can't device_add, error %d\n", err);
		goto fail;
	}

	(void) FUNC8(&udev->dev, &udev->ep0, udev);
	return err;

fail:
	FUNC11(udev, USB_STATE_NOTATTACHED);
	FUNC12(udev);
	return err;
}