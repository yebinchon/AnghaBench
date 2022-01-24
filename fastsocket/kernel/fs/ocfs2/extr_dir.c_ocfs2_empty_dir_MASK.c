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
struct ocfs2_empty_dir_priv {int /*<<< orphan*/  seen_other; int /*<<< orphan*/  seen_dot_dot; int /*<<< orphan*/  seen_dot; } ;
struct inode {int dummy; } ;
typedef  int /*<<< orphan*/  priv ;
typedef  int /*<<< orphan*/  loff_t ;
struct TYPE_2__ {scalar_t__ ip_blkno; } ;

/* Variables and functions */
 int /*<<< orphan*/  ML_ERROR ; 
 TYPE_1__* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (struct ocfs2_empty_dir_priv*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,unsigned long long) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (struct inode*,int /*<<< orphan*/ *,struct ocfs2_empty_dir_priv*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct inode*) ; 
 int FUNC6 (struct inode*,struct ocfs2_empty_dir_priv*) ; 
 int /*<<< orphan*/  ocfs2_empty_dir_filldir ; 

int FUNC7(struct inode *inode)
{
	int ret;
	loff_t start = 0;
	struct ocfs2_empty_dir_priv priv;

	FUNC1(&priv, 0, sizeof(priv));

	if (FUNC5(inode)) {
		ret = FUNC6(inode, &priv);
		if (ret)
			FUNC3(ret);
		/*
		 * We still run ocfs2_dir_foreach to get the checks
		 * for "." and "..".
		 */
	}

	ret = FUNC4(inode, &start, &priv, ocfs2_empty_dir_filldir);
	if (ret)
		FUNC3(ret);

	if (!priv.seen_dot || !priv.seen_dot_dot) {
		FUNC2(ML_ERROR, "bad directory (dir #%llu) - no `.' or `..'\n",
		     (unsigned long long)FUNC0(inode)->ip_blkno);
		/*
		 * XXX: Is it really safe to allow an unlink to continue?
		 */
		return 1;
	}

	return !priv.seen_other;
}