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
struct omapfb_plane_struct {struct omapfb_device* fbdev; } ;
struct fb_var_screeninfo {scalar_t__ xoffset; scalar_t__ yoffset; } ;
struct omapfb_device {struct fb_var_screeninfo new_var; } ;
struct fb_info {struct fb_var_screeninfo var; struct omapfb_plane_struct* par; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct fb_info*) ; 
 int /*<<< orphan*/  FUNC1 (struct fb_var_screeninfo*,struct fb_var_screeninfo*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct omapfb_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct omapfb_device*) ; 
 scalar_t__ FUNC4 (struct fb_info*,struct fb_var_screeninfo*) ; 

__attribute__((used)) static int FUNC5(struct fb_var_screeninfo *var,
			       struct fb_info *fbi)
{
	struct omapfb_plane_struct *plane = fbi->par;
	struct omapfb_device *fbdev = plane->fbdev;
	int r = 0;

	FUNC2(fbdev);
	if (var->xoffset != fbi->var.xoffset ||
	    var->yoffset != fbi->var.yoffset) {
		struct fb_var_screeninfo *new_var = &fbdev->new_var;

		FUNC1(new_var, &fbi->var, sizeof(*new_var));
		new_var->xoffset = var->xoffset;
		new_var->yoffset = var->yoffset;
		if (FUNC4(fbi, new_var))
			r = -EINVAL;
		else {
			FUNC1(&fbi->var, new_var, sizeof(*new_var));
			FUNC0(fbi);
		}
	}
	FUNC3(fbdev);

	return r;
}