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
struct fb_info {struct ep93xx_fbi* par; } ;
struct ep93xx_fbi {TYPE_1__* mach_info; int /*<<< orphan*/  clk; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* blank ) (int,struct fb_info*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  EP93XXFB_ATTRIBS ; 
 unsigned int EP93XXFB_ENABLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ep93xx_fbi*,unsigned int,int /*<<< orphan*/ ) ; 
 unsigned int FUNC3 (struct ep93xx_fbi*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,struct fb_info*) ; 
 int /*<<< orphan*/  FUNC5 (int,struct fb_info*) ; 

__attribute__((used)) static int FUNC6(int blank_mode, struct fb_info *info)
{
	struct ep93xx_fbi *fbi = info->par;
	unsigned int attribs = FUNC3(fbi, EP93XXFB_ATTRIBS);

	if (blank_mode) {
		if (fbi->mach_info->blank)
			fbi->mach_info->blank(blank_mode, info);
		FUNC2(fbi, attribs & ~EP93XXFB_ENABLE,
				    EP93XXFB_ATTRIBS);
		FUNC0(fbi->clk);
	} else {
		FUNC1(fbi->clk);
		FUNC2(fbi, attribs | EP93XXFB_ENABLE,
				    EP93XXFB_ATTRIBS);
		if (fbi->mach_info->blank)
			fbi->mach_info->blank(blank_mode, info);
	}

	return 0;
}