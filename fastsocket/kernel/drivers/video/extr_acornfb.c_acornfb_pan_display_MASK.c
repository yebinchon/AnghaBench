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
typedef  scalar_t__ u_int ;
struct fb_var_screeninfo {scalar_t__ yoffset; int vmode; scalar_t__ yres; scalar_t__ yres_virtual; } ;
struct fb_info {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FB_VMODE_YWRAP ; 
 int /*<<< orphan*/  FUNC1 (struct fb_info*,struct fb_var_screeninfo*) ; 

__attribute__((used)) static int
FUNC2(struct fb_var_screeninfo *var, struct fb_info *info)
{
	u_int y_bottom = var->yoffset;

	if (!(var->vmode & FB_VMODE_YWRAP))
		y_bottom += var->yres;

	FUNC0(y_bottom > var->yres_virtual);

	FUNC1(info, var);

	return 0;
}