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
struct pvr2fb_par {scalar_t__ disp_start; } ;
struct fb_var_screeninfo {int /*<<< orphan*/  bits_per_pixel; scalar_t__ xres; scalar_t__ xoffset; } ;
struct fb_info {struct fb_var_screeninfo var; scalar_t__ par; } ;

/* Variables and functions */
 int /*<<< orphan*/  DISP_DIWADDRL ; 
 int /*<<< orphan*/  DISP_DIWADDRS ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct fb_info *info)
{
	struct pvr2fb_par *par = (struct pvr2fb_par *) info->par;
	struct fb_var_screeninfo *var = &info->var;

	/* Update the start address of the display image */
	FUNC0(par->disp_start, DISP_DIWADDRL);
	FUNC0(par->disp_start +
		  FUNC1(var->xoffset+var->xres, var->bits_per_pixel),
	          DISP_DIWADDRS);
}