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
struct tmiofb_par {unsigned int* pseudo_palette; } ;
struct fb_info {struct tmiofb_par* par; } ;

/* Variables and functions */
 unsigned int FUNC0 (unsigned int*) ; 
 int EINVAL ; 

__attribute__((used)) static int FUNC1(unsigned regno, unsigned red, unsigned green,
			   unsigned blue, unsigned transp,
			   struct fb_info *info)
{
	struct tmiofb_par *par = info->par;

	if (regno < FUNC0(par->pseudo_palette)) {
		par->pseudo_palette[regno] =
			((red & 0xf800)) |
			((green & 0xfc00) >>  5) |
			((blue & 0xf800) >> 11);
		return 0;
	}

	return -EINVAL;
}