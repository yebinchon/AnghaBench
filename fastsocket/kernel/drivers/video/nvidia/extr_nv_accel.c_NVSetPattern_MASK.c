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
typedef  int /*<<< orphan*/  u32 ;
struct nvidia_par {int dummy; } ;
struct fb_info {struct nvidia_par* par; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct nvidia_par*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct fb_info*,struct nvidia_par*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  PATTERN_COLOR_0 ; 

__attribute__((used)) static void FUNC2(struct fb_info *info, u32 clr0, u32 clr1,
			 u32 pat0, u32 pat1)
{
	struct nvidia_par *par = info->par;

	FUNC1(info, par, PATTERN_COLOR_0, 4);
	FUNC0(par, clr0);
	FUNC0(par, clr1);
	FUNC0(par, pat0);
	FUNC0(par, pat1);
}