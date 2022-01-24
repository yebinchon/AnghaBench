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
struct backlight_device {int /*<<< orphan*/  ops_lock; TYPE_1__* ops; } ;
typedef  int ssize_t ;
struct TYPE_2__ {int (* get_brightness ) (struct backlight_device*) ;} ;

/* Variables and functions */
 int ENXIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (char*,char*,int) ; 
 int FUNC3 (struct backlight_device*) ; 
 int FUNC4 (struct backlight_device*) ; 
 struct backlight_device* FUNC5 (struct device*) ; 

__attribute__((used)) static ssize_t FUNC6(struct device *dev,
		struct device_attribute *attr, char *buf)
{
	int rc = -ENXIO;
	struct backlight_device *bd = FUNC5(dev);

	FUNC0(&bd->ops_lock);
	if (bd->ops && bd->ops->get_brightness)
		rc = FUNC2(buf, "%d\n", bd->ops->get_brightness(bd));
	FUNC1(&bd->ops_lock);

	return rc;
}