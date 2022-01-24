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
struct fb_videomode {int dummy; } ;
struct fb_info {int /*<<< orphan*/  modelist; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 struct fb_info* FUNC2 (struct device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (struct fb_info*) ; 
 int /*<<< orphan*/  FUNC5 (struct fb_videomode const*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  old_list ; 
 int /*<<< orphan*/  FUNC7 () ; 

__attribute__((used)) static ssize_t FUNC8(struct device *device,
			   struct device_attribute *attr,
			   const char *buf, size_t count)
{
	struct fb_info *fb_info = FUNC2(device);
	FUNC0(old_list);
	int i = count / sizeof(struct fb_videomode);

	if (i * sizeof(struct fb_videomode) != count)
		return -EINVAL;

	FUNC1();
	FUNC6(&fb_info->modelist, &old_list);
	FUNC5((const struct fb_videomode *)buf, i,
				 &fb_info->modelist);
	if (FUNC4(fb_info)) {
		FUNC3(&fb_info->modelist);
		FUNC6(&old_list, &fb_info->modelist);
	} else
		FUNC3(&old_list);

	FUNC7();

	return 0;
}