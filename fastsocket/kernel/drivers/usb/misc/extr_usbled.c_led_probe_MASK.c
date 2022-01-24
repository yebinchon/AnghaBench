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
struct usb_led {int /*<<< orphan*/  udev; } ;
struct usb_interface {int /*<<< orphan*/  dev; } ;
struct usb_device_id {int dummy; } ;
struct usb_device {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  dev_attr_blue ; 
 int /*<<< orphan*/  dev_attr_green ; 
 int /*<<< orphan*/  dev_attr_red ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct usb_device* FUNC4 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC5 (struct usb_led*) ; 
 struct usb_led* FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct usb_device*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct usb_interface*,struct usb_led*) ; 

__attribute__((used)) static int FUNC10(struct usb_interface *interface, const struct usb_device_id *id)
{
	struct usb_device *udev = FUNC4(interface);
	struct usb_led *dev = NULL;
	int retval = -ENOMEM;

	dev = FUNC6(sizeof(struct usb_led), GFP_KERNEL);
	if (dev == NULL) {
		FUNC0(&interface->dev, "Out of memory\n");
		goto error_mem;
	}

	dev->udev = FUNC7(udev);

	FUNC9 (interface, dev);

	retval = FUNC2(&interface->dev, &dev_attr_blue);
	if (retval)
		goto error;
	retval = FUNC2(&interface->dev, &dev_attr_red);
	if (retval)
		goto error;
	retval = FUNC2(&interface->dev, &dev_attr_green);
	if (retval)
		goto error;

	FUNC1(&interface->dev, "USB LED device now attached\n");
	return 0;

error:
	FUNC3(&interface->dev, &dev_attr_blue);
	FUNC3(&interface->dev, &dev_attr_red);
	FUNC3(&interface->dev, &dev_attr_green);
	FUNC9 (interface, NULL);
	FUNC8(dev->udev);
	FUNC5(dev);
error_mem:
	return retval;
}