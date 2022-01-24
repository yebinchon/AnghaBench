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
struct TYPE_2__ {scalar_t__ xres; scalar_t__ yres; } ;
struct fb_info {int /*<<< orphan*/  screen_base; TYPE_1__ var; struct dlfb_data* par; } ;
struct dloarea {scalar_t__ x; scalar_t__ y; scalar_t__ x2; scalar_t__ y2; int /*<<< orphan*/  h; int /*<<< orphan*/  w; } ;
struct dlfb_data {int /*<<< orphan*/  edid; } ;

/* Variables and functions */
 int EFAULT ; 
 scalar_t__ FUNC0 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct dlfb_data*,scalar_t__,scalar_t__,scalar_t__,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct dlfb_data*) ; 
 int /*<<< orphan*/  FUNC3 (struct dlfb_data*) ; 
 int /*<<< orphan*/  FUNC4 (struct dlfb_data*,scalar_t__,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct dlfb_data*) ; 

__attribute__((used)) static int FUNC6(struct fb_info *info, unsigned int cmd, unsigned long arg)
{

	struct dlfb_data *dev_info = info->par;
	struct dloarea *area = NULL;

	if (cmd == 0xAD) {
		char *edid = (char *)arg;
		FUNC3(dev_info);
		if (FUNC0(edid, dev_info->edid, 128)) {
			return -EFAULT;
		}
		return 0;
	}

	if (cmd == 0xAA || cmd == 0xAB || cmd == 0xAC) {

		area = (struct dloarea *)arg;

		if (area->x < 0)
			area->x = 0;

		if (area->x > info->var.xres)
			area->x = info->var.xres;

		if (area->y < 0)
			area->y = 0;

		if (area->y > info->var.yres)
			area->y = info->var.yres;
	}

	if (cmd == 0xAA) {
		FUNC4(dev_info, area->x, area->y, area->w, area->h,
			   info->screen_base);
	}
	if (cmd == 0xAC) {
		FUNC2(dev_info);
		FUNC4(dev_info, area->x, area->y, area->w, area->h,
			   info->screen_base);
		FUNC5(dev_info);
	} else if (cmd == 0xAB) {

		if (area->x2 < 0)
			area->x2 = 0;

		if (area->y2 < 0)
			area->y2 = 0;

		FUNC1(dev_info,
			 area->x2, area->y2, area->x, area->y, area->w,
			 area->h);
	}
	return 0;
}