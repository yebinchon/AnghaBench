#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct par_info {int width; int ramdac; int pitch; int fetch; int /*<<< orphan*/  extseqmisc; int /*<<< orphan*/  co_pixfmt; } ;
struct TYPE_4__ {int /*<<< orphan*/  length; } ;
struct fb_var_screeninfo {int xres_virtual; int bits_per_pixel; unsigned int yres_virtual; TYPE_1__ green; } ;
struct fb_info {int dummy; } ;
struct TYPE_5__ {int line_length; unsigned int smem_len; int /*<<< orphan*/  visual; } ;
struct TYPE_6__ {TYPE_2__ fix; struct fb_var_screeninfo var; } ;
struct cfb_info {int mem_ctl2; TYPE_3__ fb; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  CO_PIXFMT_16BPP ; 
 int /*<<< orphan*/  CO_PIXFMT_24BPP ; 
 int /*<<< orphan*/  CO_PIXFMT_32BPP ; 
 int /*<<< orphan*/  CO_PIXFMT_8BPP ; 
 int /*<<< orphan*/  EXT_SEQ_MISC_16_RGB444 ; 
 int /*<<< orphan*/  EXT_SEQ_MISC_16_RGB555 ; 
 int /*<<< orphan*/  EXT_SEQ_MISC_16_RGB565 ; 
 int /*<<< orphan*/  EXT_SEQ_MISC_24_RGB888 ; 
 int /*<<< orphan*/  EXT_SEQ_MISC_32 ; 
 int /*<<< orphan*/  EXT_SEQ_MISC_8 ; 
 int /*<<< orphan*/  FB_VISUAL_DIRECTCOLOR ; 
 int /*<<< orphan*/  FB_VISUAL_PSEUDOCOLOR ; 
 int /*<<< orphan*/  FB_VISUAL_TRUECOLOR ; 
 int MEM_CTL2_64BIT ; 
 int RAMDAC_BYPASS ; 
 int RAMDAC_DAC8BIT ; 
 int RAMDAC_RAMPWRDN ; 
 int RAMDAC_VREFEN ; 
 scalar_t__ FUNC2 (struct par_info*,struct cfb_info*,struct fb_var_screeninfo*) ; 
 scalar_t__ FUNC3 (struct par_info*,struct cfb_info*,struct fb_var_screeninfo*) ; 
 int /*<<< orphan*/  FUNC4 (struct cfb_info*,struct par_info*) ; 
 int /*<<< orphan*/  FUNC5 (struct cfb_info*,struct fb_var_screeninfo*) ; 

__attribute__((used)) static int FUNC6(struct fb_info *info)
{
	struct cfb_info *cfb = (struct cfb_info *)info;
	struct fb_var_screeninfo *var = &cfb->fb.var;
	struct par_info hw;
	unsigned int mem;

	hw.width = var->xres_virtual;
	hw.ramdac = RAMDAC_VREFEN | RAMDAC_DAC8BIT;

	switch (var->bits_per_pixel) {
	case 8:
		hw.co_pixfmt		= CO_PIXFMT_8BPP;
		hw.pitch		= hw.width >> 3;
		hw.extseqmisc		= EXT_SEQ_MISC_8;
		break;

	case 16:
		hw.co_pixfmt		= CO_PIXFMT_16BPP;
		hw.pitch		= hw.width >> 2;

		switch (var->green.length) {
		case 6: /* RGB565, 64k */
			hw.extseqmisc	= EXT_SEQ_MISC_16_RGB565;
			break;
		case 5: /* RGB555, 32k */
			hw.extseqmisc	= EXT_SEQ_MISC_16_RGB555;
			break;
		case 4: /* RGB444, 4k + transparency? */
			hw.extseqmisc	= EXT_SEQ_MISC_16_RGB444;
			break;
		default:
			FUNC0();
		}
		break;

	case 24:/* TRUECOLOUR, 16m */
		hw.co_pixfmt		= CO_PIXFMT_24BPP;
		hw.width		*= 3;
		hw.pitch		= hw.width >> 3;
		hw.ramdac		|= (RAMDAC_BYPASS | RAMDAC_RAMPWRDN);
		hw.extseqmisc		= EXT_SEQ_MISC_24_RGB888;
		break;

	case 32:/* TRUECOLOUR, 16m */
		hw.co_pixfmt		= CO_PIXFMT_32BPP;
		hw.pitch		= hw.width >> 1;
		hw.ramdac		|= (RAMDAC_BYPASS | RAMDAC_RAMPWRDN);
		hw.extseqmisc		= EXT_SEQ_MISC_32;
		break;

	default:
		FUNC0();
	}

	/*
	 * Sigh, this is absolutely disgusting, but caused by
	 * the way the fbcon developers want to separate out
	 * the "checking" and the "setting" of the video mode.
	 *
	 * If the mode is not suitable for the hardware here,
	 * we can't prevent it being set by returning an error.
	 *
	 * In theory, since NetWinders contain just one VGA card,
	 * we should never end up hitting this problem.
	 */
	FUNC1(FUNC2(&hw, cfb, var) != 0);
	FUNC1(FUNC3(&hw, cfb, var) != 0);

	hw.width -= 1;
	hw.fetch = hw.pitch;
	if (!(cfb->mem_ctl2 & MEM_CTL2_64BIT))
		hw.fetch <<= 1;
	hw.fetch += 1;

	cfb->fb.fix.line_length = var->xres_virtual * var->bits_per_pixel / 8;

	/*
	 * Same here - if the size of the video mode exceeds the
	 * available RAM, we can't prevent this mode being set.
	 *
	 * In theory, since NetWinders contain just one VGA card,
	 * we should never end up hitting this problem.
	 */
	mem = cfb->fb.fix.line_length * var->yres_virtual;
	FUNC1(mem > cfb->fb.fix.smem_len);

	/*
	 * 8bpp displays are always pseudo colour.  16bpp and above
	 * are direct colour or true colour, depending on whether
	 * the RAMDAC palettes are bypassed.  (Direct colour has
	 * palettes, true colour does not.)
	 */
	if (var->bits_per_pixel == 8)
		cfb->fb.fix.visual = FB_VISUAL_PSEUDOCOLOR;
	else if (hw.ramdac & RAMDAC_BYPASS)
		cfb->fb.fix.visual = FB_VISUAL_TRUECOLOR;
	else
		cfb->fb.fix.visual = FB_VISUAL_DIRECTCOLOR;

	FUNC4(cfb, &hw);
	FUNC5(cfb, var);

	return 0;
}