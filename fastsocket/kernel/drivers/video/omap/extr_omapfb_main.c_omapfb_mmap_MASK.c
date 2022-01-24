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
struct vm_area_struct {int dummy; } ;
struct omapfb_plane_struct {struct omapfb_device* fbdev; } ;
struct omapfb_device {TYPE_1__* ctrl; } ;
struct fb_info {struct omapfb_plane_struct* par; } ;
struct TYPE_2__ {int (* mmap ) (struct fb_info*,struct vm_area_struct*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct omapfb_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct omapfb_device*) ; 
 int FUNC2 (struct fb_info*,struct vm_area_struct*) ; 

__attribute__((used)) static int FUNC3(struct fb_info *info, struct vm_area_struct *vma)
{
	struct omapfb_plane_struct *plane = info->par;
	struct omapfb_device *fbdev = plane->fbdev;
	int r;

	FUNC0(fbdev);
	r = fbdev->ctrl->mmap(info, vma);
	FUNC1(fbdev);

	return r;
}