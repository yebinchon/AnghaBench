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
struct fb_info {int /*<<< orphan*/  flags; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  FBINFO_MISC_USEREVENT ; 
 int /*<<< orphan*/  FUNC0 () ; 
 struct fb_info* FUNC1 (struct device*) ; 
 int FUNC2 (struct fb_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (char const*,char**,int /*<<< orphan*/ ) ; 

__attribute__((used)) static ssize_t FUNC5(struct device *device,
			   struct device_attribute *attr,
			   const char *buf, size_t count)
{
	struct fb_info *fb_info = FUNC1(device);
	char *last = NULL;
	int err;

	FUNC0();
	fb_info->flags |= FBINFO_MISC_USEREVENT;
	err = FUNC2(fb_info, FUNC4(buf, &last, 0));
	fb_info->flags &= ~FBINFO_MISC_USEREVENT;
	FUNC3();
	if (err < 0)
		return err;
	return count;
}