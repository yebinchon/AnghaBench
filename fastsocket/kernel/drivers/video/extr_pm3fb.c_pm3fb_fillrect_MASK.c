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
struct pm3_par {int dummy; } ;
struct TYPE_4__ {int xres_virtual; int yres_virtual; int bits_per_pixel; } ;
struct TYPE_3__ {scalar_t__ visual; } ;
struct fb_info {scalar_t__ state; int flags; TYPE_2__ var; scalar_t__ pseudo_palette; TYPE_1__ fix; struct pm3_par* par; } ;
struct fb_fillrect {size_t color; scalar_t__ rop; int width; int height; int dx; int dy; } ;

/* Variables and functions */
 int FBINFO_HWACCEL_DISABLED ; 
 scalar_t__ FBINFO_STATE_RUNNING ; 
 scalar_t__ FB_VISUAL_TRUECOLOR ; 
 int /*<<< orphan*/  PM3Config2D ; 
 int PM3Config2D_FBDestReadEnable ; 
 int PM3Config2D_FBWriteEnable ; 
 int FUNC0 (int) ; 
 int PM3Config2D_ForegroundROPEnable ; 
 int PM3Config2D_UseConstantSource ; 
 int /*<<< orphan*/  PM3ForegroundColor ; 
 int /*<<< orphan*/  PM3RectanglePosition ; 
 int FUNC1 (int) ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  PM3Render2D ; 
 int FUNC3 (int) ; 
 int PM3Render2D_Operation_Normal ; 
 int PM3Render2D_SpanOperation ; 
 int FUNC4 (int) ; 
 int PM3Render2D_XPositive ; 
 int PM3Render2D_YPositive ; 
 int /*<<< orphan*/  FUNC5 (struct pm3_par*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct pm3_par*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ ROP_COPY ; 
 int /*<<< orphan*/  FUNC7 (struct fb_info*,struct fb_fillrect const*) ; 
 int /*<<< orphan*/  FUNC8 (struct fb_fillrect*,struct fb_fillrect const*,int) ; 

__attribute__((used)) static void FUNC9(struct fb_info *info,
				const struct fb_fillrect *region)
{
	struct pm3_par *par = info->par;
	struct fb_fillrect modded;
	int vxres, vyres;
	int rop;
	u32 color = (info->fix.visual == FB_VISUAL_TRUECOLOR) ?
		((u32 *)info->pseudo_palette)[region->color] : region->color;

	if (info->state != FBINFO_STATE_RUNNING)
		return;
	if (info->flags & FBINFO_HWACCEL_DISABLED) {
		FUNC7(info, region);
		return;
	}
	if (region->rop == ROP_COPY )
		rop = FUNC0(0x3); /* GXcopy */
	else
		rop = FUNC0(0x6) | /* GXxor */
			PM3Config2D_FBDestReadEnable;

	vxres = info->var.xres_virtual;
	vyres = info->var.yres_virtual;

	FUNC8(&modded, region, sizeof(struct fb_fillrect));

	if (!modded.width || !modded.height ||
	    modded.dx >= vxres || modded.dy >= vyres)
		return;

	if (modded.dx + modded.width  > vxres)
		modded.width  = vxres - modded.dx;
	if (modded.dy + modded.height > vyres)
		modded.height = vyres - modded.dy;

	if (info->var.bits_per_pixel == 8)
		color |= color << 8;
	if (info->var.bits_per_pixel <= 16)
		color |= color << 16;

	FUNC5(par, 4);
	/* ROP Ox3 is GXcopy */
	FUNC6(par, PM3Config2D,
			PM3Config2D_UseConstantSource |
			PM3Config2D_ForegroundROPEnable |
			rop |
			PM3Config2D_FBWriteEnable);

	FUNC6(par, PM3ForegroundColor, color);

	FUNC6(par, PM3RectanglePosition,
			FUNC1(modded.dx) |
			FUNC2(modded.dy));

	FUNC6(par, PM3Render2D,
		      PM3Render2D_XPositive |
		      PM3Render2D_YPositive |
		      PM3Render2D_Operation_Normal |
		      PM3Render2D_SpanOperation |
		      FUNC4(modded.width) |
		      FUNC3(modded.height));
}