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
struct iowarrior {int minor; int /*<<< orphan*/  write_wait; int /*<<< orphan*/  read_wait; int /*<<< orphan*/  int_in_urb; scalar_t__ opened; int /*<<< orphan*/  mutex; scalar_t__ present; } ;

/* Variables and functions */
 scalar_t__ IOWARRIOR_MINOR_BASE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,scalar_t__) ; 
 int /*<<< orphan*/  iowarrior_class ; 
 int /*<<< orphan*/  FUNC1 (struct iowarrior*) ; 
 int /*<<< orphan*/  iowarrior_open_disc_lock ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct usb_interface*,int /*<<< orphan*/ *) ; 
 struct iowarrior* FUNC5 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct usb_interface*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC9(struct usb_interface *interface)
{
	struct iowarrior *dev;
	int minor;

	dev = FUNC5(interface);
	FUNC2(&iowarrior_open_disc_lock);
	FUNC7(interface, NULL);

	minor = dev->minor;

	/* give back our minor */
	FUNC4(interface, &iowarrior_class);

	FUNC2(&dev->mutex);

	/* prevent device read, write and ioctl */
	dev->present = 0;

	FUNC3(&dev->mutex);
	FUNC3(&iowarrior_open_disc_lock);

	if (dev->opened) {
		/* There is a process that holds a filedescriptor to the device ,
		   so we only shutdown read-/write-ops going on.
		   Deleting the device is postponed until close() was called.
		 */
		FUNC6(dev->int_in_urb);
		FUNC8(&dev->read_wait);
		FUNC8(&dev->write_wait);
	} else {
		/* no process is using the device, cleanup now */
		FUNC1(dev);
	}

	FUNC0(&interface->dev, "I/O-Warror #%d now disconnected\n",
		 minor - IOWARRIOR_MINOR_BASE);
}