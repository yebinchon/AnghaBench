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
struct ocfs2_refcount_tree {int /*<<< orphan*/  rf_ci; } ;
struct ocfs2_lock_res {int dummy; } ;

/* Variables and functions */
 int UNBLOCK_CONTINUE ; 
 struct ocfs2_refcount_tree* FUNC0 (struct ocfs2_lock_res*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(struct ocfs2_lock_res *lockres,
					 int blocking)
{
	struct ocfs2_refcount_tree *tree =
				FUNC0(lockres);

	FUNC1(&tree->rf_ci);

	return UNBLOCK_CONTINUE;
}