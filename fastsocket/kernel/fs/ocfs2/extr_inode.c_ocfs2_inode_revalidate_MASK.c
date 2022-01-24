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
struct inode {int dummy; } ;
struct dentry {struct inode* d_inode; } ;
struct TYPE_2__ {int ip_flags; int /*<<< orphan*/  ip_lock; scalar_t__ ip_blkno; } ;

/* Variables and functions */
 int ENOENT ; 
 TYPE_1__* FUNC0 (struct inode*) ; 
 int OCFS2_INODE_DELETED ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,struct inode*,unsigned long long) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int FUNC5 (struct inode*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

int FUNC9(struct dentry *dentry)
{
	struct inode *inode = dentry->d_inode;
	int status = 0;

	FUNC2("(inode = 0x%p, ino = %llu)\n", inode,
		   inode ? (unsigned long long)FUNC0(inode)->ip_blkno : 0ULL);

	if (!inode) {
		FUNC1(0, "eep, no inode!\n");
		status = -ENOENT;
		goto bail;
	}

	FUNC7(&FUNC0(inode)->ip_lock);
	if (FUNC0(inode)->ip_flags & OCFS2_INODE_DELETED) {
		FUNC8(&FUNC0(inode)->ip_lock);
		FUNC1(0, "inode deleted!\n");
		status = -ENOENT;
		goto bail;
	}
	FUNC8(&FUNC0(inode)->ip_lock);

	/* Let ocfs2_inode_lock do the work of updating our struct
	 * inode for us. */
	status = FUNC5(inode, NULL, 0);
	if (status < 0) {
		if (status != -ENOENT)
			FUNC3(status);
		goto bail;
	}
	FUNC6(inode, 0);
bail:
	FUNC4(status);

	return status;
}