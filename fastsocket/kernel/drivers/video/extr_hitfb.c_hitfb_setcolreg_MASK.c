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
typedef  unsigned int u32 ;
struct TYPE_2__ {int bits_per_pixel; } ;
struct fb_info {scalar_t__ pseudo_palette; TYPE_1__ var; } ;

/* Variables and functions */
 int /*<<< orphan*/  HD64461_CPTWAR ; 
 int /*<<< orphan*/  HD64461_CPTWDR ; 
 int /*<<< orphan*/  FUNC0 (unsigned int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC1(unsigned regno, unsigned red, unsigned green,
			   unsigned blue, unsigned transp, struct fb_info *info)
{
	if (regno >= 256)
		return 1;

	switch (info->var.bits_per_pixel) {
	case 8:
		FUNC0(regno << 8, HD64461_CPTWAR);
		FUNC0(red >> 10, HD64461_CPTWDR);
		FUNC0(green >> 10, HD64461_CPTWDR);
		FUNC0(blue >> 10, HD64461_CPTWDR);
		break;
	case 16:
		if (regno >= 16)
			return 1;
		((u32 *) (info->pseudo_palette))[regno] =
		    ((red & 0xf800)) |
		    ((green & 0xfc00) >> 5) | ((blue & 0xf800) >> 11);
		break;
	}
	return 0;
}