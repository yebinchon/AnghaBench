#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u64 ;
typedef  int /*<<< orphan*/  u32 ;
typedef  size_t u16 ;
struct ocfs2_super {int /*<<< orphan*/  sb; } ;
struct ocfs2_group_desc {int /*<<< orphan*/  bg_bits; int /*<<< orphan*/  bg_free_bits_count; } ;
struct TYPE_8__ {int /*<<< orphan*/  i_total; int /*<<< orphan*/  i_used; } ;
struct TYPE_9__ {TYPE_3__ bitmap1; } ;
struct ocfs2_chain_list {int /*<<< orphan*/  cl_cpg; int /*<<< orphan*/  cl_next_free_rec; int /*<<< orphan*/  cl_count; TYPE_2__* cl_recs; } ;
struct TYPE_6__ {struct ocfs2_chain_list i_chain; } ;
struct ocfs2_dinode {void* i_size; int /*<<< orphan*/  i_clusters; TYPE_4__ id1; TYPE_1__ id2; } ;
struct ocfs2_alloc_context {scalar_t__ ac_last_group; } ;
struct inode {int /*<<< orphan*/  i_blocks; int /*<<< orphan*/  i_sb; } ;
struct buffer_head {scalar_t__ b_data; } ;
typedef  int /*<<< orphan*/  handle_t ;
struct TYPE_10__ {int /*<<< orphan*/  ip_lock; int /*<<< orphan*/  ip_clusters; } ;
struct TYPE_7__ {void* c_blkno; int /*<<< orphan*/  c_total; int /*<<< orphan*/  c_free; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int EIO ; 
 int ENOSPC ; 
 int /*<<< orphan*/  FUNC1 (struct inode*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 TYPE_5__* FUNC3 (struct inode*) ; 
 int /*<<< orphan*/  OCFS2_JOURNAL_ACCESS_WRITE ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct buffer_head*) ; 
 void* FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (void*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,char*,size_t,...) ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 (int) ; 
 int /*<<< orphan*/  FUNC16 (int) ; 
 int FUNC17 (int /*<<< orphan*/ *,struct inode*,struct buffer_head*,scalar_t__,size_t,struct ocfs2_chain_list*) ; 
 int FUNC18 (int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC19 (struct ocfs2_super*,int /*<<< orphan*/ *,struct ocfs2_alloc_context*,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC20 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC21 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (struct ocfs2_super*,int /*<<< orphan*/ *) ; 
 size_t FUNC23 (struct ocfs2_chain_list*) ; 
 int /*<<< orphan*/  FUNC24 (struct ocfs2_alloc_context*) ; 
 int /*<<< orphan*/  FUNC25 (struct inode*) ; 
 int /*<<< orphan*/  FUNC26 (struct inode*) ; 
 int FUNC27 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct buffer_head*,int /*<<< orphan*/ ) ; 
 int FUNC28 (int /*<<< orphan*/ *,struct buffer_head*) ; 
 int FUNC29 (struct ocfs2_super*,scalar_t__,scalar_t__,int,struct ocfs2_alloc_context**) ; 
 int /*<<< orphan*/  FUNC30 (int /*<<< orphan*/ ,struct buffer_head*) ; 
 int /*<<< orphan*/ * FUNC31 (struct ocfs2_super*,int) ; 
 struct buffer_head* FUNC32 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC33 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC34 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC35(struct ocfs2_super *osb,
				   struct inode *alloc_inode,
				   struct buffer_head *bh,
				   u64 max_block,
				   u64 *last_alloc_group,
				   int flags)
{
	int status, credits;
	struct ocfs2_dinode *fe = (struct ocfs2_dinode *) bh->b_data;
	struct ocfs2_chain_list *cl;
	struct ocfs2_alloc_context *ac = NULL;
	handle_t *handle = NULL;
	u32 bit_off, num_bits;
	u16 alloc_rec;
	u64 bg_blkno;
	struct buffer_head *bg_bh = NULL;
	struct ocfs2_group_desc *bg;

	FUNC0(FUNC26(alloc_inode));

	FUNC14();

	cl = &fe->id2.i_chain;
	status = FUNC29(osb,
						   FUNC9(cl->cl_cpg),
						   max_block, flags, &ac);
	if (status < 0) {
		if (status != -ENOSPC)
			FUNC15(status);
		goto bail;
	}

	credits = FUNC18(osb->sb,
						 FUNC9(cl->cl_cpg));
	handle = FUNC31(osb, credits);
	if (FUNC2(handle)) {
		status = FUNC4(handle);
		handle = NULL;
		FUNC15(status);
		goto bail;
	}

	if (last_alloc_group && *last_alloc_group != 0) {
		FUNC13(0, "use old allocation group %llu for block group alloc\n",
		     (unsigned long long)*last_alloc_group);
		ac->ac_last_group = *last_alloc_group;
	}
	status = FUNC19(osb,
				      handle,
				      ac,
				      FUNC9(cl->cl_cpg),
				      &bit_off,
				      &num_bits);
	if (status < 0) {
		if (status != -ENOSPC)
			FUNC15(status);
		goto bail;
	}

	alloc_rec = FUNC23(cl);

	/* setup the group */
	bg_blkno = FUNC20(osb->sb, bit_off);
	FUNC13(0, "new descriptor, record %u, at block %llu\n",
	     alloc_rec, (unsigned long long)bg_blkno);

	bg_bh = FUNC32(osb->sb, bg_blkno);
	if (!bg_bh) {
		status = -EIO;
		FUNC15(status);
		goto bail;
	}
	FUNC30(FUNC1(alloc_inode), bg_bh);

	status = FUNC17(handle,
					alloc_inode,
					bg_bh,
					bg_blkno,
					alloc_rec,
					cl);
	if (status < 0) {
		FUNC15(status);
		goto bail;
	}

	bg = (struct ocfs2_group_desc *) bg_bh->b_data;

	status = FUNC27(handle, FUNC1(alloc_inode),
					 bh, OCFS2_JOURNAL_ACCESS_WRITE);
	if (status < 0) {
		FUNC15(status);
		goto bail;
	}

	FUNC10(&cl->cl_recs[alloc_rec].c_free,
		     FUNC9(bg->bg_free_bits_count));
	FUNC10(&cl->cl_recs[alloc_rec].c_total, FUNC9(bg->bg_bits));
	cl->cl_recs[alloc_rec].c_blkno  = FUNC6(bg_blkno);
	if (FUNC9(cl->cl_next_free_rec) < FUNC9(cl->cl_count))
		FUNC8(&cl->cl_next_free_rec, 1);

	FUNC10(&fe->id1.bitmap1.i_used, FUNC9(bg->bg_bits) -
					FUNC9(bg->bg_free_bits_count));
	FUNC10(&fe->id1.bitmap1.i_total, FUNC9(bg->bg_bits));
	FUNC10(&fe->i_clusters, FUNC9(cl->cl_cpg));

	status = FUNC28(handle, bh);
	if (status < 0) {
		FUNC15(status);
		goto bail;
	}

	FUNC33(&FUNC3(alloc_inode)->ip_lock);
	FUNC3(alloc_inode)->ip_clusters = FUNC11(fe->i_clusters);
	fe->i_size = FUNC6(FUNC21(alloc_inode->i_sb,
					     FUNC11(fe->i_clusters)));
	FUNC34(&FUNC3(alloc_inode)->ip_lock);
	FUNC7(alloc_inode, FUNC12(fe->i_size));
	alloc_inode->i_blocks = FUNC25(alloc_inode);

	status = 0;

	/* save the new last alloc group so that the caller can cache it. */
	if (last_alloc_group)
		*last_alloc_group = ac->ac_last_group;

bail:
	if (handle)
		FUNC22(osb, handle);

	if (ac)
		FUNC24(ac);

	FUNC5(bg_bh);

	FUNC16(status);
	return status;
}