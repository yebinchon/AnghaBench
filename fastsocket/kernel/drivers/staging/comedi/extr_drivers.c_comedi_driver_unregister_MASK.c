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
struct comedi_driver {struct comedi_driver* next; } ;
struct comedi_device_file_info {struct comedi_device* device; } ;
struct comedi_device {int /*<<< orphan*/  mutex; scalar_t__ use_count; struct comedi_driver* driver; scalar_t__ attached; } ;

/* Variables and functions */
 int COMEDI_NUM_BOARD_MINORS ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct comedi_device*) ; 
 struct comedi_driver* comedi_drivers ; 
 struct comedi_device_file_info* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,scalar_t__) ; 

int FUNC5(struct comedi_driver *driver)
{
	struct comedi_driver *prev;
	int i;

	/* check for devices using this driver */
	for (i = 0; i < COMEDI_NUM_BOARD_MINORS; i++) {
		struct comedi_device_file_info *dev_file_info =
		    FUNC1(i);
		struct comedi_device *dev;

		if (dev_file_info == NULL)
			continue;
		dev = dev_file_info->device;

		FUNC2(&dev->mutex);
		if (dev->attached && dev->driver == driver) {
			if (dev->use_count)
				FUNC4
				    ("BUG! detaching device with use_count=%d\n",
				     dev->use_count);
			FUNC0(dev);
		}
		FUNC3(&dev->mutex);
	}

	if (comedi_drivers == driver) {
		comedi_drivers = driver->next;
		return 0;
	}

	for (prev = comedi_drivers; prev->next; prev = prev->next) {
		if (prev->next == driver) {
			prev->next = driver->next;
			return 0;
		}
	}
	return -EINVAL;
}