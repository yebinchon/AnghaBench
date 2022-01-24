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
typedef  int u8 ;
struct TYPE_4__ {int offset; } ;
struct TYPE_6__ {int bits_per_pixel; int xres; TYPE_1__ red; int /*<<< orphan*/  pixclock; } ;
struct TYPE_5__ {int line_length; int /*<<< orphan*/  visual; } ;
struct fb_info {TYPE_3__ var; TYPE_2__ fix; } ;

/* Variables and functions */
 int /*<<< orphan*/  FB_VISUAL_PSEUDOCOLOR ; 
 int /*<<< orphan*/  FB_VISUAL_TRUECOLOR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int*,int*,int*) ; 
 int /*<<< orphan*/  FUNC1 (struct fb_info*) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 

__attribute__((used)) static int FUNC3(struct fb_info *p)
{
	u8 dclk2_m;		/* Holds m-2 value for register */
	u8 dclk2_n;		/* Holds n-2 value for register */
	u8 dclk2_div;		/* Holds divisor bitmask */

	/* Set pixclock */
	FUNC0(&p->var.pixclock, &dclk2_m, &dclk2_n, &dclk2_div);

	/* Set color depth */
	if (p->var.bits_per_pixel == 24) {
		FUNC2(0x81, 0x16);	/* 24 bit packed color mode */
		FUNC2(0x82, 0x00);	/* Disable palettes */
		FUNC2(0x20, 0x20);	/* 24 bit blitter mode */
	} else if (p->var.bits_per_pixel == 16) {
		if (p->var.red.offset == 11)
			FUNC2(0x81, 0x15);	/* 16 bit color mode */
		else
			FUNC2(0x81, 0x14);	/* 15 bit color mode */
		FUNC2(0x82, 0x00);	/* Disable palettes */
		FUNC2(0x20, 0x10);	/* 16 bit blitter mode */
	} else if (p->var.bits_per_pixel == 8) {
		FUNC2(0x0a, 0x02);	/* Linear */
		FUNC2(0x81, 0x12);	/* 8 bit color mode */
		FUNC2(0x82, 0x00);	/* Graphics gamma enable */
		FUNC2(0x20, 0x00);	/* 8 bit blitter mode */
	}
	p->fix.line_length = p->var.xres * (p->var.bits_per_pixel >> 3);
	p->fix.visual = (p->var.bits_per_pixel == 8) ? FB_VISUAL_PSEUDOCOLOR : FB_VISUAL_TRUECOLOR;
	FUNC2(0xc4, dclk2_m);
	FUNC2(0xc5, dclk2_n);
	FUNC2(0xc7, dclk2_div);
	/* Set up the CR registers */
	FUNC1(p);
	return 0;
}