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
struct usb_tranzport {int open_count; int /*<<< orphan*/  sem; scalar_t__ interrupt_out_busy; int /*<<< orphan*/  write_wait; int /*<<< orphan*/ * intf; } ;
struct inode {int dummy; } ;
struct file {struct usb_tranzport* private_data; } ;

/* Variables and functions */
 int ENODEV ; 
 int ERESTARTSYS ; 
 int HZ ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct usb_tranzport*) ; 
 int /*<<< orphan*/  FUNC3 (struct usb_tranzport*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static int FUNC5(struct inode *inode, struct file *file)
{
	struct usb_tranzport *dev;
	int retval = 0;

	dev = file->private_data;

	if (dev == NULL) {
		retval = -ENODEV;
		goto exit;
	}

	if (FUNC0(&dev->sem)) {
		retval = -ERESTARTSYS;
		goto exit;
	}

	if (dev->open_count != 1) {
		retval = -ENODEV;
		goto unlock_exit;
	}

	if (dev->intf == NULL) {
		/* the device was unplugged before the file was released */
		FUNC1(&dev->sem);
		/* unlock here as usb_tranzport_delete frees dev */
		FUNC3(dev);
		retval = -ENODEV;
		goto exit;
	}

	/* wait until write transfer is finished */
	if (dev->interrupt_out_busy)
		FUNC4(dev->write_wait,
						!dev->interrupt_out_busy,
						2 * HZ);
	FUNC2(dev);
	dev->open_count = 0;

unlock_exit:
	FUNC1(&dev->sem);

exit:
	return retval;
}