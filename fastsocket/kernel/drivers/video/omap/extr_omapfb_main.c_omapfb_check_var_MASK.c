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
struct omapfb_plane_struct {struct omapfb_device* fbdev; } ;
struct omapfb_device {TYPE_1__* ctrl; } ;
struct fb_var_screeninfo {int dummy; } ;
struct fb_info {struct omapfb_plane_struct* par; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* sync ) () ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct omapfb_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct omapfb_device*) ; 
 int FUNC2 (struct fb_info*,struct fb_var_screeninfo*) ; 
 int /*<<< orphan*/  FUNC3 () ; 

__attribute__((used)) static int FUNC4(struct fb_var_screeninfo *var, struct fb_info *fbi)
{
	struct omapfb_plane_struct *plane = fbi->par;
	struct omapfb_device *fbdev = plane->fbdev;
	int r;

	FUNC0(fbdev);
	if (fbdev->ctrl->sync != NULL)
		fbdev->ctrl->sync();
	r = FUNC2(fbi, var);
	FUNC1(fbdev);

	return r;
}