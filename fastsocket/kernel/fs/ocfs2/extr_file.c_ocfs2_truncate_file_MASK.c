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
typedef  scalar_t__ u64 ;
struct ocfs2_truncate_context {int dummy; } ;
struct ocfs2_super {int dummy; } ;
struct ocfs2_dinode {int /*<<< orphan*/  i_size; int /*<<< orphan*/  i_blkno; int /*<<< orphan*/  i_flags; } ;
struct inode {int /*<<< orphan*/  i_mapping; int /*<<< orphan*/  i_sb; } ;
struct buffer_head {scalar_t__ b_data; } ;
struct TYPE_2__ {int ip_dyn_features; scalar_t__ ip_clusters; int /*<<< orphan*/  ip_alloc_sem; scalar_t__ ip_blkno; } ;

/* Variables and functions */
 int EINVAL ; 
 TYPE_1__* FUNC0 (struct inode*) ; 
 int OCFS2_INLINE_DATA_FL ; 
 struct ocfs2_super* FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (struct inode*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,unsigned long long,unsigned long long,...) ; 
 int /*<<< orphan*/  FUNC7 (int,char*,unsigned long long,scalar_t__,unsigned long long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*,unsigned long long,unsigned long long) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int FUNC11 (struct ocfs2_super*,struct inode*,struct buffer_head*,struct ocfs2_truncate_context*) ; 
 int FUNC12 (struct ocfs2_super*,struct inode*,struct buffer_head*,scalar_t__) ; 
 int FUNC13 (struct ocfs2_super*,struct inode*,struct buffer_head*,struct ocfs2_truncate_context**) ; 
 int FUNC14 (struct inode*,struct buffer_head*,scalar_t__,scalar_t__,int) ; 
 int FUNC15 (struct inode*,struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC19(struct inode *inode,
			       struct buffer_head *di_bh,
			       u64 new_i_size)
{
	int status = 0;
	struct ocfs2_dinode *fe = NULL;
	struct ocfs2_super *osb = FUNC1(inode->i_sb);
	struct ocfs2_truncate_context *tc = NULL;

	FUNC8("(inode = %llu, new_i_size = %llu\n",
		   (unsigned long long)FUNC0(inode)->ip_blkno,
		   (unsigned long long)new_i_size);

	/* We trust di_bh because it comes from ocfs2_inode_lock(), which
	 * already validated it */
	fe = (struct ocfs2_dinode *) di_bh->b_data;

	FUNC7(FUNC5(fe->i_size) != FUNC3(inode),
			"Inode %llu, inode i_size = %lld != di "
			"i_size = %llu, i_flags = 0x%x\n",
			(unsigned long long)FUNC0(inode)->ip_blkno,
			FUNC3(inode),
			(unsigned long long)FUNC5(fe->i_size),
			FUNC4(fe->i_flags));

	if (new_i_size > FUNC5(fe->i_size)) {
		FUNC6(0, "asked to truncate file with size (%llu) to size (%llu)!\n",
		     (unsigned long long)FUNC5(fe->i_size),
		     (unsigned long long)new_i_size);
		status = -EINVAL;
		FUNC9(status);
		goto bail;
	}

	FUNC6(0, "inode %llu, i_size = %llu, new_i_size = %llu\n",
	     (unsigned long long)FUNC5(fe->i_blkno),
	     (unsigned long long)FUNC5(fe->i_size),
	     (unsigned long long)new_i_size);

	/* lets handle the simple truncate cases before doing any more
	 * cluster locking. */
	if (new_i_size == FUNC5(fe->i_size))
		goto bail;

	FUNC2(&FUNC0(inode)->ip_alloc_sem);

	/*
	 * The inode lock forced other nodes to sync and drop their
	 * pages, which (correctly) happens even if we have a truncate
	 * without allocation change - ocfs2 cluster sizes can be much
	 * greater than page size, so we have to truncate them
	 * anyway.
	 */
	FUNC17(inode->i_mapping, new_i_size + PAGE_SIZE - 1, 0, 1);
	FUNC16(inode->i_mapping, new_i_size);

	if (FUNC0(inode)->ip_dyn_features & OCFS2_INLINE_DATA_FL) {
		status = FUNC14(inode, di_bh, new_i_size,
					       FUNC3(inode), 1);
		if (status)
			FUNC9(status);

		goto bail_unlock_sem;
	}

	/* alright, we're going to need to do a full blown alloc size
	 * change. Orphan the inode so that recovery can complete the
	 * truncate if necessary. This does the task of marking
	 * i_size. */
	status = FUNC12(osb, inode, di_bh, new_i_size);
	if (status < 0) {
		FUNC9(status);
		goto bail_unlock_sem;
	}

	status = FUNC13(osb, inode, di_bh, &tc);
	if (status < 0) {
		FUNC9(status);
		goto bail_unlock_sem;
	}

	status = FUNC11(osb, inode, di_bh, tc);
	if (status < 0) {
		FUNC9(status);
		goto bail_unlock_sem;
	}

	/* TODO: orphan dir cleanup here. */
bail_unlock_sem:
	FUNC18(&FUNC0(inode)->ip_alloc_sem);

bail:
	if (!status && FUNC0(inode)->ip_clusters == 0)
		status = FUNC15(inode, di_bh);

	FUNC10(status);
	return status;
}