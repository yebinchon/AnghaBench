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
typedef  scalar_t__ u32 ;
struct ocfs2_super {TYPE_1__* local_alloc_bh; } ;
struct ocfs2_local_alloc {int /*<<< orphan*/  la_bm_off; } ;
struct ocfs2_dinode {int dummy; } ;
struct ocfs2_alloc_context {scalar_t__ ac_max_block; } ;
struct inode {int /*<<< orphan*/  i_sb; } ;
struct TYPE_2__ {scalar_t__ b_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOSPC ; 
 struct ocfs2_local_alloc* FUNC0 (struct ocfs2_dinode*) ; 
 struct ocfs2_super* FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,unsigned long long,unsigned long long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC6 (struct ocfs2_super*,struct ocfs2_dinode*,scalar_t__) ; 

__attribute__((used)) static int FUNC7(struct inode *inode,
				      struct ocfs2_alloc_context *ac,
				      u32 bits_wanted)
{
	struct ocfs2_super *osb = FUNC1(inode->i_sb);
	struct ocfs2_dinode *alloc;
	struct ocfs2_local_alloc *la;
	int start;
	u64 block_off;

	if (!ac->ac_max_block)
		return 1;

	alloc = (struct ocfs2_dinode *) osb->local_alloc_bh->b_data;
	la = FUNC0(alloc);

	start = FUNC6(osb, alloc, bits_wanted);
	if (start == -1) {
		FUNC4(-ENOSPC);
		return 0;
	}

	/*
	 * Converting (bm_off + start + bits_wanted) to blocks gives us
	 * the blkno just past our actual allocation.  This is perfect
	 * to compare with ac_max_block.
	 */
	block_off = FUNC5(inode->i_sb,
					     FUNC2(la->la_bm_off) +
					     start + bits_wanted);
	FUNC3(0, "Checking %llu against %llu\n",
	     (unsigned long long)block_off,
	     (unsigned long long)ac->ac_max_block);
	if (block_off > ac->ac_max_block)
		return 0;

	return 1;
}