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
struct ocfs2_super {int dummy; } ;
struct ocfs2_refcount_tree {int /*<<< orphan*/  rf_sem; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (struct ocfs2_refcount_tree*,int) ; 

__attribute__((used)) static int FUNC4(struct ocfs2_super *osb,
				      struct ocfs2_refcount_tree *tree, int rw)
{
	int ret;

	ret = FUNC3(tree, rw);
	if (ret) {
		FUNC2(ret);
		goto out;
	}

	if (rw)
		FUNC1(&tree->rf_sem);
	else
		FUNC0(&tree->rf_sem);

out:
	return ret;
}