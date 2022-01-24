#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u64 ;
typedef  int /*<<< orphan*/  u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct super_block {int /*<<< orphan*/  s_blocksize; } ;
struct TYPE_4__ {void* rl_count; } ;
struct ocfs2_refcount_block {int /*<<< orphan*/  rf_generation; TYPE_1__ rf_records; void* rf_flags; void* rf_parent; void* rf_blkno; void* rf_fs_generation; void* rf_suballoc_bit; void* rf_suballoc_slot; } ;
struct ocfs2_extent_tree {int dummy; } ;
struct ocfs2_caching_info {int dummy; } ;
struct ocfs2_alloc_context {int dummy; } ;
struct buffer_head {scalar_t__ b_blocknr; scalar_t__ b_data; } ;
typedef  int /*<<< orphan*/  handle_t ;
struct TYPE_5__ {int /*<<< orphan*/  fs_generation; int /*<<< orphan*/  slot_num; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EIO ; 
 int /*<<< orphan*/  OCFS2_JOURNAL_ACCESS_CREATE ; 
 int /*<<< orphan*/  OCFS2_JOURNAL_ACCESS_WRITE ; 
 int /*<<< orphan*/  OCFS2_REFCOUNT_BLOCK_SIGNATURE ; 
 int /*<<< orphan*/  OCFS2_REFCOUNT_LEAF_FL ; 
 int OCFS2_REFCOUNT_TREE_FL ; 
 TYPE_2__* FUNC1 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC2 (struct buffer_head*) ; 
 void* FUNC3 (int /*<<< orphan*/ ) ; 
 void* FUNC4 (int /*<<< orphan*/ ) ; 
 void* FUNC5 (scalar_t__) ; 
 int FUNC6 (void*) ; 
 int /*<<< orphan*/  FUNC7 (struct ocfs2_refcount_block*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,unsigned long long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int FUNC10 (TYPE_2__*,int /*<<< orphan*/ *,struct ocfs2_alloc_context*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__*) ; 
 int FUNC11 (struct buffer_head*,struct buffer_head*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (struct ocfs2_extent_tree*,struct ocfs2_caching_info*,struct buffer_head*) ; 
 int FUNC13 (int /*<<< orphan*/ *,struct ocfs2_extent_tree*,int /*<<< orphan*/ ,scalar_t__,int,int /*<<< orphan*/ ,struct ocfs2_alloc_context*) ; 
 int FUNC14 (int /*<<< orphan*/ *,struct ocfs2_caching_info*,struct buffer_head*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,struct buffer_head*) ; 
 struct super_block* FUNC16 (struct ocfs2_caching_info*) ; 
 int /*<<< orphan*/  FUNC17 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC18 (struct ocfs2_caching_info*,struct buffer_head*) ; 
 struct buffer_head* FUNC19 (struct super_block*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC20 (void*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC21(handle_t *handle,
					 struct ocfs2_caching_info *ci,
					 struct buffer_head *ref_root_bh,
					 struct buffer_head *ref_leaf_bh,
					 struct ocfs2_alloc_context *meta_ac)
{
	int ret;
	u16 suballoc_bit_start;
	u32 num_got, new_cpos;
	u64 blkno;
	struct super_block *sb = FUNC16(ci);
	struct ocfs2_refcount_block *root_rb =
			(struct ocfs2_refcount_block *)ref_root_bh->b_data;
	struct buffer_head *new_bh = NULL;
	struct ocfs2_refcount_block *new_rb;
	struct ocfs2_extent_tree ref_et;

	FUNC0(!(FUNC6(root_rb->rf_flags) & OCFS2_REFCOUNT_TREE_FL));

	ret = FUNC14(handle, ci, ref_root_bh,
				      OCFS2_JOURNAL_ACCESS_WRITE);
	if (ret) {
		FUNC9(ret);
		goto out;
	}

	ret = FUNC14(handle, ci, ref_leaf_bh,
				      OCFS2_JOURNAL_ACCESS_WRITE);
	if (ret) {
		FUNC9(ret);
		goto out;
	}

	ret = FUNC10(FUNC1(sb), handle, meta_ac, 1,
				   &suballoc_bit_start, &num_got,
				   &blkno);
	if (ret) {
		FUNC9(ret);
		goto out;
	}

	new_bh = FUNC19(sb, blkno);
	if (new_bh == NULL) {
		ret = -EIO;
		FUNC9(ret);
		goto out;
	}
	FUNC18(ci, new_bh);

	ret = FUNC14(handle, ci, new_bh,
				      OCFS2_JOURNAL_ACCESS_CREATE);
	if (ret) {
		FUNC9(ret);
		goto out;
	}

	/* Initialize ocfs2_refcount_block. */
	new_rb = (struct ocfs2_refcount_block *)new_bh->b_data;
	FUNC7(new_rb, 0, sb->s_blocksize);
	FUNC20((void *)new_rb, OCFS2_REFCOUNT_BLOCK_SIGNATURE);
	new_rb->rf_suballoc_slot = FUNC3(FUNC1(sb)->slot_num);
	new_rb->rf_suballoc_bit = FUNC3(suballoc_bit_start);
	new_rb->rf_fs_generation = FUNC4(FUNC1(sb)->fs_generation);
	new_rb->rf_blkno = FUNC5(blkno);
	new_rb->rf_parent = FUNC5(ref_root_bh->b_blocknr);
	new_rb->rf_flags = FUNC4(OCFS2_REFCOUNT_LEAF_FL);
	new_rb->rf_records.rl_count =
				FUNC3(FUNC17(sb));
	new_rb->rf_generation = root_rb->rf_generation;

	ret = FUNC11(ref_leaf_bh, new_bh, &new_cpos);
	if (ret) {
		FUNC9(ret);
		goto out;
	}

	FUNC15(handle, ref_leaf_bh);
	FUNC15(handle, new_bh);

	FUNC12(&ref_et, ci, ref_root_bh);

	FUNC8(0, "insert new leaf block %llu at %u\n",
	     (unsigned long long)new_bh->b_blocknr, new_cpos);

	/* Insert the new leaf block with the specific offset cpos. */
	ret = FUNC13(handle, &ref_et, new_cpos, new_bh->b_blocknr,
				  1, 0, meta_ac);
	if (ret)
		FUNC9(ret);

out:
	FUNC2(new_bh);
	return ret;
}