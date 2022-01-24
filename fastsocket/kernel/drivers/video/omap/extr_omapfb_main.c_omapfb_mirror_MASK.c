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
struct TYPE_2__ {int mirror; } ;
struct omapfb_plane_struct {TYPE_1__ info; struct omapfb_device* fbdev; } ;
struct omapfb_device {int dummy; } ;
struct fb_info {struct omapfb_plane_struct* par; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 () ; 
 int FUNC1 (struct fb_info*) ; 
 int /*<<< orphan*/  FUNC2 (struct omapfb_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct omapfb_device*) ; 

__attribute__((used)) static int FUNC4(struct fb_info *fbi, int mirror)
{
	struct omapfb_plane_struct *plane = fbi->par;
	struct omapfb_device *fbdev = plane->fbdev;
	int r = 0;

	FUNC2(fbdev);
	mirror = mirror ? 1 : 0;
	if (FUNC0())
		r = -EINVAL;
	else if (mirror != plane->info.mirror) {
		plane->info.mirror = mirror;
		r = FUNC1(fbi);
	}
	FUNC3(fbdev);

	return r;
}