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
 int /*<<< orphan*/  dev_bin_attr_descriptors ; 
 int /*<<< orphan*/  FUNC0 (struct device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*) ; 

void FUNC3(struct usb_device *udev)
{
	struct device *dev = &udev->dev;

	FUNC2(dev);
	FUNC1(dev);
	FUNC0(dev, &dev_bin_attr_descriptors);
}