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
struct TYPE_2__ {int /*<<< orphan*/  gmc_brush_datatype; int /*<<< orphan*/  gmc_rop3; } ;
union dp_gui_master_cntl_u {int val; TYPE_1__ f; } ;
struct fb_info {scalar_t__ state; int flags; } ;
struct fb_fillrect {int color; int dy; int dx; int width; int height; } ;

/* Variables and functions */
 int FBINFO_HWACCEL_DISABLED ; 
 scalar_t__ FBINFO_STATE_RUNNING ; 
 int /*<<< orphan*/  GMC_BRUSH_SOLID_COLOR ; 
 int /*<<< orphan*/  ROP3_PATCOPY ; 
 int /*<<< orphan*/  FUNC0 (struct fb_info*,struct fb_fillrect const*) ; 
 scalar_t__ mmDP_BRUSH_FRGD_CLR ; 
 scalar_t__ mmDP_GUI_MASTER_CNTL ; 
 scalar_t__ mmDST_WIDTH_HEIGHT ; 
 scalar_t__ mmDST_Y_X ; 
 int FUNC1 (scalar_t__) ; 
 scalar_t__ remapped_regs ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC4(struct fb_info *info,
                            const struct fb_fillrect *rect)
{
	union dp_gui_master_cntl_u gmc;

	if (info->state != FBINFO_STATE_RUNNING)
		return;
	if (info->flags & FBINFO_HWACCEL_DISABLED) {
		FUNC0(info, rect);
		return;
	}

	gmc.val = FUNC1(remapped_regs + mmDP_GUI_MASTER_CNTL);
	gmc.f.gmc_rop3 = ROP3_PATCOPY;
	gmc.f.gmc_brush_datatype = GMC_BRUSH_SOLID_COLOR;
	FUNC2(2);
	FUNC3(gmc.val, remapped_regs + mmDP_GUI_MASTER_CNTL);
	FUNC3(rect->color, remapped_regs + mmDP_BRUSH_FRGD_CLR);

	FUNC2(2);
	FUNC3((rect->dy << 16) | (rect->dx & 0xffff), remapped_regs + mmDST_Y_X);
	FUNC3((rect->width << 16) | (rect->height & 0xffff),
	       remapped_regs + mmDST_WIDTH_HEIGHT);
}