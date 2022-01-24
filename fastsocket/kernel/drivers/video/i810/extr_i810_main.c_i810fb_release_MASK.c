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
struct i810fb_par {int use_count; int /*<<< orphan*/  open_lock; int /*<<< orphan*/  state; } ;
struct fb_info {struct i810fb_par* par; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct i810fb_par*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct fb_info *info, int user)
{
	struct i810fb_par *par = info->par;

	FUNC1(&par->open_lock);
	if (par->use_count == 0) {
		FUNC2(&par->open_lock);
		return -EINVAL;
	}

	if (par->use_count == 1) {
		FUNC0(par);
		FUNC3(&par->state);
	}

	par->use_count--;
	FUNC2(&par->open_lock);
	
	return 0;
}