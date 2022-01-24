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
struct usb_device {int dummy; } ;
struct inode {int dummy; } ;
struct file {struct dev_state* private_data; } ;
struct dev_state {int /*<<< orphan*/  disc_pid; scalar_t__ ifclaimed; int /*<<< orphan*/  list; struct usb_device* dev; } ;
struct async {int dummy; } ;

/* Variables and functions */
 struct async* FUNC0 (struct dev_state*) ; 
 int /*<<< orphan*/  FUNC1 (struct dev_state*) ; 
 int /*<<< orphan*/  FUNC2 (struct async*) ; 
 int /*<<< orphan*/  FUNC3 (struct dev_state*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct dev_state*,unsigned int) ; 
 scalar_t__ FUNC9 (unsigned int,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC10 (struct usb_device*) ; 
 int /*<<< orphan*/  FUNC11 (struct usb_device*,struct dev_state*) ; 
 int /*<<< orphan*/  FUNC12 (struct usb_device*) ; 
 int /*<<< orphan*/  FUNC13 (struct usb_device*) ; 
 int /*<<< orphan*/  FUNC14 (struct usb_device*) ; 
 int /*<<< orphan*/  usbfs_mutex ; 

__attribute__((used)) static int FUNC15(struct inode *inode, struct file *file)
{
	struct dev_state *ps = file->private_data;
	struct usb_device *dev = ps->dev;
	unsigned int ifnum;
	struct async *as;

	FUNC12(dev);
	FUNC11(dev, ps);

	/* Protect against simultaneous open */
	FUNC5(&usbfs_mutex);
	FUNC4(&ps->list);
	FUNC6(&usbfs_mutex);

	for (ifnum = 0; ps->ifclaimed && ifnum < 8*sizeof(ps->ifclaimed);
			ifnum++) {
		if (FUNC9(ifnum, &ps->ifclaimed))
			FUNC8(ps, ifnum);
	}
	FUNC1(ps);
	FUNC10(dev);
	FUNC14(dev);
	FUNC13(dev);
	FUNC7(ps->disc_pid);

	as = FUNC0(ps);
	while (as) {
		FUNC2(as);
		as = FUNC0(ps);
	}
	FUNC3(ps);
	return 0;
}