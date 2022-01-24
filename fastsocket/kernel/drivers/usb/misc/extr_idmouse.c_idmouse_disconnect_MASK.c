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
struct usb_interface {int /*<<< orphan*/  dev; } ;
struct usb_idmouse {int /*<<< orphan*/  lock; int /*<<< orphan*/  open; scalar_t__ present; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  idmouse_class ; 
 int /*<<< orphan*/  FUNC1 (struct usb_idmouse*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  open_disc_mutex ; 
 int /*<<< orphan*/  FUNC4 (struct usb_interface*,int /*<<< orphan*/ *) ; 
 struct usb_idmouse* FUNC5 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC6 (struct usb_interface*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(struct usb_interface *interface)
{
	struct usb_idmouse *dev;

	/* get device structure */
	dev = FUNC5(interface);

	/* give back our minor */
	FUNC4(interface, &idmouse_class);

	FUNC2(&open_disc_mutex);
	FUNC6(interface, NULL);
	/* lock the device */
	FUNC2(&dev->lock);
	FUNC3(&open_disc_mutex);

	/* prevent device read, write and ioctl */
	dev->present = 0;

	/* if the device is opened, idmouse_release will clean this up */
	if (!dev->open) {
		FUNC3(&dev->lock);
		FUNC1(dev);
	} else {
		/* unlock */
		FUNC3(&dev->lock);
	}

	FUNC0(&interface->dev, "disconnected\n");
}