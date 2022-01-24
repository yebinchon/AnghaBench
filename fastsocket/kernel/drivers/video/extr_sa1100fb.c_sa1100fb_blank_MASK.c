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
struct TYPE_3__ {int /*<<< orphan*/  visual; } ;
struct TYPE_4__ {int /*<<< orphan*/  cmap; TYPE_1__ fix; } ;
struct sa1100fb_info {int palette_size; TYPE_2__ fb; } ;
struct fb_info {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  C_DISABLE ; 
 int /*<<< orphan*/  C_ENABLE ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
#define  FB_BLANK_HSYNC_SUSPEND 132 
#define  FB_BLANK_NORMAL 131 
#define  FB_BLANK_POWERDOWN 130 
#define  FB_BLANK_UNBLANK 129 
#define  FB_BLANK_VSYNC_SUSPEND 128 
 int /*<<< orphan*/  FB_VISUAL_PSEUDOCOLOR ; 
 int /*<<< orphan*/  FB_VISUAL_STATIC_PSEUDOCOLOR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct fb_info*) ; 
 int /*<<< orphan*/  FUNC2 (struct sa1100fb_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct fb_info*) ; 

__attribute__((used)) static int FUNC4(int blank, struct fb_info *info)
{
	struct sa1100fb_info *fbi = (struct sa1100fb_info *)info;
	int i;

	FUNC0("sa1100fb_blank: blank=%d\n", blank);

	switch (blank) {
	case FB_BLANK_POWERDOWN:
	case FB_BLANK_VSYNC_SUSPEND:
	case FB_BLANK_HSYNC_SUSPEND:
	case FB_BLANK_NORMAL:
		if (fbi->fb.fix.visual == FB_VISUAL_PSEUDOCOLOR ||
		    fbi->fb.fix.visual == FB_VISUAL_STATIC_PSEUDOCOLOR)
			for (i = 0; i < fbi->palette_size; i++)
				FUNC3(i, 0, 0, 0, 0, info);
		FUNC2(fbi, C_DISABLE);
		break;

	case FB_BLANK_UNBLANK:
		if (fbi->fb.fix.visual == FB_VISUAL_PSEUDOCOLOR ||
		    fbi->fb.fix.visual == FB_VISUAL_STATIC_PSEUDOCOLOR)
			FUNC1(&fbi->fb.cmap, info);
		FUNC2(fbi, C_ENABLE);
	}
	return 0;
}