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
struct savagefb_par {scalar_t__ dacSpeedBpp; scalar_t__* clock; scalar_t__ maxClock; int minClock; int /*<<< orphan*/  state; } ;
struct fb_var_screeninfo {int bits_per_pixel; } ;
struct fb_info {int /*<<< orphan*/  cmap; struct fb_var_screeninfo var; struct savagefb_par* par; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct savagefb_par*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct fb_info*) ; 
 int FUNC3 (struct fb_var_screeninfo*,struct savagefb_par*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct fb_info*) ; 
 int /*<<< orphan*/  FUNC5 (struct fb_info*) ; 
 int /*<<< orphan*/  FUNC6 (struct savagefb_par*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct fb_info *info)
{
	struct savagefb_par *par = info->par;
	struct fb_var_screeninfo *var = &info->var;
	int err;

	FUNC0("savagefb_set_par");
	err = FUNC3(var, par, &par->state);
	if (err)
		return err;

	if (par->dacSpeedBpp <= 0) {
		if (var->bits_per_pixel > 24)
			par->dacSpeedBpp = par->clock[3];
		else if (var->bits_per_pixel >= 24)
			par->dacSpeedBpp = par->clock[2];
		else if ((var->bits_per_pixel > 8) && (var->bits_per_pixel < 24))
			par->dacSpeedBpp = par->clock[1];
		else if (var->bits_per_pixel <= 8)
			par->dacSpeedBpp = par->clock[0];
	}

	/* Set ramdac limits */
	par->maxClock = par->dacSpeedBpp;
	par->minClock = 10000;

	FUNC6(par, &par->state);
	FUNC2(&info->cmap, info);
	FUNC5(info);
	FUNC4(info);

	FUNC1(par);
	return 0;
}