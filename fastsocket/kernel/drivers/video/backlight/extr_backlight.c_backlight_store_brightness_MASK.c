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
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_2__ {unsigned long max_brightness; unsigned long brightness; } ;
struct backlight_device {int /*<<< orphan*/  ops_lock; TYPE_1__ props; scalar_t__ ops; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  BACKLIGHT_UPDATE_SYSFS ; 
 int EINVAL ; 
 int ENXIO ; 
 int /*<<< orphan*/  FUNC0 (struct backlight_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct backlight_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,unsigned long) ; 
 int FUNC5 (char const*,int /*<<< orphan*/ ,unsigned long*) ; 
 struct backlight_device* FUNC6 (struct device*) ; 

__attribute__((used)) static ssize_t FUNC7(struct device *dev,
		struct device_attribute *attr, const char *buf, size_t count)
{
	int rc;
	struct backlight_device *bd = FUNC6(dev);
	unsigned long brightness;

	rc = FUNC5(buf, 0, &brightness);
	if (rc)
		return rc;

	rc = -ENXIO;

	FUNC2(&bd->ops_lock);
	if (bd->ops) {
		if (brightness > bd->props.max_brightness)
			rc = -EINVAL;
		else {
			FUNC4("backlight: set brightness to %lu\n",
				 brightness);
			bd->props.brightness = brightness;
			FUNC1(bd);
			rc = count;
		}
	}
	FUNC3(&bd->ops_lock);

	FUNC0(bd, BACKLIGHT_UPDATE_SYSFS);

	return rc;
}