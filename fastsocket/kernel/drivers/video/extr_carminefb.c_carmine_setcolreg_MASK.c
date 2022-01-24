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
struct fb_info {scalar_t__ pseudo_palette; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 

__attribute__((used)) static int FUNC1(unsigned regno, unsigned red, unsigned green,
		unsigned blue, unsigned transp, struct fb_info *info)
{
	if (regno >= 16)
		return 1;

	red >>= 8;
	green >>= 8;
	blue >>= 8;
	transp >>= 8;

	((__be32 *)info->pseudo_palette)[regno] = FUNC0(transp << 24 |
		red << 0 | green << 8 | blue << 16);
	return 0;
}