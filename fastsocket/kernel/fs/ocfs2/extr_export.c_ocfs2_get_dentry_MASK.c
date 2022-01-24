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
struct super_block {int dummy; } ;
struct ocfs2_super {int dummy; } ;
struct ocfs2_inode_handle {scalar_t__ ih_blkno; scalar_t__ ih_generation; } ;
struct inode {scalar_t__ i_generation; int /*<<< orphan*/ * d_op; } ;
struct dentry {scalar_t__ i_generation; int /*<<< orphan*/ * d_op; } ;

/* Variables and functions */
 int EINVAL ; 
 struct inode* FUNC0 (int) ; 
 int ESTALE ; 
 scalar_t__ FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  ML_ERROR ; 
 struct ocfs2_super* FUNC2 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*) ; 
 struct inode* FUNC4 (struct inode*) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC7 (char*,struct super_block*,struct ocfs2_inode_handle*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct inode*) ; 
 int /*<<< orphan*/  ocfs2_dentry_ops ; 
 struct inode* FUNC10 (struct ocfs2_super*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct inode* FUNC11 (struct super_block*,scalar_t__) ; 
 int FUNC12 (struct ocfs2_super*,int) ; 
 int /*<<< orphan*/  FUNC13 (struct ocfs2_super*,int) ; 
 int FUNC14 (struct ocfs2_super*,scalar_t__,int*) ; 

__attribute__((used)) static struct dentry *FUNC15(struct super_block *sb,
		struct ocfs2_inode_handle *handle)
{
	struct inode *inode;
	struct ocfs2_super *osb = FUNC2(sb);
	u64 blkno = handle->ih_blkno;
	int status, set;
	struct dentry *result;

	FUNC7("(0x%p, 0x%p)\n", sb, handle);

	if (blkno == 0) {
		FUNC6(0, "nfs wants inode with blkno: 0\n");
		result = FUNC0(-ESTALE);
		goto bail;
	}

	inode = FUNC11(sb, blkno);
	/*
	 * If the inode exists in memory, we only need to check it's
	 * generation number
	 */
	if (inode)
		goto check_gen;

	/*
	 * This will synchronize us against ocfs2_delete_inode() on
	 * all nodes
	 */
	status = FUNC12(osb, 1);
	if (status < 0) {
		FUNC6(ML_ERROR, "getting nfs sync lock(EX) failed %d\n", status);
		goto check_err;
	}

	status = FUNC14(osb, blkno, &set);
	if (status < 0) {
		if (status == -EINVAL) {
			/*
			 * The blkno NFS gave us doesn't even show up
			 * as an inode, we return -ESTALE to be
			 * nice
			 */
			FUNC6(0, "test inode bit failed %d\n", status);
			status = -ESTALE;
		} else {
			FUNC6(ML_ERROR, "test inode bit failed %d\n", status);
		}
		goto unlock_nfs_sync;
	}

	/* If the inode allocator bit is clear, this inode must be stale */
	if (!set) {
		FUNC6(0, "inode %llu suballoc bit is clear\n",
		     (unsigned long long)blkno);
		status = -ESTALE;
		goto unlock_nfs_sync;
	}

	inode = FUNC10(osb, blkno, 0, 0);

unlock_nfs_sync:
	FUNC13(osb, 1);

check_err:
	if (status < 0) {
		if (status == -ESTALE) {
			FUNC6(0, "stale inode ino: %llu generation: %u\n",
			     (unsigned long long)blkno, handle->ih_generation);
		}
		result = FUNC0(status);
		goto bail;
	}

	if (FUNC1(inode)) {
		FUNC8(FUNC3(inode));
		result = (void *)inode;
		goto bail;
	}

check_gen:
	if (handle->ih_generation != inode->i_generation) {
		FUNC5(inode);
		FUNC6(0, "stale inode ino: %llu generation: %u\n",
		     (unsigned long long)blkno, handle->ih_generation);
		result = FUNC0(-ESTALE);
		goto bail;
	}

	result = FUNC4(inode);
	if (!FUNC1(result))
		result->d_op = &ocfs2_dentry_ops;
	else
		FUNC8(FUNC3(result));

bail:
	FUNC9(result);
	return result;
}