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
typedef  int u32 ;
struct i810fb_par {int depth; } ;
struct fb_var_screeninfo {int xoffset; int yoffset; } ;
struct TYPE_2__ {int line_length; } ;
struct fb_info {TYPE_1__ fix; struct i810fb_par* par; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,struct fb_info*) ; 

__attribute__((used)) static int FUNC1(struct fb_var_screeninfo *var, 
			      struct fb_info *info)
{
	struct i810fb_par *par = info->par;
	u32 total;
	
	total = var->xoffset * par->depth + 
		var->yoffset * info->fix.line_length;
	FUNC0(total, info);

	return 0;
}