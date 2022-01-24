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
struct ocfs2_inode_info {unsigned int ip_attr; } ;
struct inode {int /*<<< orphan*/  i_mutex; int /*<<< orphan*/  i_mode; int /*<<< orphan*/  i_sb; } ;
struct buffer_head {int dummy; } ;
typedef  int /*<<< orphan*/  handle_t ;

/* Variables and functions */
 int /*<<< orphan*/  CAP_LINUX_IMMUTABLE ; 
 int EACCES ; 
 int EPERM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 unsigned int OCFS2_APPEND_FL ; 
 unsigned int OCFS2_DIRSYNC_FL ; 
 struct ocfs2_inode_info* FUNC1 (struct inode*) ; 
 unsigned int OCFS2_IMMUTABLE_FL ; 
 int /*<<< orphan*/  OCFS2_INODE_UPDATE_CREDITS ; 
 struct ocfs2_super* FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct inode*) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (struct ocfs2_super*,int /*<<< orphan*/ *) ; 
 int FUNC13 (struct inode*,struct buffer_head**,int) ; 
 int /*<<< orphan*/  FUNC14 (struct inode*,int) ; 
 int FUNC15 (int /*<<< orphan*/ *,struct inode*,struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC16 (struct inode*) ; 
 int /*<<< orphan*/ * FUNC17 (struct ocfs2_super*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC18(struct inode *inode, unsigned flags,
				unsigned mask)
{
	struct ocfs2_inode_info *ocfs2_inode = FUNC1(inode);
	struct ocfs2_super *osb = FUNC2(inode->i_sb);
	handle_t *handle = NULL;
	struct buffer_head *bh = NULL;
	unsigned oldflags;
	int status;

	FUNC10(&inode->i_mutex);

	status = FUNC13(inode, &bh, 1);
	if (status < 0) {
		FUNC8(status);
		goto bail;
	}

	status = -EACCES;
	if (!FUNC7(inode))
		goto bail_unlock;

	if (!FUNC4(inode->i_mode))
		flags &= ~OCFS2_DIRSYNC_FL;

	handle = FUNC17(osb, OCFS2_INODE_UPDATE_CREDITS);
	if (FUNC0(handle)) {
		status = FUNC3(handle);
		FUNC8(status);
		goto bail_unlock;
	}

	oldflags = ocfs2_inode->ip_attr;
	flags = flags & mask;
	flags |= oldflags & ~mask;

	/*
	 * The IMMUTABLE and APPEND_ONLY flags can only be changed by
	 * the relevant capability.
	 */
	status = -EPERM;
	if ((oldflags & OCFS2_IMMUTABLE_FL) || ((flags ^ oldflags) &
		(OCFS2_APPEND_FL | OCFS2_IMMUTABLE_FL))) {
		if (!FUNC6(CAP_LINUX_IMMUTABLE))
			goto bail_unlock;
	}

	ocfs2_inode->ip_attr = flags;
	FUNC16(inode);

	status = FUNC15(handle, inode, bh);
	if (status < 0)
		FUNC8(status);

	FUNC12(osb, handle);
bail_unlock:
	FUNC14(inode, 1);
bail:
	FUNC11(&inode->i_mutex);

	FUNC5(bh);

	FUNC9(status);
	return status;
}