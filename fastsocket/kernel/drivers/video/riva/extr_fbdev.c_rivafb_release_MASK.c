#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_4__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  (* LockUnlock ) (TYPE_1__*,int) ;int /*<<< orphan*/  (* LoadStateExt ) (TYPE_1__*,int /*<<< orphan*/ *) ;} ;
struct TYPE_6__ {int /*<<< orphan*/  ext; } ;
struct riva_par {int ref_count; int /*<<< orphan*/  open_lock; TYPE_1__ riva; int /*<<< orphan*/  state; TYPE_4__ initial_state; } ;
struct fb_info {struct riva_par* par; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct riva_par*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int) ; 

__attribute__((used)) static int FUNC9(struct fb_info *info, int user)
{
	struct riva_par *par = info->par;

	FUNC0();
	FUNC2(&par->open_lock);
	if (!par->ref_count) {
		FUNC3(&par->open_lock);
		return -EINVAL;
	}
	if (par->ref_count == 1) {
		par->riva.LockUnlock(&par->riva, 0);
		par->riva.LoadStateExt(&par->riva, &par->initial_state.ext);
		FUNC5(par, &par->initial_state);
#ifdef CONFIG_X86
		restore_vga(&par->state);
#endif
		par->riva.LockUnlock(&par->riva, 1);
	}
	par->ref_count--;
	FUNC3(&par->open_lock);
	FUNC1();
	return 0;
}