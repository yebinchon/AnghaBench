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
typedef  int u8 ;
typedef  int u32 ;
struct svga_timing_regs {int /*<<< orphan*/  v_sync_end_regs; int /*<<< orphan*/  v_sync_start_regs; int /*<<< orphan*/  v_blank_end_regs; int /*<<< orphan*/  v_blank_start_regs; int /*<<< orphan*/  v_display_regs; int /*<<< orphan*/  v_total_regs; int /*<<< orphan*/  h_sync_end_regs; int /*<<< orphan*/  h_sync_start_regs; int /*<<< orphan*/  h_blank_end_regs; int /*<<< orphan*/  h_blank_start_regs; int /*<<< orphan*/  h_display_regs; int /*<<< orphan*/  h_total_regs; } ;
struct fb_var_screeninfo {int xres; int left_margin; int right_margin; int hsync_len; int yres; int upper_margin; int lower_margin; int vsync_len; int sync; } ;

/* Variables and functions */
 int FB_SYNC_HOR_HIGH_ACT ; 
 int FB_SYNC_VERT_HIGH_ACT ; 
 int /*<<< orphan*/  VGA_MIS_R ; 
 int /*<<< orphan*/  VGA_MIS_W ; 
 int /*<<< orphan*/  FUNC0 (char*,int,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

void FUNC4(const struct svga_timing_regs *tm, struct fb_var_screeninfo *var,
			u32 hmul, u32 hdiv, u32 vmul, u32 vdiv, u32 hborder, int node)
{
	u8 regval;
	u32 value;

	value = var->xres + var->left_margin + var->right_margin + var->hsync_len;
	value = (value * hmul) / hdiv;
	FUNC0("fb%d: horizontal total      : %d\n", node, value);
	FUNC1(tm->h_total_regs, (value / 8) - 5);

	value = var->xres;
	value = (value * hmul) / hdiv;
	FUNC0("fb%d: horizontal display    : %d\n", node, value);
	FUNC1(tm->h_display_regs, (value / 8) - 1);

	value = var->xres;
	value = (value * hmul) / hdiv;
	FUNC0("fb%d: horizontal blank start: %d\n", node, value);
	FUNC1(tm->h_blank_start_regs, (value / 8) - 1 + hborder);

	value = var->xres + var->left_margin + var->right_margin + var->hsync_len;
	value = (value * hmul) / hdiv;
	FUNC0("fb%d: horizontal blank end  : %d\n", node, value);
	FUNC1(tm->h_blank_end_regs, (value / 8) - 1 - hborder);

	value = var->xres + var->right_margin;
	value = (value * hmul) / hdiv;
	FUNC0("fb%d: horizontal sync start : %d\n", node, value);
	FUNC1(tm->h_sync_start_regs, (value / 8));

	value = var->xres + var->right_margin + var->hsync_len;
	value = (value * hmul) / hdiv;
	FUNC0("fb%d: horizontal sync end   : %d\n", node, value);
	FUNC1(tm->h_sync_end_regs, (value / 8));

	value = var->yres + var->upper_margin + var->lower_margin + var->vsync_len;
	value = (value * vmul) / vdiv;
	FUNC0("fb%d: vertical total        : %d\n", node, value);
	FUNC1(tm->v_total_regs, value - 2);

	value = var->yres;
	value = (value * vmul) / vdiv;
	FUNC0("fb%d: vertical display      : %d\n", node, value);
	FUNC1(tm->v_display_regs, value - 1);

	value = var->yres;
	value = (value * vmul) / vdiv;
	FUNC0("fb%d: vertical blank start  : %d\n", node, value);
	FUNC1(tm->v_blank_start_regs, value);

	value = var->yres + var->upper_margin + var->lower_margin + var->vsync_len;
	value = (value * vmul) / vdiv;
	FUNC0("fb%d: vertical blank end    : %d\n", node, value);
	FUNC1(tm->v_blank_end_regs, value - 2);

	value = var->yres + var->lower_margin;
	value = (value * vmul) / vdiv;
	FUNC0("fb%d: vertical sync start   : %d\n", node, value);
	FUNC1(tm->v_sync_start_regs, value);

	value = var->yres + var->lower_margin + var->vsync_len;
	value = (value * vmul) / vdiv;
	FUNC0("fb%d: vertical sync end     : %d\n", node, value);
	FUNC1(tm->v_sync_end_regs, value);

	/* Set horizontal and vertical sync pulse polarity in misc register */

	regval = FUNC2(NULL, VGA_MIS_R);
	if (var->sync & FB_SYNC_HOR_HIGH_ACT) {
		FUNC0("fb%d: positive horizontal sync\n", node);
		regval = regval & ~0x80;
	} else {
		FUNC0("fb%d: negative horizontal sync\n", node);
		regval = regval | 0x80;
	}
	if (var->sync & FB_SYNC_VERT_HIGH_ACT) {
		FUNC0("fb%d: positive vertical sync\n", node);
		regval = regval & ~0x40;
	} else {
		FUNC0("fb%d: negative vertical sync\n\n", node);
		regval = regval | 0x40;
	}
	FUNC3(NULL, VGA_MIS_W, regval);
}