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
struct TYPE_2__ {int /*<<< orphan*/  yres; int /*<<< orphan*/  xres; } ;
struct fb_info {int /*<<< orphan*/  screen_base; TYPE_1__ var; struct dlfb_data* par; } ;
struct dlfb_data {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dlfb_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC1(struct fb_info *info, int user)
{
	struct dlfb_data *dev_info = info->par;
	FUNC0(dev_info, 0, 0, info->var.xres, info->var.yres,
		   info->screen_base);
	return 0;
}