#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct usb_sevsegdev {int textmode; int mode_msb; int mode_lsb; int /*<<< orphan*/  udev; struct usb_interface* intf; } ;
struct TYPE_3__ {int /*<<< orphan*/  kobj; } ;
struct usb_interface {TYPE_1__ dev; } ;
struct usb_device_id {int dummy; } ;
struct usb_device {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  dev_attr_grp ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char*) ; 
 struct usb_device* FUNC2 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC3 (struct usb_sevsegdev*) ; 
 struct usb_sevsegdev* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct usb_device*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct usb_interface*,struct usb_sevsegdev*) ; 

__attribute__((used)) static int FUNC9(struct usb_interface *interface,
	const struct usb_device_id *id)
{
	struct usb_device *udev = FUNC2(interface);
	struct usb_sevsegdev *mydev = NULL;
	int rc = -ENOMEM;

	mydev = FUNC4(sizeof(struct usb_sevsegdev), GFP_KERNEL);
	if (mydev == NULL) {
		FUNC0(&interface->dev, "Out of memory\n");
		goto error_mem;
	}

	mydev->udev = FUNC6(udev);
	mydev->intf = interface;
	FUNC8(interface, mydev);

	/*set defaults */
	mydev->textmode = 0x02; /* ascii mode */
	mydev->mode_msb = 0x06; /* 6 characters */
	mydev->mode_lsb = 0x3f; /* scanmode for 6 chars */

	rc = FUNC5(&interface->dev.kobj, &dev_attr_grp);
	if (rc)
		goto error;

	FUNC1(&interface->dev, "USB 7 Segment device now attached\n");
	return 0;

error:
	FUNC8(interface, NULL);
	FUNC7(mydev->udev);
	FUNC3(mydev);
error_mem:
	return rc;
}