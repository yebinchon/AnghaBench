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
typedef  int ushort ;
typedef  int u32 ;
struct pixclock_div {int /*<<< orphan*/  p; int /*<<< orphan*/  n; int /*<<< orphan*/  m; } ;
struct TYPE_4__ {int length; } ;
struct fb_var_screeninfo {int xres_virtual; int bits_per_pixel; int xres; int yres; int hsync_len; int left_margin; int right_margin; int vsync_len; int upper_margin; int lower_margin; int /*<<< orphan*/  pixclock; TYPE_2__ green; } ;
struct TYPE_3__ {int line_length; int /*<<< orphan*/  visual; } ;
struct fb_info {struct fb_var_screeninfo var; TYPE_1__ fix; int /*<<< orphan*/  cmap; } ;

/* Variables and functions */
 int /*<<< orphan*/  DHDET ; 
 int /*<<< orphan*/  DHT01 ; 
 int /*<<< orphan*/  DHT02 ; 
 int /*<<< orphan*/  DHT03 ; 
 int /*<<< orphan*/  DINTRE ; 
 int DINTRE_VEVENT0_EN ; 
 int /*<<< orphan*/  DISPPLL ; 
 int DISP_PLL_EN ; 
 int /*<<< orphan*/  DSCTRL ; 
 int DSCTRL_SYNCGEN_EN ; 
 int /*<<< orphan*/  DVDET ; 
 int /*<<< orphan*/  DVECTRL ; 
 int /*<<< orphan*/  DVT01 ; 
 int /*<<< orphan*/  DVT02 ; 
 int /*<<< orphan*/  DVT03 ; 
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int FUNC2 (int) ; 
 int FUNC3 (int) ; 
 int FUNC4 (int) ; 
 int FUNC5 (int) ; 
 int FUNC6 (int) ; 
 int FUNC7 (int) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 int FUNC10 (int /*<<< orphan*/ ) ; 
 int FUNC11 (int) ; 
 int FUNC12 (int) ; 
 int FUNC13 (int) ; 
 int FUNC14 (int) ; 
 int FUNC15 (int) ; 
 int FUNC16 (int) ; 
 int FUNC17 (int) ; 
 int FUNC18 (int) ; 
 int FUNC19 (int) ; 
 int FUNC20 (int) ; 
 int EINVAL ; 
 int /*<<< orphan*/  FB_VISUAL_TRUECOLOR ; 
 int FUNC21 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GSADR ; 
 int /*<<< orphan*/  GSADR_SRCSTRIDE ; 
 int /*<<< orphan*/  GSCTRL ; 
 int /*<<< orphan*/  GSCTRL_GPIXFMT ; 
 int GSCTRL_GPIXFMT_ARGB1555 ; 
 int GSCTRL_GPIXFMT_ARGB8888 ; 
 int GSCTRL_GPIXFMT_RGB565 ; 
 int GSCTRL_GPIXFMT_RGB888 ; 
 int /*<<< orphan*/  GSCTRL_GSHEIGHT ; 
 int /*<<< orphan*/  GSCTRL_GSWIDTH ; 
 int GSCTRL_LUT_EN ; 
 int FUNC22 (int) ; 
 int FUNC23 (int) ; 
 int FUNC24 (int) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ ,struct pixclock_div*) ; 
 int FUNC27 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC28 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC29(struct fb_info *info)
{
	struct fb_var_screeninfo *var = &info->var;
	struct pixclock_div div;
	ushort hbps, ht, hfps, has;
	ushort vbps, vt, vfps, vas;
	u32 gsctrl = FUNC27(GSCTRL);
	u32 gsadr = FUNC27(GSADR);

	info->fix.line_length = var->xres_virtual * var->bits_per_pixel / 8;

	/* setup color mode */
	gsctrl &= ~(FUNC21(GSCTRL_GPIXFMT));
	/* FIXME: add *WORKING* support for 8-bits per color */
	if (info->var.bits_per_pixel == 8) {
		return -EINVAL;
	} else {
		FUNC25(&info->cmap);
		gsctrl &= ~GSCTRL_LUT_EN;

		info->fix.visual = FB_VISUAL_TRUECOLOR;
		switch (info->var.bits_per_pixel) {
		case 16:
			if (info->var.green.length == 5)
				gsctrl |= GSCTRL_GPIXFMT_ARGB1555;
			else
				gsctrl |= GSCTRL_GPIXFMT_RGB565;
			break;
		case 24:
			gsctrl |= GSCTRL_GPIXFMT_RGB888;
			break;
		case 32:
			gsctrl |= GSCTRL_GPIXFMT_ARGB8888;
			break;
		}
	}

	/* setup resolution */
	gsctrl &= ~(FUNC21(GSCTRL_GSWIDTH) | FUNC21(GSCTRL_GSHEIGHT));
	gsctrl |= FUNC24(info->var.xres) |
		FUNC23(info->var.yres);
	FUNC28(gsctrl, GSCTRL);

	gsadr &= ~(FUNC21(GSADR_SRCSTRIDE));
	gsadr |= FUNC22(info->var.xres * info->var.bits_per_pixel /
				 (8 * 16) - 1);
	FUNC28(gsadr, GSADR);

	/* setup timings */
	var->pixclock = FUNC26(info->var.pixclock, &div);

	FUNC28((FUNC8(div.m) | FUNC9(div.n) |
		FUNC10(div.p) | DISP_PLL_EN), DISPPLL);

	hbps = var->hsync_len;
	has = hbps + var->left_margin;
	hfps = has + var->xres;
	ht = hfps + var->right_margin;

	vbps = var->vsync_len;
	vas = vbps + var->upper_margin;
	vfps = vas + var->yres;
	vt = vfps + var->lower_margin;

	FUNC28((FUNC2(hbps) | FUNC3(ht)), DHT01);
	FUNC28((FUNC5(has) | FUNC4(has)), DHT02);
	FUNC28((FUNC6(hfps) | FUNC7(hfps)), DHT03);
	FUNC28((FUNC1(has) | FUNC0(hfps)), DHDET);

	FUNC28((FUNC15(vbps) | FUNC16(vt)), DVT01);
	FUNC28((FUNC18(vas) | FUNC17(vas)), DVT02);
	FUNC28((FUNC20(vfps) | FUNC19(vfps)), DVT03);
	FUNC28((FUNC12(vas) | FUNC11(vfps)), DVDET);
	FUNC28((FUNC13(vfps) | FUNC14(vbps)), DVECTRL);

	FUNC28((FUNC27(DSCTRL) | DSCTRL_SYNCGEN_EN), DSCTRL);

	FUNC28(DINTRE_VEVENT0_EN, DINTRE);

	return 0;
}