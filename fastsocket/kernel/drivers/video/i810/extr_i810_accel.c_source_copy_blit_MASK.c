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
struct i810fb_par {int dummy; } ;
struct fb_info {struct i810fb_par* par; } ;

/* Variables and functions */
 int BLIT ; 
 int DYN_COLOR_EN ; 
 scalar_t__ IRING_PAD ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int SOURCE_COPY_BLIT ; 
 scalar_t__ FUNC1 (struct fb_info*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct i810fb_par*) ; 

__attribute__((used)) static inline void FUNC3(int dwidth, int dheight, int dpitch, 
				    int xdir, int src, int dest, int rop, 
				    int blit_bpp, struct fb_info *info)
{
	struct i810fb_par *par = info->par;

	if (FUNC1(info, 24 + IRING_PAD)) return;

	FUNC0(BLIT | SOURCE_COPY_BLIT | 4);
	FUNC0(xdir | rop << 16 | dpitch | DYN_COLOR_EN | blit_bpp);
	FUNC0(dheight << 16 | dwidth);
	FUNC0(dest);
	FUNC0(dpitch);
	FUNC0(src);

	FUNC2(par);
}