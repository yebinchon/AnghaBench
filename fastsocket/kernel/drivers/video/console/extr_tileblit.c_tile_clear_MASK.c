#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct vc_data {int vc_video_erase_char; scalar_t__ vc_hi_font_mask; } ;
struct fb_tilerect {int index; int sx; int sy; int width; int height; int /*<<< orphan*/  rop; int /*<<< orphan*/  bg; int /*<<< orphan*/  fg; } ;
struct fb_info {TYPE_1__* tileops; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* fb_tilefill ) (struct fb_info*,struct fb_tilerect*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  ROP_COPY ; 
 int /*<<< orphan*/  FUNC0 (int,struct vc_data*,struct fb_info*) ; 
 int /*<<< orphan*/  FUNC1 (int,struct vc_data*,struct fb_info*) ; 
 int /*<<< orphan*/  FUNC2 (struct fb_info*,struct fb_tilerect*) ; 

__attribute__((used)) static void FUNC3(struct vc_data *vc, struct fb_info *info, int sy,
		       int sx, int height, int width)
{
	struct fb_tilerect rect;
	int bgshift = (vc->vc_hi_font_mask) ? 13 : 12;
	int fgshift = (vc->vc_hi_font_mask) ? 9 : 8;

	rect.index = vc->vc_video_erase_char &
		((vc->vc_hi_font_mask) ? 0x1ff : 0xff);
	rect.fg = FUNC1(fgshift, vc, info);
	rect.bg = FUNC0(bgshift, vc, info);
	rect.sx = sx;
	rect.sy = sy;
	rect.width = width;
	rect.height = height;
	rect.rop = ROP_COPY;

	info->tileops->fb_tilefill(info, &rect);
}