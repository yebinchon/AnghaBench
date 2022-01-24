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
typedef  unsigned int u32 ;
struct fb_info {int dummy; } ;
struct TYPE_5__ {scalar_t__ visual; } ;
struct TYPE_4__ {int /*<<< orphan*/  red; int /*<<< orphan*/  green; int /*<<< orphan*/  blue; int /*<<< orphan*/  transp; } ;
struct TYPE_6__ {TYPE_2__ fix; TYPE_1__ var; } ;
struct clcd_fb {int* cmap; int clcd_cntl; scalar_t__ regs; TYPE_3__ fb; } ;

/* Variables and functions */
 unsigned int CLCD_PALETTE ; 
 int CNTL_BEBO ; 
 scalar_t__ FB_VISUAL_PSEUDOCOLOR ; 
 int FUNC0 (unsigned int,int /*<<< orphan*/ *) ; 
 unsigned int FUNC1 (scalar_t__) ; 
 struct clcd_fb* FUNC2 (struct fb_info*) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int,scalar_t__) ; 

__attribute__((used)) static int
FUNC4(unsigned int regno, unsigned int red, unsigned int green,
		 unsigned int blue, unsigned int transp, struct fb_info *info)
{
	struct clcd_fb *fb = FUNC2(info);

	if (regno < 16)
		fb->cmap[regno] = FUNC0(transp, &fb->fb.var.transp) |
				  FUNC0(blue, &fb->fb.var.blue) |
				  FUNC0(green, &fb->fb.var.green) |
				  FUNC0(red, &fb->fb.var.red);

	if (fb->fb.fix.visual == FB_VISUAL_PSEUDOCOLOR && regno < 256) {
		int hw_reg = CLCD_PALETTE + ((regno * 2) & ~3);
		u32 val, mask, newval;

		newval  = (red >> 11)  & 0x001f;
		newval |= (green >> 6) & 0x03e0;
		newval |= (blue >> 1)  & 0x7c00;

		/*
		 * 3.2.11: if we're configured for big endian
		 * byte order, the palette entries are swapped.
		 */
		if (fb->clcd_cntl & CNTL_BEBO)
			regno ^= 1;

		if (regno & 1) {
			newval <<= 16;
			mask = 0x0000ffff;
		} else {
			mask = 0xffff0000;
		}

		val = FUNC1(fb->regs + hw_reg) & mask;
		FUNC3(val | newval, fb->regs + hw_reg);
	}

	return regno > 255;
}