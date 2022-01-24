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
struct fb_var_screeninfo {int rotate; } ;
struct omapfb_device {struct fb_var_screeninfo new_var; } ;
struct fb_info {struct fb_var_screeninfo var; struct omapfb_plane_struct* par; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct fb_info*) ; 
 scalar_t__ FUNC1 (struct fb_var_screeninfo*,struct fb_var_screeninfo*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct fb_var_screeninfo*,struct fb_var_screeninfo*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct omapfb_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct omapfb_device*) ; 
 scalar_t__ FUNC5 (struct fb_info*,struct fb_var_screeninfo*) ; 

__attribute__((used)) static void FUNC6(struct fb_info *fbi, int rotate)
{
	struct omapfb_plane_struct *plane = fbi->par;
	struct omapfb_device *fbdev = plane->fbdev;

	FUNC3(fbdev);
	if (rotate != fbi->var.rotate) {
		struct fb_var_screeninfo *new_var = &fbdev->new_var;

		FUNC2(new_var, &fbi->var, sizeof(*new_var));
		new_var->rotate = rotate;
		if (FUNC5(fbi, new_var) == 0 &&
		    FUNC1(new_var, &fbi->var, sizeof(*new_var))) {
			FUNC2(&fbi->var, new_var, sizeof(*new_var));
			FUNC0(fbi);
		}
	}
	FUNC4(fbdev);
}