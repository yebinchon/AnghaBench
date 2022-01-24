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
struct usb_interface {int dummy; } ;
struct usb_device_id {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  idProduct; } ;
struct usb_device {int bus_mA; TYPE_3__ descriptor; TYPE_2__* actconfig; int /*<<< orphan*/  dev; } ;
struct TYPE_4__ {int bMaxPower; } ;
struct TYPE_5__ {TYPE_1__ desc; } ;

/* Variables and functions */
 scalar_t__ BLACKBERRY_PEARL ; 
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,...) ; 
 struct usb_device* FUNC1 (struct usb_interface*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct usb_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct usb_device*) ; 
 scalar_t__ pearl_dual_mode ; 

__attribute__((used)) static int FUNC5(struct usb_interface *intf,
		       const struct usb_device_id *id)
{
	struct usb_device *udev = FUNC1(intf);

	if (udev->bus_mA < 500) {
		FUNC0(&udev->dev, "Not enough power to charge available\n");
		return -ENODEV;
	}

	FUNC0(&udev->dev, "Power is set to %dmA\n",
	    udev->actconfig->desc.bMaxPower * 2);

	/* check the power usage so we don't try to enable something that is
	 * already enabled */
	if ((udev->actconfig->desc.bMaxPower * 2) == 500) {
		FUNC0(&udev->dev, "device is already charging, power is "
		    "set to %dmA\n", udev->actconfig->desc.bMaxPower * 2);
		return -ENODEV;
	}

	/* turn the power on */
	FUNC3(udev);

	if ((FUNC2(udev->descriptor.idProduct) == BLACKBERRY_PEARL) &&
	    (pearl_dual_mode))
		FUNC4(udev);

	/* we don't really want to bind to the device, userspace programs can
	 * handle the syncing just fine, so get outta here. */
	return -ENODEV;
}