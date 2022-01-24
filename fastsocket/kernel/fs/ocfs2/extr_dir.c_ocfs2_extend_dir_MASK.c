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
struct super_block {int /*<<< orphan*/  s_blocksize; } ;
struct ocfs2_super {struct super_block* sb; } ;
struct ocfs2_extent_tree {int dummy; } ;
struct ocfs2_extent_list {int dummy; } ;
struct ocfs2_dir_lookup_result {struct buffer_head* dl_dx_root_bh; } ;
struct ocfs2_dir_entry {void* rec_len; scalar_t__ inode; } ;
struct TYPE_4__ {struct ocfs2_extent_list i_list; } ;
struct ocfs2_dinode {TYPE_1__ id2; } ;
struct ocfs2_alloc_context {int dummy; } ;
struct inode {int /*<<< orphan*/  i_blocks; TYPE_2__* i_sb; } ;
struct buffer_head {scalar_t__ b_data; } ;
typedef  scalar_t__ loff_t ;
typedef  int /*<<< orphan*/  handle_t ;
struct TYPE_6__ {int ip_dyn_features; int /*<<< orphan*/  ip_alloc_sem; int /*<<< orphan*/  ip_lock; int /*<<< orphan*/  ip_clusters; scalar_t__ ip_blkno; } ;
struct TYPE_5__ {scalar_t__ s_blocksize; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct buffer_head*) ; 
 int ENOSPC ; 
 int /*<<< orphan*/  FUNC1 (struct inode*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC3 (struct inode*) ; 
 int OCFS2_INLINE_DATA_FL ; 
 int /*<<< orphan*/  OCFS2_JOURNAL_ACCESS_CREATE ; 
 int OCFS2_SIMPLE_DIR_EXTEND_CREDITS ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct buffer_head*) ; 
 void* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct buffer_head*) ; 
 scalar_t__ FUNC9 (struct inode*) ; 
 int /*<<< orphan*/  FUNC10 (struct inode*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (void*) ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,char*,unsigned long long,scalar_t__) ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 (int) ; 
 int /*<<< orphan*/  FUNC16 (int) ; 
 int FUNC17 (struct super_block*,struct ocfs2_extent_list*,int) ; 
 scalar_t__ FUNC18 (struct super_block*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (struct ocfs2_super*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC20 (struct inode*) ; 
 int /*<<< orphan*/  FUNC21 (struct super_block*) ; 
 int FUNC22 (struct super_block*,int /*<<< orphan*/ *,struct inode*,struct buffer_head*,struct ocfs2_alloc_context*,struct ocfs2_alloc_context*,struct buffer_head**) ; 
 int FUNC23 (struct inode*,int /*<<< orphan*/ *,struct buffer_head*,struct buffer_head*) ; 
 int FUNC24 (struct inode*,struct buffer_head*,unsigned int,struct ocfs2_dir_lookup_result*,struct buffer_head**) ; 
 int /*<<< orphan*/  FUNC25 (struct ocfs2_alloc_context*) ; 
 int /*<<< orphan*/  FUNC26 (struct ocfs2_extent_tree*,int /*<<< orphan*/ ,struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC27 (struct inode*,struct buffer_head*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC28 (struct inode*) ; 
 int FUNC29 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct buffer_head*,int /*<<< orphan*/ ) ; 
 int FUNC30 (int /*<<< orphan*/ *,struct buffer_head*) ; 
 int FUNC31 (int /*<<< orphan*/ *,struct inode*,struct buffer_head*) ; 
 int FUNC32 (struct ocfs2_super*,struct ocfs2_extent_tree*) ; 
 int FUNC33 (struct ocfs2_super*,int,struct ocfs2_alloc_context**) ; 
 int FUNC34 (struct ocfs2_super*,struct ocfs2_extent_list*,struct ocfs2_alloc_context**) ; 
 int /*<<< orphan*/  FUNC35 (int /*<<< orphan*/ ,struct buffer_head*) ; 
 int /*<<< orphan*/ * FUNC36 (struct ocfs2_super*,int) ; 
 scalar_t__ FUNC37 (struct inode*) ; 
 int /*<<< orphan*/  FUNC38 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC39 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC40 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC41(struct ocfs2_super *osb,
			    struct inode *dir,
			    struct buffer_head *parent_fe_bh,
			    unsigned int blocks_wanted,
			    struct ocfs2_dir_lookup_result *lookup,
			    struct buffer_head **new_de_bh)
{
	int status = 0;
	int credits, num_free_extents, drop_alloc_sem = 0;
	loff_t dir_i_size;
	struct ocfs2_dinode *fe = (struct ocfs2_dinode *) parent_fe_bh->b_data;
	struct ocfs2_extent_list *el = &fe->id2.i_list;
	struct ocfs2_alloc_context *data_ac = NULL;
	struct ocfs2_alloc_context *meta_ac = NULL;
	handle_t *handle = NULL;
	struct buffer_head *new_bh = NULL;
	struct ocfs2_dir_entry * de;
	struct super_block *sb = osb->sb;
	struct ocfs2_extent_tree et;
	struct buffer_head *dx_root_bh = lookup->dl_dx_root_bh;

	FUNC14();

	if (FUNC3(dir)->ip_dyn_features & OCFS2_INLINE_DATA_FL) {
		/*
		 * This would be a code error as an inline directory should
		 * never have an index root.
		 */
		FUNC0(dx_root_bh);

		status = FUNC24(dir, parent_fe_bh,
						 blocks_wanted, lookup,
						 &new_bh);
		if (status) {
			FUNC15(status);
			goto bail;
		}

		/* Expansion from inline to an indexed directory will
		 * have given us this. */
		dx_root_bh = lookup->dl_dx_root_bh;

		if (blocks_wanted == 1) {
			/*
			 * If the new dirent will fit inside the space
			 * created by pushing out to one block, then
			 * we can complete the operation
			 * here. Otherwise we have to expand i_size
			 * and format the 2nd block below.
			 */
			FUNC0(new_bh == NULL);
			goto bail_bh;
		}

		/*
		 * Get rid of 'new_bh' - we want to format the 2nd
		 * data block and return that instead.
		 */
		FUNC5(new_bh);
		new_bh = NULL;

		FUNC7(&FUNC3(dir)->ip_alloc_sem);
		drop_alloc_sem = 1;
		dir_i_size = FUNC9(dir);
		credits = OCFS2_SIMPLE_DIR_EXTEND_CREDITS;
		goto do_extend;
	}

	FUNC7(&FUNC3(dir)->ip_alloc_sem);
	drop_alloc_sem = 1;
	dir_i_size = FUNC9(dir);
	FUNC13(0, "extending dir %llu (i_size = %lld)\n",
	     (unsigned long long)FUNC3(dir)->ip_blkno, dir_i_size);

	/* dir->i_size is always block aligned. */
	FUNC38(&FUNC3(dir)->ip_lock);
	if (dir_i_size == FUNC18(sb, FUNC3(dir)->ip_clusters)) {
		FUNC39(&FUNC3(dir)->ip_lock);
		FUNC26(&et, FUNC1(dir),
					      parent_fe_bh);
		num_free_extents = FUNC32(osb, &et);
		if (num_free_extents < 0) {
			status = num_free_extents;
			FUNC15(status);
			goto bail;
		}

		if (!num_free_extents) {
			status = FUNC34(osb, el, &meta_ac);
			if (status < 0) {
				if (status != -ENOSPC)
					FUNC15(status);
				goto bail;
			}
		}

		status = FUNC33(osb, 1, &data_ac);
		if (status < 0) {
			if (status != -ENOSPC)
				FUNC15(status);
			goto bail;
		}

		credits = FUNC17(sb, el, 1);
	} else {
		FUNC39(&FUNC3(dir)->ip_lock);
		credits = OCFS2_SIMPLE_DIR_EXTEND_CREDITS;
	}

do_extend:
	if (FUNC20(dir))
		credits++; /* For attaching the new dirent block to the
			    * dx_root */

	handle = FUNC36(osb, credits);
	if (FUNC2(handle)) {
		status = FUNC4(handle);
		handle = NULL;
		FUNC15(status);
		goto bail;
	}

	status = FUNC22(osb->sb, handle, dir, parent_fe_bh,
				     data_ac, meta_ac, &new_bh);
	if (status < 0) {
		FUNC15(status);
		goto bail;
	}

	FUNC35(FUNC1(dir), new_bh);

	status = FUNC29(handle, FUNC1(dir), new_bh,
					 OCFS2_JOURNAL_ACCESS_CREATE);
	if (status < 0) {
		FUNC15(status);
		goto bail;
	}
	FUNC12(new_bh->b_data, 0, sb->s_blocksize);

	de = (struct ocfs2_dir_entry *) new_bh->b_data;
	de->inode = 0;
	if (FUNC37(dir)) {
		de->rec_len = FUNC6(FUNC21(sb));

		FUNC27(dir, new_bh, FUNC11(de->rec_len));

		if (FUNC20(dir)) {
			status = FUNC23(dir, handle,
							   dx_root_bh, new_bh);
			if (status) {
				FUNC15(status);
				goto bail;
			}
		}
	} else {
		de->rec_len = FUNC6(sb->s_blocksize);
	}
	status = FUNC30(handle, new_bh);
	if (status < 0) {
		FUNC15(status);
		goto bail;
	}

	dir_i_size += dir->i_sb->s_blocksize;
	FUNC10(dir, dir_i_size);
	dir->i_blocks = FUNC28(dir);
	status = FUNC31(handle, dir, parent_fe_bh);
	if (status < 0) {
		FUNC15(status);
		goto bail;
	}

bail_bh:
	*new_de_bh = new_bh;
	FUNC8(*new_de_bh);
bail:
	if (handle)
		FUNC19(osb, handle);
	if (drop_alloc_sem)
		FUNC40(&FUNC3(dir)->ip_alloc_sem);

	if (data_ac)
		FUNC25(data_ac);
	if (meta_ac)
		FUNC25(meta_ac);

	FUNC5(new_bh);

	FUNC16(status);
	return status;
}