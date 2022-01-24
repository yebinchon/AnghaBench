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
struct device_driver {scalar_t__ name; } ;
struct device {struct device_driver* driver; } ;

/* Variables and functions */
 scalar_t__ NAME_MAX_LEN ; 
 struct device_driver* current_driver ; 
 int /*<<< orphan*/ * current_driver_name ; 
 int /*<<< orphan*/  driver_name_lock ; 
 struct device_driver* FUNC0 (struct device_driver*) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct device_driver*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,scalar_t__,scalar_t__) ; 

__attribute__((used)) static bool FUNC6(struct device *dev)
{
	struct device_driver *drv;
	unsigned long flags;
	bool ret;

	/* driver filter off */
	if (FUNC1(!current_driver_name[0]))
		return true;

	/* driver filter on and initialized */
	if (current_driver && dev && dev->driver == current_driver)
		return true;

	/* driver filter on, but we can't filter on a NULL device... */
	if (!dev)
		return false;

	if (current_driver || !current_driver_name[0])
		return false;

	/* driver filter on but not yet initialized */
	drv = FUNC0(dev->driver);
	if (!drv)
		return false;

	/* lock to protect against change of current_driver_name */
	FUNC3(&driver_name_lock, flags);

	ret = false;
	if (drv->name &&
	    FUNC5(current_driver_name, drv->name, NAME_MAX_LEN - 1) == 0) {
		current_driver = drv;
		ret = true;
	}

	FUNC4(&driver_name_lock, flags);
	FUNC2(drv);

	return ret;
}