#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_8__ ;
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u64 ;
typedef  scalar_t__ u32 ;
typedef  size_t u16 ;
struct ocfs2_group_desc {int /*<<< orphan*/  bg_free_bits_count; int /*<<< orphan*/  bg_blkno; int /*<<< orphan*/  bg_next_group; } ;
struct TYPE_10__ {int /*<<< orphan*/  i_used; } ;
struct TYPE_11__ {TYPE_2__ bitmap1; } ;
struct TYPE_9__ {int /*<<< orphan*/  i_chain; } ;
struct ocfs2_dinode {int /*<<< orphan*/  i_blkno; TYPE_3__ id1; TYPE_1__ id2; } ;
struct ocfs2_chain_list {TYPE_4__* cl_recs; } ;
struct ocfs2_alloc_context {size_t ac_chain; int (* ac_group_search ) (struct inode*,struct buffer_head*,scalar_t__,scalar_t__,int /*<<< orphan*/ ,size_t*,size_t*) ;TYPE_5__* ac_bh; scalar_t__ ac_allow_chain_relink; int /*<<< orphan*/  ac_max_block; struct inode* ac_inode; } ;
struct inode {int dummy; } ;
struct buffer_head {scalar_t__ b_data; } ;
typedef  int /*<<< orphan*/  handle_t ;
struct TYPE_14__ {scalar_t__ ip_blkno; } ;
struct TYPE_13__ {scalar_t__ b_data; } ;
struct TYPE_12__ {int /*<<< orphan*/  c_free; int /*<<< orphan*/  c_blkno; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ENOSPC ; 
 int /*<<< orphan*/  FUNC1 (struct inode*) ; 
 TYPE_8__* FUNC2 (struct inode*) ; 
 int /*<<< orphan*/  OCFS2_JOURNAL_ACCESS_WRITE ; 
 int /*<<< orphan*/  FUNC3 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 size_t FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned int) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,unsigned int,unsigned long long,...) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 scalar_t__ FUNC12 (struct ocfs2_group_desc*,unsigned int) ; 
 int FUNC13 (int /*<<< orphan*/ *,struct inode*,struct ocfs2_group_desc*,struct buffer_head*,size_t,unsigned int) ; 
 int FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_5__*,int /*<<< orphan*/ ) ; 
 int FUNC15 (int /*<<< orphan*/ *,TYPE_5__*) ; 
 int FUNC16 (struct inode*,struct ocfs2_dinode*,scalar_t__,struct buffer_head**) ; 
 int FUNC17 (int /*<<< orphan*/ *,struct inode*,TYPE_5__*,struct buffer_head*,struct buffer_head*,size_t) ; 
 int FUNC18 (struct inode*,struct buffer_head*,scalar_t__,scalar_t__,int /*<<< orphan*/ ,size_t*,size_t*) ; 

__attribute__((used)) static int FUNC19(struct ocfs2_alloc_context *ac,
			      handle_t *handle,
			      u32 bits_wanted,
			      u32 min_bits,
			      u16 *bit_off,
			      unsigned int *num_bits,
			      u64 *bg_blkno,
			      u16 *bits_left)
{
	int status;
	u16 chain, tmp_bits;
	u32 tmp_used;
	u64 next_group;
	struct inode *alloc_inode = ac->ac_inode;
	struct buffer_head *group_bh = NULL;
	struct buffer_head *prev_group_bh = NULL;
	struct ocfs2_dinode *fe = (struct ocfs2_dinode *) ac->ac_bh->b_data;
	struct ocfs2_chain_list *cl = (struct ocfs2_chain_list *) &fe->id2.i_chain;
	struct ocfs2_group_desc *bg;

	chain = ac->ac_chain;
	FUNC9(0, "trying to alloc %u bits from chain %u, inode %llu\n",
	     bits_wanted, chain,
	     (unsigned long long)FUNC2(alloc_inode)->ip_blkno);

	status = FUNC16(alloc_inode, fe,
					     FUNC8(cl->cl_recs[chain].c_blkno),
					     &group_bh);
	if (status < 0) {
		FUNC10(status);
		goto bail;
	}
	bg = (struct ocfs2_group_desc *) group_bh->b_data;

	status = -ENOSPC;
	/* for now, the chain search is a bit simplistic. We just use
	 * the 1st group with any empty bits. */
	while ((status = ac->ac_group_search(alloc_inode, group_bh,
					     bits_wanted, min_bits,
					     ac->ac_max_block, bit_off,
					     &tmp_bits)) == -ENOSPC) {
		if (!bg->bg_next_group)
			break;

		FUNC3(prev_group_bh);
		prev_group_bh = NULL;

		next_group = FUNC8(bg->bg_next_group);
		prev_group_bh = group_bh;
		group_bh = NULL;
		status = FUNC16(alloc_inode, fe,
						     next_group, &group_bh);
		if (status < 0) {
			FUNC10(status);
			goto bail;
		}
		bg = (struct ocfs2_group_desc *) group_bh->b_data;
	}
	if (status < 0) {
		if (status != -ENOSPC)
			FUNC10(status);
		goto bail;
	}

	FUNC9(0, "alloc succeeds: we give %u bits from block group %llu\n",
	     tmp_bits, (unsigned long long)FUNC8(bg->bg_blkno));

	*num_bits = tmp_bits;

	FUNC0(*num_bits == 0);

	/*
	 * Keep track of previous block descriptor read. When
	 * we find a target, if we have read more than X
	 * number of descriptors, and the target is reasonably
	 * empty, relink him to top of his chain.
	 *
	 * We've read 0 extra blocks and only send one more to
	 * the transaction, yet the next guy to search has a
	 * much easier time.
	 *
	 * Do this *after* figuring out how many bits we're taking out
	 * of our target group.
	 */
	if (ac->ac_allow_chain_relink &&
	    (prev_group_bh) &&
	    (FUNC12(bg, *num_bits))) {
		status = FUNC17(handle, alloc_inode,
						  ac->ac_bh, group_bh,
						  prev_group_bh, chain);
		if (status < 0) {
			FUNC10(status);
			goto bail;
		}
	}

	/* Ok, claim our bits now: set the info on dinode, chainlist
	 * and then the group */
	status = FUNC14(handle,
					 FUNC1(alloc_inode),
					 ac->ac_bh,
					 OCFS2_JOURNAL_ACCESS_WRITE);
	if (status < 0) {
		FUNC10(status);
		goto bail;
	}

	tmp_used = FUNC7(fe->id1.bitmap1.i_used);
	fe->id1.bitmap1.i_used = FUNC4(*num_bits + tmp_used);
	FUNC6(&cl->cl_recs[chain].c_free, -(*num_bits));

	status = FUNC15(handle,
				     ac->ac_bh);
	if (status < 0) {
		FUNC10(status);
		goto bail;
	}

	status = FUNC13(handle,
					    alloc_inode,
					    bg,
					    group_bh,
					    *bit_off,
					    *num_bits);
	if (status < 0) {
		FUNC10(status);
		goto bail;
	}

	FUNC9(0, "Allocated %u bits from suballocator %llu\n", *num_bits,
	     (unsigned long long)FUNC8(fe->i_blkno));

	*bg_blkno = FUNC8(bg->bg_blkno);
	*bits_left = FUNC5(bg->bg_free_bits_count);
bail:
	FUNC3(group_bh);
	FUNC3(prev_group_bh);

	FUNC11(status);
	return status;
}