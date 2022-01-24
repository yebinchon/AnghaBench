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
struct omapfb_device {int dummy; } ;
struct fb_info {struct omapfb_plane_struct* par; } ;

/* Variables and functions */
 int FUNC0 (struct fb_info*) ; 
 int /*<<< orphan*/  FUNC1 (struct omapfb_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct omapfb_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct fb_info*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct fb_info *fbi)
{
	struct omapfb_plane_struct *plane = fbi->par;
	struct omapfb_device *fbdev = plane->fbdev;
	int r = 0;

	FUNC1(fbdev);
	FUNC3(fbi, 0);
	r = FUNC0(fbi);
	FUNC2(fbdev);

	return r;
}