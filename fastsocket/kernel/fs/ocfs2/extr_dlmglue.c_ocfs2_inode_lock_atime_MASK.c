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
struct vfsmount {int dummy; } ;
struct inode {int dummy; } ;
struct buffer_head {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (struct inode*,struct buffer_head**,int) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct inode*,struct vfsmount*) ; 
 int /*<<< orphan*/  FUNC7 (struct inode*,struct buffer_head*) ; 

int FUNC8(struct inode *inode,
			  struct vfsmount *vfsmnt,
			  int *level)
{
	int ret;

	FUNC1();
	ret = FUNC4(inode, NULL, 0);
	if (ret < 0) {
		FUNC2(ret);
		return ret;
	}

	/*
	 * If we should update atime, we will get EX lock,
	 * otherwise we just get PR lock.
	 */
	if (FUNC6(inode, vfsmnt)) {
		struct buffer_head *bh = NULL;

		FUNC5(inode, 0);
		ret = FUNC4(inode, &bh, 1);
		if (ret < 0) {
			FUNC2(ret);
			return ret;
		}
		*level = 1;
		if (FUNC6(inode, vfsmnt))
			FUNC7(inode, bh);
		if (bh)
			FUNC0(bh);
	} else
		*level = 0;

	FUNC3(ret);
	return ret;
}