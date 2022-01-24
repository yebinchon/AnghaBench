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
struct ocfs2_lock_res {int l_flags; int /*<<< orphan*/  l_lksb; int /*<<< orphan*/  l_ex_holders; int /*<<< orphan*/  l_name; int /*<<< orphan*/  l_ro_holders; int /*<<< orphan*/  l_lock; int /*<<< orphan*/  l_mask_waiters; int /*<<< orphan*/  l_blocked_list; } ;

/* Variables and functions */
 int OCFS2_LOCK_INITIALIZED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (struct ocfs2_lock_res*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

void FUNC7(struct ocfs2_lock_res *res)
{
	FUNC3();

	if (!(res->l_flags & OCFS2_LOCK_INITIALIZED))
		return;

	FUNC5(res);

	FUNC2(!FUNC0(&res->l_blocked_list),
			"Lockres %s is on the blocked list\n",
			res->l_name);
	FUNC2(!FUNC0(&res->l_mask_waiters),
			"Lockres %s has mask waiters pending\n",
			res->l_name);
	FUNC2(FUNC6(&res->l_lock),
			"Lockres %s is locked\n",
			res->l_name);
	FUNC2(res->l_ro_holders,
			"Lockres %s has %u ro holders\n",
			res->l_name, res->l_ro_holders);
	FUNC2(res->l_ex_holders,
			"Lockres %s has %u ex holders\n",
			res->l_name, res->l_ex_holders);

	/* Need to clear out the lock status block for the dlm */
	FUNC1(&res->l_lksb, 0, sizeof(res->l_lksb));

	res->l_flags = 0UL;
	FUNC4();
}