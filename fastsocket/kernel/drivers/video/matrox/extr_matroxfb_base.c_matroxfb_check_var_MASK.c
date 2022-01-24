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
struct matrox_fb_info {scalar_t__ dead; } ;
struct fb_var_screeninfo {int dummy; } ;
struct fb_info {int dummy; } ;

/* Variables and functions */
 int ENXIO ; 
 struct matrox_fb_info* FUNC0 (struct fb_info*) ; 
 int FUNC1 (struct matrox_fb_info*,struct fb_var_screeninfo*,int*,int*,unsigned int*) ; 

__attribute__((used)) static int FUNC2(struct fb_var_screeninfo *var, struct fb_info *info)
{
	int err;
	int visual;
	int cmap_len;
	unsigned int ydstorg;
	struct matrox_fb_info *minfo = FUNC0(info);

	if (minfo->dead) {
		return -ENXIO;
	}
	if ((err = FUNC1(minfo, var, &visual, &cmap_len, &ydstorg)) != 0)
		return err;
	return 0;
}