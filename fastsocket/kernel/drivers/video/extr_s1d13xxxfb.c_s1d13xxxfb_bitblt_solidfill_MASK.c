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
typedef  int u32 ;
typedef  int u16 ;
struct TYPE_4__ {int bits_per_pixel; int xres; int /*<<< orphan*/  yres; } ;
struct TYPE_3__ {scalar_t__ visual; } ;
struct fb_info {int /*<<< orphan*/  par; TYPE_2__ var; scalar_t__ pseudo_palette; TYPE_1__ fix; } ;
struct fb_fillrect {int dy; int dx; int width; int height; int rop; size_t color; } ;

/* Variables and functions */
 int BBLT_SOLID_FILL ; 
 scalar_t__ FB_VISUAL_DIRECTCOLOR ; 
 scalar_t__ FB_VISUAL_TRUECOLOR ; 
 int /*<<< orphan*/  S1DREG_BBLT_CTL0 ; 
 int /*<<< orphan*/  S1DREG_BBLT_CTL1 ; 
 int /*<<< orphan*/  S1DREG_BBLT_DST_START0 ; 
 int /*<<< orphan*/  S1DREG_BBLT_DST_START1 ; 
 int /*<<< orphan*/  S1DREG_BBLT_DST_START2 ; 
 int /*<<< orphan*/  S1DREG_BBLT_FGC0 ; 
 int /*<<< orphan*/  S1DREG_BBLT_FGC1 ; 
 int /*<<< orphan*/  S1DREG_BBLT_HEIGHT0 ; 
 int /*<<< orphan*/  S1DREG_BBLT_HEIGHT1 ; 
 int /*<<< orphan*/  S1DREG_BBLT_MEM_OFF0 ; 
 int /*<<< orphan*/  S1DREG_BBLT_MEM_OFF1 ; 
 int /*<<< orphan*/  S1DREG_BBLT_OP ; 
 int /*<<< orphan*/  S1DREG_BBLT_WIDTH0 ; 
 int /*<<< orphan*/  S1DREG_BBLT_WIDTH1 ; 
 int /*<<< orphan*/  FUNC0 (struct fb_info*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  s1d13xxxfb_bitblt_lock ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC5(struct fb_info *info, const struct fb_fillrect *rect)
{
	u32 screen_stride, dest;
	u32 fg;
	u16 bpp = (info->var.bits_per_pixel >> 3);

	/* grab spinlock */
	FUNC3(&s1d13xxxfb_bitblt_lock);

	/* bytes per x width */
	screen_stride = (bpp * info->var.xres);

	/* bytes to starting point */
	dest = ((rect->dy * screen_stride) + (bpp * rect->dx));

	FUNC1("(solidfill) dx=%d, dy=%d, stride=%d, dest=%d\n"
		 "(solidfill) : rect_width=%d, rect_height=%d\n",
				rect->dx, rect->dy, screen_stride, dest,
				rect->width - 1, rect->height - 1);

	FUNC1("(solidfill) : xres=%d, yres=%d, bpp=%d\n",
				info->var.xres, info->var.yres,
				info->var.bits_per_pixel);
	FUNC1("(solidfill) : rop=%d\n", rect->rop);

	/* We split the destination into the three registers */
	FUNC2(info->par, S1DREG_BBLT_DST_START0, (dest & 0x00ff));
	FUNC2(info->par, S1DREG_BBLT_DST_START1, ((dest >> 8) & 0x00ff));
	FUNC2(info->par, S1DREG_BBLT_DST_START2, ((dest >> 16) & 0x00ff));

	/* give information regarding rectangel width */
	FUNC2(info->par, S1DREG_BBLT_WIDTH0, ((rect->width) & 0x00ff) - 1);
	FUNC2(info->par, S1DREG_BBLT_WIDTH1, (rect->width >> 8));

	/* give information regarding rectangel height */
	FUNC2(info->par, S1DREG_BBLT_HEIGHT0, ((rect->height) & 0x00ff) - 1);
	FUNC2(info->par, S1DREG_BBLT_HEIGHT1, (rect->height >> 8));

	if (info->fix.visual == FB_VISUAL_TRUECOLOR ||
		info->fix.visual == FB_VISUAL_DIRECTCOLOR) {
		fg = ((u32 *)info->pseudo_palette)[rect->color];
		FUNC1("(solidfill) truecolor/directcolor\n");
		FUNC1("(solidfill) pseudo_palette[%d] = %d\n", rect->color, fg);
	} else {
		fg = rect->color;
		FUNC1("(solidfill) color = %d\n", rect->color);
	}

	/* set foreground color */
	FUNC2(info->par, S1DREG_BBLT_FGC0, (fg & 0xff));
	FUNC2(info->par, S1DREG_BBLT_FGC1, (fg >> 8) & 0xff);

	/* set rectangual region of memory (rectangle and not linear) */
	FUNC2(info->par, S1DREG_BBLT_CTL0, 0x0);

	/* set operation mode SOLID_FILL */
	FUNC2(info->par, S1DREG_BBLT_OP, BBLT_SOLID_FILL);

	/* set bits per pixel (1 = 16bpp, 0 = 8bpp) */
	FUNC2(info->par, S1DREG_BBLT_CTL1, (info->var.bits_per_pixel >> 4));

	/* set the memory offset for the bblt in word sizes */
	FUNC2(info->par, S1DREG_BBLT_MEM_OFF0, (screen_stride >> 1) & 0x00ff);
	FUNC2(info->par, S1DREG_BBLT_MEM_OFF1, (screen_stride >> 9));

	/* and away we go.... */
	FUNC2(info->par, S1DREG_BBLT_CTL0, 0x80);

	/* wait until its done */
	FUNC0(info, 0x80, 8000);

	/* let others play */
	FUNC4(&s1d13xxxfb_bitblt_lock);
}