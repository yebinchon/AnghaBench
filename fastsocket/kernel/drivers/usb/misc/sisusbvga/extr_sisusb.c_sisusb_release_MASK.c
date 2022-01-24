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
struct sisusb_usb_data {int /*<<< orphan*/  kref; int /*<<< orphan*/  lock; scalar_t__ isopen; scalar_t__ present; } ;
struct inode {int dummy; } ;
struct file {int /*<<< orphan*/ * private_data; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  sisusb_delete ; 
 int /*<<< orphan*/  FUNC3 (struct sisusb_usb_data*) ; 
 int /*<<< orphan*/  FUNC4 (struct sisusb_usb_data*) ; 

__attribute__((used)) static int
FUNC5(struct inode *inode, struct file *file)
{
	struct sisusb_usb_data *sisusb;

	if (!(sisusb = (struct sisusb_usb_data *)file->private_data))
		return -ENODEV;

	FUNC1(&sisusb->lock);

	if (sisusb->present) {
		/* Wait for all URBs to finish if device still present */
		if (!FUNC4(sisusb))
			FUNC3(sisusb);
	}

	sisusb->isopen = 0;
	file->private_data = NULL;

	FUNC2(&sisusb->lock);

	/* decrement the usage count on our device */
	FUNC0(&sisusb->kref, sisusb_delete);

	return 0;
}