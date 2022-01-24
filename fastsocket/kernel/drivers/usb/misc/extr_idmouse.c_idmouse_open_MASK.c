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
struct usb_idmouse {int /*<<< orphan*/  lock; scalar_t__ open; } ;
struct inode {int dummy; } ;
struct file {struct usb_idmouse* private_data; } ;

/* Variables and functions */
 int EBUSY ; 
 int ENODEV ; 
 int FUNC0 (struct usb_idmouse*) ; 
 int /*<<< orphan*/  idmouse_driver ; 
 int /*<<< orphan*/  FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  open_disc_mutex ; 
 int FUNC4 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC5 (struct usb_interface*) ; 
 struct usb_interface* FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct usb_idmouse* FUNC7 (struct usb_interface*) ; 

__attribute__((used)) static int FUNC8(struct inode *inode, struct file *file)
{
	struct usb_idmouse *dev;
	struct usb_interface *interface;
	int result;

	/* get the interface from minor number and driver information */
	interface = FUNC6 (&idmouse_driver, FUNC1 (inode));
	if (!interface)
		return -ENODEV;

	FUNC2(&open_disc_mutex);
	/* get the device information block from the interface */
	dev = FUNC7(interface);
	if (!dev) {
		FUNC3(&open_disc_mutex);
		return -ENODEV;
	}

	/* lock this device */
	FUNC2(&dev->lock);
	FUNC3(&open_disc_mutex);

	/* check if already open */
	if (dev->open) {

		/* already open, so fail */
		result = -EBUSY;

	} else {

		/* create a new image and check for success */
		result = FUNC4(interface);
		if (result)
			goto error;
		result = FUNC0 (dev);
		if (result)
			goto error;
		FUNC5(interface);

		/* increment our usage count for the driver */
		++dev->open;

		/* save our object in the file's private structure */
		file->private_data = dev;

	} 

error:

	/* unlock this device */
	FUNC3(&dev->lock);
	return result;
}