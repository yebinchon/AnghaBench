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
struct usb_interface {struct device dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  dev_attr_active ; 
 int /*<<< orphan*/  dev_attr_bank ; 
 int /*<<< orphan*/  dev_attr_dump ; 
 int /*<<< orphan*/  dev_attr_model ; 
 int /*<<< orphan*/  dev_attr_name ; 
 int /*<<< orphan*/  dev_attr_raw ; 
 int /*<<< orphan*/  dev_attr_raw2 ; 
 int /*<<< orphan*/  dev_attr_tone ; 
 int /*<<< orphan*/  dev_attr_volume ; 
 int /*<<< orphan*/  FUNC0 (struct device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct device*) ; 

void FUNC3(struct usb_interface *interface)
{
	struct device *dev;

	if (interface == NULL)
		return;
	dev = &interface->dev;

	if (dev != NULL) {
		/* remove sysfs entries: */
		FUNC2(0, 0, dev);
		FUNC0(dev, &dev_attr_model);
		FUNC0(dev, &dev_attr_volume);
		FUNC0(dev, &dev_attr_tone);
		FUNC0(dev, &dev_attr_name);
		FUNC0(dev, &dev_attr_bank);
		FUNC0(dev, &dev_attr_dump);
		FUNC0(dev, &dev_attr_active);
#if CREATE_RAW_FILE
		device_remove_file(dev, &dev_attr_raw);
		device_remove_file(dev, &dev_attr_raw2);
#endif
	}

	FUNC1(interface);
}