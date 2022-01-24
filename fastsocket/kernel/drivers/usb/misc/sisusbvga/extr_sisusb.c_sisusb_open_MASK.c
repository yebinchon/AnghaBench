#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct usb_interface {int dummy; } ;
struct sisusb_usb_data {int isopen; int /*<<< orphan*/  lock; int /*<<< orphan*/  kref; TYPE_1__* sisusb_dev; int /*<<< orphan*/  devinit; int /*<<< orphan*/  ready; int /*<<< orphan*/  present; } ;
struct inode {int dummy; } ;
struct file {struct sisusb_usb_data* private_data; } ;
struct TYPE_2__ {scalar_t__ speed; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EBUSY ; 
 int EIO ; 
 int ENODEV ; 
 scalar_t__ USB_SPEED_HIGH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  sisusb_driver ; 
 scalar_t__ FUNC5 (struct sisusb_usb_data*,int /*<<< orphan*/ ) ; 
 struct usb_interface* FUNC6 (int /*<<< orphan*/ *,int) ; 
 struct sisusb_usb_data* FUNC7 (struct usb_interface*) ; 

__attribute__((used)) static int
FUNC8(struct inode *inode, struct file *file)
{
	struct sisusb_usb_data *sisusb;
	struct usb_interface *interface;
	int subminor = FUNC1(inode);

	if (!(interface = FUNC6(&sisusb_driver, subminor)))
		return -ENODEV;

	if (!(sisusb = FUNC7(interface)))
		return -ENODEV;

	FUNC3(&sisusb->lock);

	if (!sisusb->present || !sisusb->ready) {
		FUNC4(&sisusb->lock);
		return -ENODEV;
	}

	if (sisusb->isopen) {
		FUNC4(&sisusb->lock);
		return -EBUSY;
	}

	if (!sisusb->devinit) {
		if (sisusb->sisusb_dev->speed == USB_SPEED_HIGH) {
			if (FUNC5(sisusb, 0)) {
				FUNC4(&sisusb->lock);
				FUNC0(&sisusb->sisusb_dev->dev, "Failed to initialize device\n");
				return -EIO;
			}
		} else {
			FUNC4(&sisusb->lock);
			FUNC0(&sisusb->sisusb_dev->dev, "Device not attached to USB 2.0 hub\n");
			return -EIO;
		}
	}

	/* Increment usage count for our sisusb */
	FUNC2(&sisusb->kref);

	sisusb->isopen = 1;

	file->private_data = sisusb;

	FUNC4(&sisusb->lock);

	return 0;
}