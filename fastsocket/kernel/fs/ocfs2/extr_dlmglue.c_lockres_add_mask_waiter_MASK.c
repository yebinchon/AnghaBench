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
struct ocfs2_mask_waiter {unsigned long mw_mask; unsigned long mw_goal; int /*<<< orphan*/  mw_item; } ;
struct ocfs2_lock_res {int /*<<< orphan*/  l_mask_waiters; int /*<<< orphan*/  l_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct ocfs2_lock_res *lockres,
				    struct ocfs2_mask_waiter *mw,
				    unsigned long mask,
				    unsigned long goal)
{
	FUNC0(!FUNC3(&mw->mw_item));

	FUNC1(&lockres->l_lock);

	FUNC2(&mw->mw_item, &lockres->l_mask_waiters);
	mw->mw_mask = mask;
	mw->mw_goal = goal;
}