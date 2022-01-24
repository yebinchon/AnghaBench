#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct usb_device {scalar_t__ authorized; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,...) ; 
 int FUNC1 (struct usb_device*) ; 
 scalar_t__ FUNC2 (struct usb_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct usb_device*) ; 
 int FUNC4 (struct usb_device*,int) ; 

__attribute__((used)) static int FUNC5(struct usb_device *udev)
{
	int err, c;

	/* Choose and set the configuration.  This registers the interfaces
	 * with the driver core and lets interface drivers bind to them.
	 */
	if (FUNC2(udev))
		;		/* Don't configure if the device is owned */
	else if (udev->authorized == 0)
		FUNC0(&udev->dev, "Device is not authorized for usage\n");
	else {
		c = FUNC1(udev);
		if (c >= 0) {
			err = FUNC4(udev, c);
			if (err) {
				FUNC0(&udev->dev, "can't set config #%d, error %d\n",
					c, err);
				/* This need not be fatal.  The user can try to
				 * set other configurations. */
			}
		}
	}
	/* USB device state == configured ... usable */
	FUNC3(udev);

	return 0;
}