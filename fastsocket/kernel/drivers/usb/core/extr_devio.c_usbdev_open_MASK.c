#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct usb_device {scalar_t__ state; int /*<<< orphan*/  dev; int /*<<< orphan*/  filelist; TYPE_1__* usbfs_dentry; } ;
struct inode {struct usb_device* i_private; int /*<<< orphan*/  i_rdev; } ;
struct file {struct dev_state* private_data; } ;
struct dev_state {int /*<<< orphan*/  list; int /*<<< orphan*/  secid; scalar_t__ ifclaimed; int /*<<< orphan*/ * disccontext; int /*<<< orphan*/  disc_euid; int /*<<< orphan*/  disc_uid; int /*<<< orphan*/  disc_pid; scalar_t__ discsignr; int /*<<< orphan*/  wait; int /*<<< orphan*/  async_completed; int /*<<< orphan*/  async_pending; int /*<<< orphan*/  lock; struct file* file; struct usb_device* dev; } ;
struct cred {int /*<<< orphan*/  euid; int /*<<< orphan*/  uid; } ;
struct TYPE_7__ {int /*<<< orphan*/  comm; } ;
struct TYPE_6__ {struct inode* d_inode; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ USB_DEVICE_MAJOR ; 
 scalar_t__ USB_STATE_NOTATTACHED ; 
 TYPE_2__* current ; 
 struct cred* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct inode*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct dev_state*) ; 
 struct dev_state* FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC17 () ; 
 int FUNC18 (struct usb_device*) ; 
 int /*<<< orphan*/  FUNC19 (struct usb_device*) ; 
 int /*<<< orphan*/  FUNC20 (struct usb_device*) ; 
 struct usb_device* FUNC21 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  usbfs_mutex ; 

__attribute__((used)) static int FUNC22(struct inode *inode, struct file *file)
{
	struct usb_device *dev = NULL;
	struct dev_state *ps;
	const struct cred *cred = FUNC1();
	int ret;

	FUNC8();
	/* Protect against simultaneous removal or release */
	FUNC9(&usbfs_mutex);

	ret = -ENOMEM;
	ps = FUNC6(sizeof(struct dev_state), GFP_KERNEL);
	if (!ps)
		goto out;

	ret = -ENODEV;

	/* usbdev device-node */
	if (FUNC3(inode) == USB_DEVICE_MAJOR)
		dev = FUNC21(inode->i_rdev);
#ifdef CONFIG_USB_DEVICEFS
	/* procfs file */
	if (!dev) {
		dev = inode->i_private;
		if (dev && dev->usbfs_dentry &&
					dev->usbfs_dentry->d_inode == inode)
			usb_get_dev(dev);
		else
			dev = NULL;
	}
#endif
	if (!dev || dev->state == USB_STATE_NOTATTACHED)
		goto out;
	ret = FUNC18(dev);
	if (ret)
		goto out;

	ret = 0;
	ps->dev = dev;
	ps->file = file;
	FUNC14(&ps->lock);
	FUNC0(&ps->list);
	FUNC0(&ps->async_pending);
	FUNC0(&ps->async_completed);
	FUNC4(&ps->wait);
	ps->discsignr = 0;
	ps->disc_pid = FUNC2(FUNC15(current));
	ps->disc_uid = cred->uid;
	ps->disc_euid = cred->euid;
	ps->disccontext = NULL;
	ps->ifclaimed = 0;
	FUNC11(current, &ps->secid);
	FUNC12();
	FUNC7(&ps->list, &dev->filelist);
	file->private_data = ps;
	FUNC13(&dev->dev, "opened by process %d: %s\n", FUNC16(current),
			current->comm);
 out:
	if (ret) {
		FUNC5(ps);
		FUNC20(dev);
	}
	FUNC10(&usbfs_mutex);
	FUNC17();
	return ret;
}