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
struct device {int dummy; } ;
struct usb_device {struct device dev; } ;

/* Variables and functions */
 int FUNC0 (struct device*) ; 
 int FUNC1 (struct device*) ; 
 int /*<<< orphan*/  dev_bin_attr_descriptors ; 
 int FUNC2 (struct device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct usb_device*) ; 

int FUNC4(struct usb_device *udev)
{
	struct device *dev = &udev->dev;
	int retval;

	retval = FUNC2(dev, &dev_bin_attr_descriptors);
	if (retval)
		goto error;

	retval = FUNC0(dev);
	if (retval)
		goto error;

	retval = FUNC1(dev);
	if (retval)
		goto error;
	return retval;
error:
	FUNC3(udev);
	return retval;
}