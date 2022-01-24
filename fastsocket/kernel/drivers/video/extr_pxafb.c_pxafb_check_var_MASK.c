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
struct pxafb_mode_info {int dummy; } ;
struct pxafb_mach_info {scalar_t__ fixed_modes; } ;
struct pxafb_info {TYPE_1__* dev; } ;
struct fb_var_screeninfo {int dummy; } ;
struct fb_info {int dummy; } ;
struct TYPE_2__ {struct pxafb_mach_info* platform_data; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct pxafb_info*,struct fb_var_screeninfo*) ; 
 int /*<<< orphan*/  FUNC2 (struct fb_var_screeninfo*) ; 
 struct pxafb_mode_info* FUNC3 (struct pxafb_mach_info*,struct fb_var_screeninfo*) ; 
 int /*<<< orphan*/  FUNC4 (struct fb_var_screeninfo*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct fb_var_screeninfo*,struct pxafb_mode_info*) ; 
 int FUNC6 (struct fb_var_screeninfo*) ; 
 int /*<<< orphan*/  FUNC7 (struct fb_var_screeninfo*) ; 

__attribute__((used)) static int FUNC8(struct fb_var_screeninfo *var, struct fb_info *info)
{
	struct pxafb_info *fbi = (struct pxafb_info *)info;
	struct pxafb_mach_info *inf = fbi->dev->platform_data;
	int err;

	if (inf->fixed_modes) {
		struct pxafb_mode_info *mode;

		mode = FUNC3(inf, var);
		if (!mode)
			return -EINVAL;
		FUNC5(var, mode);
	}

	/* do a test conversion to BPP fields to check the color formats */
	err = FUNC6(var);
	if (err < 0)
		return err;

	FUNC4(var, FUNC7(var));

	err = FUNC1(fbi, var);
	if (err)
		return err;

#ifdef CONFIG_CPU_FREQ
	pr_debug("pxafb: dma period = %d ps\n",
		 pxafb_display_dma_period(var));
#endif

	return 0;
}