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
struct usb_skel {int /*<<< orphan*/  kref; int /*<<< orphan*/  io_mutex; scalar_t__ interface; int /*<<< orphan*/  open_count; } ;
struct inode {int dummy; } ;
struct file {scalar_t__ private_data; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  skel_delete ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 

__attribute__((used)) static int FUNC4(struct inode *inode, struct file *file)
{
	struct usb_skel *dev;

	dev = (struct usb_skel *)file->private_data;
	if (dev == NULL)
		return -ENODEV;

	/* allow the device to be autosuspended */
	FUNC1(&dev->io_mutex);
	if (!--dev->open_count && dev->interface)
		FUNC3(dev->interface);
	FUNC2(&dev->io_mutex);

	/* decrement the count on our device */
	FUNC0(&dev->kref, skel_delete);
	return 0;
}