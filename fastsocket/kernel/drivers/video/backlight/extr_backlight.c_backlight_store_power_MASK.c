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
struct TYPE_2__ {unsigned long power; } ;
struct backlight_device {int /*<<< orphan*/  ops_lock; TYPE_1__ props; scalar_t__ ops; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int ENXIO ; 
 int /*<<< orphan*/  FUNC0 (struct backlight_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,unsigned long) ; 
 int FUNC4 (char const*,int /*<<< orphan*/ ,unsigned long*) ; 
 struct backlight_device* FUNC5 (struct device*) ; 

__attribute__((used)) static ssize_t FUNC6(struct device *dev,
		struct device_attribute *attr, const char *buf, size_t count)
{
	int rc;
	struct backlight_device *bd = FUNC5(dev);
	unsigned long power;

	rc = FUNC4(buf, 0, &power);
	if (rc)
		return rc;

	rc = -ENXIO;
	FUNC1(&bd->ops_lock);
	if (bd->ops) {
		FUNC3("backlight: set power to %lu\n", power);
		if (bd->props.power != power) {
			bd->props.power = power;
			FUNC0(bd);
		}
		rc = count;
	}
	FUNC2(&bd->ops_lock);

	return rc;
}