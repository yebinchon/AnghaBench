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
typedef  int u_long ;
typedef  int u32 ;
struct neofb_par {TYPE_2__* neo2200; } ;
struct TYPE_3__ {int xres_virtual; int bits_per_pixel; } ;
struct fb_info {TYPE_1__ var; scalar_t__ pseudo_palette; struct neofb_par* par; } ;
struct fb_fillrect {int dx; int dy; int color; int height; int width; scalar_t__ rop; } ;
struct TYPE_4__ {int /*<<< orphan*/  xyExt; int /*<<< orphan*/  dstStart; int /*<<< orphan*/  fgColor; int /*<<< orphan*/  bltCntl; } ;

/* Variables and functions */
 int NEO_BC0_SRC_IS_FG ; 
 int NEO_BC3_FIFO_EN ; 
 int NEO_BC3_SKIP_MAPPING ; 
 int /*<<< orphan*/  FUNC0 (struct fb_info*,int) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC2(struct fb_info *info, const struct fb_fillrect *rect)
{
	struct neofb_par *par = info->par;
	u_long dst, rop;

	dst = rect->dx + rect->dy * info->var.xres_virtual;
	rop = rect->rop ? 0x060000 : 0x0c0000;

	FUNC0(info, 4);

	/* set blt control */
	FUNC1(NEO_BC3_FIFO_EN |
	       NEO_BC0_SRC_IS_FG | NEO_BC3_SKIP_MAPPING |
	       //               NEO_BC3_DST_XY_ADDR  |
	       //               NEO_BC3_SRC_XY_ADDR  |
	       rop, &par->neo2200->bltCntl);

	switch (info->var.bits_per_pixel) {
	case 8:
		FUNC1(rect->color, &par->neo2200->fgColor);
		break;
	case 16:
	case 24:
		FUNC1(((u32 *) (info->pseudo_palette))[rect->color],
		       &par->neo2200->fgColor);
		break;
	}

	FUNC1(dst * ((info->var.bits_per_pixel + 7) >> 3),
	       &par->neo2200->dstStart);
	FUNC1((rect->height << 16) | (rect->width & 0xffff),
	       &par->neo2200->xyExt);
}