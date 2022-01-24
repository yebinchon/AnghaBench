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
struct wdm_device {TYPE_1__* intf; int /*<<< orphan*/  plock; int /*<<< orphan*/  count; int /*<<< orphan*/  validity; int /*<<< orphan*/  flags; } ;
struct usb_interface {int needs_remote_wakeup; } ;
struct inode {int dummy; } ;
struct file {struct wdm_device* private_data; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  WDM_DISCONNECTING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 struct usb_interface* FUNC7 (int /*<<< orphan*/ *,int) ; 
 struct wdm_device* FUNC8 (struct usb_interface*) ; 
 int FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  wdm_driver ; 
 int /*<<< orphan*/  wdm_mutex ; 

__attribute__((used)) static int FUNC10(struct inode *inode, struct file *file)
{
	int minor = FUNC1(inode);
	int rv = -ENODEV;
	struct usb_interface *intf;
	struct wdm_device *desc;

	FUNC2(&wdm_mutex);
	intf = FUNC7(&wdm_driver, minor);
	if (!intf)
		goto out;

	desc = FUNC8(intf);
	if (FUNC4(WDM_DISCONNECTING, &desc->flags))
		goto out;
	file->private_data = desc;

	rv = FUNC5(desc->intf);
	if (rv < 0) {
		FUNC0(&desc->intf->dev, "Error autopm - %d\n", rv);
		goto out;
	}
	intf->needs_remote_wakeup = 1;

	FUNC2(&desc->plock);
	if (!desc->count++) {
		rv = FUNC9(desc->validity, GFP_KERNEL);
		if (rv < 0) {
			desc->count--;
			FUNC0(&desc->intf->dev,
				"Error submitting int urb - %d\n", rv);
		}
	} else {
		rv = 0;
	}
	FUNC3(&desc->plock);
	FUNC6(desc->intf);
out:
	FUNC3(&wdm_mutex);
	return rv;
}