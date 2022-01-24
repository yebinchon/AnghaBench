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
struct xilinxfb_drvdata {int /*<<< orphan*/  reg_ctrl_default; } ;
struct fb_info {int dummy; } ;

/* Variables and functions */
#define  FB_BLANK_HSYNC_SUSPEND 132 
#define  FB_BLANK_NORMAL 131 
#define  FB_BLANK_POWERDOWN 130 
#define  FB_BLANK_UNBLANK 129 
#define  FB_BLANK_VSYNC_SUSPEND 128 
 int /*<<< orphan*/  REG_CTRL ; 
 struct xilinxfb_drvdata* FUNC0 (struct fb_info*) ; 
 int /*<<< orphan*/  FUNC1 (struct xilinxfb_drvdata*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC2(int blank_mode, struct fb_info *fbi)
{
	struct xilinxfb_drvdata *drvdata = FUNC0(fbi);

	switch (blank_mode) {
	case FB_BLANK_UNBLANK:
		/* turn on panel */
		FUNC1(drvdata, REG_CTRL, drvdata->reg_ctrl_default);
		break;

	case FB_BLANK_NORMAL:
	case FB_BLANK_VSYNC_SUSPEND:
	case FB_BLANK_HSYNC_SUSPEND:
	case FB_BLANK_POWERDOWN:
		/* turn off panel */
		FUNC1(drvdata, REG_CTRL, 0);
	default:
		break;

	}
	return 0; /* success */
}