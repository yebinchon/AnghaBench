#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct fb_info {int dummy; } ;
struct fb_copyarea {int width; int height; unsigned long sx; unsigned long sy; unsigned long dx; unsigned long dy; } ;
struct TYPE_3__ {int accel_flags; unsigned long xres_virtual; int bits_per_pixel; } ;
struct TYPE_4__ {TYPE_1__ var; } ;
struct cfb_info {TYPE_2__ fb; } ;

/* Variables and functions */
 unsigned int CO_CMD_H_BLITTER ; 
 unsigned int CO_CMD_H_FGSRCMAP ; 
 unsigned int CO_CMD_L_INC_LEFT ; 
 unsigned int CO_CMD_L_INC_UP ; 
 unsigned int CO_CMD_L_PATTERN_FGCOL ; 
 unsigned int CO_FG_MIX_SRC ; 
 int /*<<< orphan*/  CO_REG_CMD_H ; 
 int /*<<< orphan*/  CO_REG_CMD_L ; 
 int /*<<< orphan*/  CO_REG_CONTROL ; 
 int /*<<< orphan*/  CO_REG_DEST_PTR ; 
 int /*<<< orphan*/  CO_REG_FGMIX ; 
 int /*<<< orphan*/  CO_REG_PIXHEIGHT ; 
 int /*<<< orphan*/  CO_REG_PIXWIDTH ; 
 int /*<<< orphan*/  CO_REG_SRC1_PTR ; 
 int /*<<< orphan*/  CO_REG_X_PHASE ; 
 int FB_ACCELF_TEXT ; 
 int /*<<< orphan*/  FUNC0 (struct fb_info*,struct fb_copyarea const*) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long,int /*<<< orphan*/ ,struct cfb_info*) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long,int /*<<< orphan*/ ,struct cfb_info*) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int,int /*<<< orphan*/ ,struct cfb_info*) ; 

__attribute__((used)) static void
FUNC4(struct fb_info *info, const struct fb_copyarea *region)
{
	struct cfb_info *cfb = (struct cfb_info *)info;
	unsigned int cmd = CO_CMD_L_PATTERN_FGCOL;
	unsigned long src, dst;

	if (!(cfb->fb.var.accel_flags & FB_ACCELF_TEXT)) {
		FUNC0(info, region);
		return;
	}

	FUNC1(0, CO_REG_CONTROL, cfb);
	FUNC3(region->width - 1, CO_REG_PIXWIDTH, cfb);
	FUNC3(region->height - 1, CO_REG_PIXHEIGHT, cfb);

	src = region->sx + region->sy * cfb->fb.var.xres_virtual;
	dst = region->dx + region->dy * cfb->fb.var.xres_virtual;

	if (region->sx < region->dx) {
		src += region->width - 1;
		dst += region->width - 1;
		cmd |= CO_CMD_L_INC_LEFT;
	}

	if (region->sy < region->dy) {
		src += (region->height - 1) * cfb->fb.var.xres_virtual;
		dst += (region->height - 1) * cfb->fb.var.xres_virtual;
		cmd |= CO_CMD_L_INC_UP;
	}

	if (cfb->fb.var.bits_per_pixel == 24) {
		FUNC1(dst, CO_REG_X_PHASE, cfb);
		src *= 3;
		dst *= 3;
	}
	FUNC2(src, CO_REG_SRC1_PTR, cfb);
	FUNC2(dst, CO_REG_DEST_PTR, cfb);
	FUNC3(CO_FG_MIX_SRC, CO_REG_FGMIX, cfb);
	FUNC3(cmd, CO_REG_CMD_L, cfb);
	FUNC3(CO_CMD_H_FGSRCMAP | CO_CMD_H_BLITTER,
			   CO_REG_CMD_H, cfb);
}