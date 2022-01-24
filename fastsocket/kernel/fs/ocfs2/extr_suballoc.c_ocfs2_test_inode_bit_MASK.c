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
typedef  scalar_t__ u64 ;
typedef  int u32 ;
typedef  scalar_t__ u16 ;
struct ocfs2_super {int dummy; } ;
struct inode {int /*<<< orphan*/  i_mutex; } ;
struct buffer_head {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  INODE_ALLOC_SYSTEM_INODE ; 
 int /*<<< orphan*/  ML_ERROR ; 
 int /*<<< orphan*/  FUNC0 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int,...) ; 
 int /*<<< orphan*/  FUNC3 (char*,unsigned long long) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (struct ocfs2_super*,scalar_t__,scalar_t__*,scalar_t__*) ; 
 struct inode* FUNC8 (struct ocfs2_super*,int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC9 (struct inode*,struct buffer_head**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct inode*,int /*<<< orphan*/ ) ; 
 int FUNC11 (struct ocfs2_super*,struct inode*,struct buffer_head*,scalar_t__,scalar_t__,int*) ; 

int FUNC12(struct ocfs2_super *osb, u64 blkno, int *res)
{
	int status;
	u16 suballoc_bit = 0, suballoc_slot = 0;
	struct inode *inode_alloc_inode;
	struct buffer_head *alloc_bh = NULL;

	FUNC3("blkno: %llu", (unsigned long long)blkno);

	status = FUNC7(osb, blkno, &suballoc_slot,
					     &suballoc_bit);
	if (status < 0) {
		FUNC2(ML_ERROR, "get alloc slot and bit failed %d\n", status);
		goto bail;
	}

	inode_alloc_inode =
		FUNC8(osb, INODE_ALLOC_SYSTEM_INODE,
					    suballoc_slot);
	if (!inode_alloc_inode) {
		/* the error code could be inaccurate, but we are not able to
		 * get the correct one. */
		status = -EINVAL;
		FUNC2(ML_ERROR, "unable to get alloc inode in slot %u\n",
		     (u32)suballoc_slot);
		goto bail;
	}

	FUNC5(&inode_alloc_inode->i_mutex);
	status = FUNC9(inode_alloc_inode, &alloc_bh, 0);
	if (status < 0) {
		FUNC6(&inode_alloc_inode->i_mutex);
		FUNC2(ML_ERROR, "lock on alloc inode on slot %u failed %d\n",
		     (u32)suballoc_slot, status);
		goto bail;
	}

	status = FUNC11(osb, inode_alloc_inode, alloc_bh,
					 blkno, suballoc_bit, res);
	if (status < 0)
		FUNC2(ML_ERROR, "test suballoc bit failed %d\n", status);

	FUNC10(inode_alloc_inode, 0);
	FUNC6(&inode_alloc_inode->i_mutex);

	FUNC1(inode_alloc_inode);
	FUNC0(alloc_bh);
bail:
	FUNC4(status);
	return status;
}