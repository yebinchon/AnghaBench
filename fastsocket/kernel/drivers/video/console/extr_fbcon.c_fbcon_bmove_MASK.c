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
struct vc_data {size_t vc_num; } ;
struct fb_info {int dummy; } ;
struct display {scalar_t__ yscroll; scalar_t__ vrows; } ;

/* Variables and functions */
 size_t* con2fb_map ; 
 struct display* fb_display ; 
 int /*<<< orphan*/  FUNC0 (struct vc_data*,struct display*,int,int,int,int,int,int,scalar_t__) ; 
 scalar_t__ FUNC1 (struct vc_data*,struct fb_info*) ; 
 struct fb_info** registered_fb ; 

__attribute__((used)) static void FUNC2(struct vc_data *vc, int sy, int sx, int dy, int dx,
			int height, int width)
{
	struct fb_info *info = registered_fb[con2fb_map[vc->vc_num]];
	struct display *p = &fb_display[vc->vc_num];
	
	if (FUNC1(vc, info))
		return;

	if (!width || !height)
		return;

	/*  Split blits that cross physical y_wrap case.
	 *  Pathological case involves 4 blits, better to use recursive
	 *  code rather than unrolled case
	 *
	 *  Recursive invocations don't need to erase the cursor over and
	 *  over again, so we use fbcon_bmove_rec()
	 */
	FUNC0(vc, p, sy, sx, dy, dx, height, width,
			p->vrows - p->yscroll);
}