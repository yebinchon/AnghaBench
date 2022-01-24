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
struct fb_info {int /*<<< orphan*/  mm_lock; int /*<<< orphan*/  fix; int /*<<< orphan*/  var; scalar_t__ par; } ;
struct atafb_par {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* encode_fix ) (int /*<<< orphan*/ *,struct atafb_par*) ;int /*<<< orphan*/  (* decode_var ) (int /*<<< orphan*/ *,struct atafb_par*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct atafb_par*) ; 
 TYPE_1__* fbhw ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct atafb_par*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct atafb_par*) ; 

__attribute__((used)) static int FUNC5(struct fb_info *info)
{
	struct atafb_par *par = (struct atafb_par *)info->par;

	/* Decode wanted screen parameters */
	fbhw->decode_var(&info->var, par);
	FUNC1(&info->mm_lock);
	fbhw->encode_fix(&info->fix, par);
	FUNC2(&info->mm_lock);

	/* Set new videomode */
	FUNC0(par);

	return 0;
}