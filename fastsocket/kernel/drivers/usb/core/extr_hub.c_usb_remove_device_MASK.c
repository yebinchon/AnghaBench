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
struct usb_interface {int dummy; } ;
struct usb_hub {int /*<<< orphan*/  removed_bits; int /*<<< orphan*/  intfdev; } ;
struct usb_device {int /*<<< orphan*/  portnum; int /*<<< orphan*/  parent; } ;

/* Variables and functions */
 int EINVAL ; 
 struct usb_hub* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct usb_hub*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct usb_interface* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC5 (struct usb_interface*) ; 

int FUNC6(struct usb_device *udev)
{
	struct usb_hub *hub;
	struct usb_interface *intf;

	if (!udev->parent)	/* Can't remove a root hub */
		return -EINVAL;
	hub = FUNC0(udev->parent);
	intf = FUNC3(hub->intfdev);

	FUNC4(intf);
	FUNC2(udev->portnum, hub->removed_bits);
	FUNC1(hub, udev->portnum);
	FUNC5(intf);
	return 0;
}