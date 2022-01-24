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
struct fb_videomode {int xres; } ;
struct fb_var_screeninfo {int bits_per_pixel; } ;
struct TYPE_2__ {int line_length; } ;
struct fb_info {int /*<<< orphan*/  device; struct fb_videomode* mode; TYPE_1__ fix; struct fb_var_screeninfo var; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct fb_info*) ; 
 struct fb_videomode* FUNC1 (struct fb_info*,struct fb_var_screeninfo*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct fb_info *info)
{
	struct fb_var_screeninfo *var = &info->var;
	struct fb_videomode *mode;

	mode = FUNC1(info, var);
	if (!mode)
		return -EINVAL;

	info->mode = mode;
	info->fix.line_length = info->mode->xres *
			var->bits_per_pixel / 8;

	FUNC2(FUNC3(info->device));
	FUNC0(info);
	return 0;
}