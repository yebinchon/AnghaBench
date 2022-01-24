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
struct usb_device_id {int dummy; } ;
struct usb_device {int dummy; } ;
struct trancevibrator {int /*<<< orphan*/  udev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  dev_attr_speed ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct usb_device* FUNC2 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC3 (struct trancevibrator*) ; 
 struct trancevibrator* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct usb_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct usb_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct usb_interface*,struct trancevibrator*) ; 

__attribute__((used)) static int FUNC8(struct usb_interface *interface,
		    const struct usb_device_id *id)
{
	struct usb_device *udev = FUNC2(interface);
	struct trancevibrator *dev;
	int retval;

	dev = FUNC4(sizeof(struct trancevibrator), GFP_KERNEL);
	if (dev == NULL) {
		FUNC0(&interface->dev, "Out of memory\n");
		retval = -ENOMEM;
		goto error;
	}

	dev->udev = FUNC5(udev);
	FUNC7(interface, dev);
	retval = FUNC1(&interface->dev, &dev_attr_speed);
	if (retval)
		goto error_create_file;

	return 0;

error_create_file:
	FUNC6(udev);
	FUNC7(interface, NULL);
error:
	FUNC3(dev);
	return retval;
}