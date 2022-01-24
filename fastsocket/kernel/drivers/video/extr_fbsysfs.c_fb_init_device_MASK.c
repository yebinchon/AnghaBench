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
struct fb_info {int /*<<< orphan*/  class_flag; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FB_SYSFS_FLAG_ATTR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct fb_info*) ; 
 int /*<<< orphan*/ * device_attrs ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int FUNC4(struct fb_info *fb_info)
{
	int i, error = 0;

	FUNC1(fb_info->dev, fb_info);

	fb_info->class_flag |= FB_SYSFS_FLAG_ATTR;

	for (i = 0; i < FUNC0(device_attrs); i++) {
		error = FUNC2(fb_info->dev, &device_attrs[i]);

		if (error)
			break;
	}

	if (error) {
		while (--i >= 0)
			FUNC3(fb_info->dev, &device_attrs[i]);
		fb_info->class_flag &= ~FB_SYSFS_FLAG_ATTR;
	}

	return 0;
}