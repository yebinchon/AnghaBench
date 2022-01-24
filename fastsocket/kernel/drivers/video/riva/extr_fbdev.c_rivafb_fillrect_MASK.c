#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int u_int ;
typedef  int u32 ;
struct TYPE_8__ {scalar_t__ Architecture; TYPE_3__* Bitmap; } ;
struct riva_par {int* palette; TYPE_4__ riva; } ;
struct TYPE_5__ {int bits_per_pixel; } ;
struct fb_info {int flags; scalar_t__ pseudo_palette; TYPE_1__ var; struct riva_par* par; } ;
struct fb_fillrect {int color; int rop; int dx; int dy; int width; int height; } ;
struct TYPE_7__ {TYPE_2__* UnclippedRectangle; int /*<<< orphan*/  Color1A; } ;
struct TYPE_6__ {int /*<<< orphan*/  WidthHeight; int /*<<< orphan*/  TopLeft; } ;

/* Variables and functions */
 int /*<<< orphan*/  Bitmap ; 
 int FBINFO_HWACCEL_DISABLED ; 
 scalar_t__ NV_ARCH_03 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__,int /*<<< orphan*/ ,int) ; 
#define  ROP_COPY 129 
#define  ROP_XOR 128 
 int /*<<< orphan*/  FUNC2 (struct fb_info*,struct fb_fillrect const*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct riva_par*,int) ; 

__attribute__((used)) static void FUNC5(struct fb_info *info, const struct fb_fillrect *rect)
{
	struct riva_par *par = info->par;
	u_int color, rop = 0;

	if ((info->flags & FBINFO_HWACCEL_DISABLED)) {
		FUNC2(info, rect);
		return;
	}

	if (info->var.bits_per_pixel == 8)
		color = rect->color;
	else {
		if (par->riva.Architecture != NV_ARCH_03)
			color = ((u32 *)info->pseudo_palette)[rect->color];
		else
			color = par->palette[rect->color];
	}

	switch (rect->rop) {
	case ROP_XOR:
		rop = 0x66;
		break;
	case ROP_COPY:
	default:
		rop = 0xCC;
		break;
	}

	FUNC4(par, rop);

	FUNC1(par->riva, Bitmap, 1);
	FUNC0(&par->riva.Bitmap->Color1A, 0, color);

	FUNC1(par->riva, Bitmap, 2);
	FUNC0(&par->riva.Bitmap->UnclippedRectangle[0].TopLeft, 0,
		(rect->dx << 16) | rect->dy);
	FUNC3();
	FUNC0(&par->riva.Bitmap->UnclippedRectangle[0].WidthHeight, 0,
		(rect->width << 16) | rect->height);
	FUNC3();
	FUNC4(par, 0xcc);

}