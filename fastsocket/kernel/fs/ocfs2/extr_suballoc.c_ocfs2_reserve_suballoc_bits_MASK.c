#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u64 ;
typedef  scalar_t__ u32 ;
struct TYPE_4__ {int /*<<< orphan*/  bg_extends; } ;
struct ocfs2_super {TYPE_1__ alloc_stats; } ;
struct TYPE_5__ {int /*<<< orphan*/  i_used; int /*<<< orphan*/  i_total; } ;
struct TYPE_6__ {TYPE_2__ bitmap1; } ;
struct ocfs2_dinode {int i_flags; TYPE_3__ id1; int /*<<< orphan*/  i_blkno; } ;
struct ocfs2_alloc_context {scalar_t__ ac_bits_wanted; struct buffer_head* ac_bh; int /*<<< orphan*/  ac_max_block; scalar_t__ ac_alloc_slot; struct inode* ac_inode; } ;
struct inode {int /*<<< orphan*/  i_sb; int /*<<< orphan*/  i_mutex; } ;
struct buffer_head {scalar_t__ b_data; } ;

/* Variables and functions */
 int ALLOC_NEW_GROUP ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EINVAL ; 
 int EIO ; 
 int ENOSPC ; 
 int /*<<< orphan*/  OCFS2_CHAIN_FL ; 
 int /*<<< orphan*/  FUNC1 (struct ocfs2_dinode*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct buffer_head*) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC6 (struct inode*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,scalar_t__,scalar_t__,...) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 (int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int FUNC15 (struct ocfs2_super*,struct inode*,struct buffer_head*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,char*,unsigned long long) ; 
 struct inode* FUNC17 (struct ocfs2_super*,int,scalar_t__) ; 
 int FUNC18 (struct inode*,struct buffer_head**,int) ; 
 scalar_t__ FUNC19 (struct inode*) ; 

__attribute__((used)) static int FUNC20(struct ocfs2_super *osb,
				       struct ocfs2_alloc_context *ac,
				       int type,
				       u32 slot,
				       u64 *last_alloc_group,
				       int flags)
{
	int status;
	u32 bits_wanted = ac->ac_bits_wanted;
	struct inode *alloc_inode;
	struct buffer_head *bh = NULL;
	struct ocfs2_dinode *fe;
	u32 free_bits;

	FUNC10();

	alloc_inode = FUNC17(osb, type, slot);
	if (!alloc_inode) {
		FUNC11(-EINVAL);
		return -EINVAL;
	}

	FUNC13(&alloc_inode->i_mutex);

	status = FUNC18(alloc_inode, &bh, 1);
	if (status < 0) {
		FUNC14(&alloc_inode->i_mutex);
		FUNC6(alloc_inode);

		FUNC11(status);
		return status;
	}

	ac->ac_inode = alloc_inode;
	ac->ac_alloc_slot = slot;

	fe = (struct ocfs2_dinode *) bh->b_data;

	/* The bh was validated by the inode read inside
	 * ocfs2_inode_lock().  Any corruption is a code bug. */
	FUNC0(!FUNC1(fe));

	if (!(fe->i_flags & FUNC4(OCFS2_CHAIN_FL))) {
		FUNC16(alloc_inode->i_sb, "Invalid chain allocator %llu",
			    (unsigned long long)FUNC8(fe->i_blkno));
		status = -EIO;
		goto bail;
	}

	free_bits = FUNC7(fe->id1.bitmap1.i_total) -
		FUNC7(fe->id1.bitmap1.i_used);

	if (bits_wanted > free_bits) {
		/* cluster bitmap never grows */
		if (FUNC19(alloc_inode)) {
			FUNC9(0, "Disk Full: wanted=%u, free_bits=%u\n",
			     bits_wanted, free_bits);
			status = -ENOSPC;
			goto bail;
		}

		if (!(flags & ALLOC_NEW_GROUP)) {
			FUNC9(0, "Alloc File %u Full: wanted=%u, free_bits=%u, "
			     "and we don't alloc a new group for it.\n",
			     slot, bits_wanted, free_bits);
			status = -ENOSPC;
			goto bail;
		}

		status = FUNC15(osb, alloc_inode, bh,
						 ac->ac_max_block,
						 last_alloc_group, flags);
		if (status < 0) {
			if (status != -ENOSPC)
				FUNC11(status);
			goto bail;
		}
		FUNC2(&osb->alloc_stats.bg_extends);

		/* You should never ask for this much metadata */
		FUNC0(bits_wanted >
		       (FUNC7(fe->id1.bitmap1.i_total)
			- FUNC7(fe->id1.bitmap1.i_used)));
	}

	FUNC5(bh);
	ac->ac_bh = bh;
bail:
	FUNC3(bh);

	FUNC12(status);
	return status;
}