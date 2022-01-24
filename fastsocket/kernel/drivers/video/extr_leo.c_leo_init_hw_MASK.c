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
typedef  int /*<<< orphan*/  u32 ;
struct leo_par {TYPE_1__* ld_ss1; } ;
struct fb_info {scalar_t__ par; } ;
struct TYPE_2__ {int /*<<< orphan*/  ss1_misc; } ;

/* Variables and functions */
 int /*<<< orphan*/  LEO_SS1_MISC_ENABLE ; 
 int /*<<< orphan*/  FUNC0 (struct fb_info*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct fb_info *info)
{
	struct leo_par *par = (struct leo_par *) info->par;
	u32 val;

	val = FUNC1(&par->ld_ss1->ss1_misc);
	val |= LEO_SS1_MISC_ENABLE;
	FUNC2(val, &par->ld_ss1->ss1_misc);

	FUNC0(info);
}