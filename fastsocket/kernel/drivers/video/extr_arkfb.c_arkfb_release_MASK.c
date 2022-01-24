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
struct fb_info {struct arkfb_info* par; } ;
struct arkfb_info {int ref_count; int /*<<< orphan*/  open_lock; int /*<<< orphan*/  dac; int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int /*<<< orphan*/  DAC_PSEUDO8_8 ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct fb_info *info, int user)
{
	struct arkfb_info *par = info->par;

	FUNC1(&(par->open_lock));
	if (par->ref_count == 0) {
		FUNC2(&(par->open_lock));
		return -EINVAL;
	}

	if (par->ref_count == 1) {
		FUNC3(&(par->state));
		FUNC0(par->dac, DAC_PSEUDO8_8);
	}

	par->ref_count--;
	FUNC2(&(par->open_lock));

	return 0;
}