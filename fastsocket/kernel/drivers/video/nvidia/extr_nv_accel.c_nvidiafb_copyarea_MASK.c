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
struct nvidia_par {scalar_t__ lockup; } ;
struct fb_info {scalar_t__ state; struct nvidia_par* par; } ;
struct fb_copyarea {int sy; int sx; int dy; int dx; int height; int width; } ;

/* Variables and functions */
 int /*<<< orphan*/  BLIT_POINT_SRC ; 
 scalar_t__ FBINFO_STATE_RUNNING ; 
 int /*<<< orphan*/  FUNC0 (struct nvidia_par*) ; 
 int /*<<< orphan*/  FUNC1 (struct nvidia_par*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct fb_info*,struct nvidia_par*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct fb_info*,struct fb_copyarea const*) ; 

void FUNC4(struct fb_info *info, const struct fb_copyarea *region)
{
	struct nvidia_par *par = info->par;

	if (info->state != FBINFO_STATE_RUNNING)
		return;

	if (par->lockup) {
		FUNC3(info, region);
		return;
	}

	FUNC2(info, par, BLIT_POINT_SRC, 3);
	FUNC1(par, (region->sy << 16) | region->sx);
	FUNC1(par, (region->dy << 16) | region->dx);
	FUNC1(par, (region->height << 16) | region->width);

	FUNC0(par);
}