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
struct ocfs2_lock_res {int /*<<< orphan*/  l_mask_waiters; int /*<<< orphan*/  l_blocked_list; int /*<<< orphan*/  l_event; int /*<<< orphan*/  l_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct ocfs2_lock_res*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(struct ocfs2_lock_res *res)
{
	/* This also clears out the lock status block */
	FUNC2(res, 0, sizeof(struct ocfs2_lock_res));
	FUNC3(&res->l_lock);
	FUNC1(&res->l_event);
	FUNC0(&res->l_blocked_list);
	FUNC0(&res->l_mask_waiters);
}