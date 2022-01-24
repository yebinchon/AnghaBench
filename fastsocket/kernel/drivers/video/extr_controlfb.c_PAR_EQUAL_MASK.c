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
struct fb_par_control {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/ * regs; int /*<<< orphan*/ * clock_params; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cmode ; 
 TYPE_1__ regvals ; 
 int /*<<< orphan*/  vxres ; 
 int /*<<< orphan*/  vyres ; 
 int /*<<< orphan*/  xres ; 
 int /*<<< orphan*/  yres ; 

__attribute__((used)) static inline int FUNC1(struct fb_par_control *x, struct fb_par_control *y)
{
	int i, results;

	results = 1;
	for (i = 0; i < 3; i++)
		results &= !FUNC0(regvals.clock_params[i]);
	if (!results)
		return 0;
	for (i = 0; i < 16; i++)
		results &= !FUNC0(regvals.regs[i]);
	if (!results)
		return 0;
	return (!FUNC0(cmode) && !FUNC0(xres) && !FUNC0(yres)
		&& !FUNC0(vxres) && !FUNC0(vyres));
}