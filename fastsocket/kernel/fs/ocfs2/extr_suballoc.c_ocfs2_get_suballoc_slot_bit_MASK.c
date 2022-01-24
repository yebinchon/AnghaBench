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
struct ocfs2_super {int max_slots; } ;
struct ocfs2_dinode {int /*<<< orphan*/  i_suballoc_bit; int /*<<< orphan*/  i_suballoc_slot; } ;
struct buffer_head {scalar_t__ b_data; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  ML_ERROR ; 
 scalar_t__ OCFS2_INVALID_SLOT ; 
 int /*<<< orphan*/  FUNC0 (struct ocfs2_dinode*) ; 
 int /*<<< orphan*/  FUNC1 (struct buffer_head*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,unsigned long long,...) ; 
 int /*<<< orphan*/  FUNC4 (char*,unsigned long long) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int FUNC6 (struct ocfs2_super*,scalar_t__,int,struct buffer_head**) ; 

__attribute__((used)) static int FUNC7(struct ocfs2_super *osb, u64 blkno,
				       u16 *suballoc_slot, u16 *suballoc_bit)
{
	int status;
	struct buffer_head *inode_bh = NULL;
	struct ocfs2_dinode *inode_fe;

	FUNC4("blkno: %llu\n", (unsigned long long)blkno);

	/* dirty read disk */
	status = FUNC6(osb, blkno, 1, &inode_bh);
	if (status < 0) {
		FUNC3(ML_ERROR, "read block %llu failed %d\n",
		     (unsigned long long)blkno, status);
		goto bail;
	}

	inode_fe = (struct ocfs2_dinode *) inode_bh->b_data;
	if (!FUNC0(inode_fe)) {
		FUNC3(ML_ERROR, "invalid inode %llu requested\n",
		     (unsigned long long)blkno);
		status = -EINVAL;
		goto bail;
	}

	if (FUNC2(inode_fe->i_suballoc_slot) != (u16)OCFS2_INVALID_SLOT &&
	    (u32)FUNC2(inode_fe->i_suballoc_slot) > osb->max_slots - 1) {
		FUNC3(ML_ERROR, "inode %llu has invalid suballoc slot %u\n",
		     (unsigned long long)blkno,
		     (u32)FUNC2(inode_fe->i_suballoc_slot));
		status = -EINVAL;
		goto bail;
	}

	if (suballoc_slot)
		*suballoc_slot = FUNC2(inode_fe->i_suballoc_slot);
	if (suballoc_bit)
		*suballoc_bit = FUNC2(inode_fe->i_suballoc_bit);

bail:
	FUNC1(inode_bh);

	FUNC5(status);
	return status;
}