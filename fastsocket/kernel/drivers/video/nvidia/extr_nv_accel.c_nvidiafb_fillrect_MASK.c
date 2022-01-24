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
typedef  int u32 ;
struct nvidia_par {scalar_t__ lockup; } ;
struct TYPE_2__ {int bits_per_pixel; } ;
struct fb_info {scalar_t__ state; scalar_t__ pseudo_palette; TYPE_1__ var; struct nvidia_par* par; } ;
struct fb_fillrect {int color; scalar_t__ rop; int dx; int dy; int width; int height; } ;

/* Variables and functions */
 scalar_t__ FBINFO_STATE_RUNNING ; 
 int /*<<< orphan*/  FUNC0 (struct nvidia_par*) ; 
 int /*<<< orphan*/  FUNC1 (struct nvidia_par*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct fb_info*,struct nvidia_par*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct fb_info*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RECT_SOLID_COLOR ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ ROP_COPY ; 
 int /*<<< orphan*/  FUNC5 (struct fb_info*,struct fb_fillrect const*) ; 

void FUNC6(struct fb_info *info, const struct fb_fillrect *rect)
{
	struct nvidia_par *par = info->par;
	u32 color;

	if (info->state != FBINFO_STATE_RUNNING)
		return;

	if (par->lockup) {
		FUNC5(info, rect);
		return;
	}

	if (info->var.bits_per_pixel == 8)
		color = rect->color;
	else
		color = ((u32 *) info->pseudo_palette)[rect->color];

	if (rect->rop != ROP_COPY)
		FUNC3(info, rect->rop, ~0);

	FUNC2(info, par, RECT_SOLID_COLOR, 1);
	FUNC1(par, color);

	FUNC2(info, par, FUNC4(0), 2);
	FUNC1(par, (rect->dx << 16) | rect->dy);
	FUNC1(par, (rect->width << 16) | rect->height);

	FUNC0(par);

	if (rect->rop != ROP_COPY)
		FUNC3(info, ROP_COPY, ~0);
}