#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_6__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u64 ;
typedef  int /*<<< orphan*/  u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct ocfs2_super {TYPE_3__* sb; int /*<<< orphan*/  fs_generation; int /*<<< orphan*/  slot_num; } ;
struct TYPE_8__ {void* l_count; } ;
struct TYPE_7__ {void* de_count; } ;
struct ocfs2_dx_root_block {TYPE_2__ dr_list; TYPE_1__ dr_entries; int /*<<< orphan*/  dr_flags; void* dr_free_blk; void* dr_num_entries; void* dr_dir_blkno; void* dr_blkno; void* dr_fs_generation; void* dr_suballoc_bit; void* dr_suballoc_slot; int /*<<< orphan*/  dr_signature; } ;
struct ocfs2_dir_block_trailer {int /*<<< orphan*/  db_free_rec_len; } ;
struct ocfs2_dinode {void* i_dyn_features; void* i_dx_root; } ;
struct ocfs2_alloc_context {int dummy; } ;
struct inode {int /*<<< orphan*/  i_sb; } ;
struct buffer_head {scalar_t__ b_blocknr; scalar_t__ b_data; } ;
typedef  int /*<<< orphan*/  handle_t ;
struct TYPE_10__ {int /*<<< orphan*/  ip_dyn_features; scalar_t__ ip_blkno; } ;
struct TYPE_9__ {int /*<<< orphan*/  s_blocksize; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  OCFS2_DX_FLAG_INLINE ; 
 int /*<<< orphan*/  OCFS2_DX_ROOT_SIGNATURE ; 
 TYPE_6__* FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  OCFS2_INDEXED_DIR_FL ; 
 int /*<<< orphan*/  OCFS2_JOURNAL_ACCESS_CREATE ; 
 int /*<<< orphan*/  FUNC2 (struct buffer_head*) ; 
 void* FUNC3 (int /*<<< orphan*/ ) ; 
 void* FUNC4 (int /*<<< orphan*/ ) ; 
 void* FUNC5 (scalar_t__) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct ocfs2_dx_root_block*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,unsigned long long,unsigned long long) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int FUNC10 (struct ocfs2_super*,int /*<<< orphan*/ *,struct ocfs2_alloc_context*,int,int /*<<< orphan*/ *,unsigned int*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_3__*) ; 
 int FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct buffer_head*,int /*<<< orphan*/ ) ; 
 int FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct buffer_head*,int /*<<< orphan*/ ) ; 
 int FUNC15 (int /*<<< orphan*/ *,struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,struct buffer_head*) ; 
 struct ocfs2_dir_block_trailer* FUNC17 (struct buffer_head*,int /*<<< orphan*/ ) ; 
 struct buffer_head* FUNC18 (TYPE_3__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC20(struct ocfs2_super *osb,
				     handle_t *handle, struct inode *dir,
				     struct buffer_head *di_bh,
				     struct buffer_head *dirdata_bh,
				     struct ocfs2_alloc_context *meta_ac,
				     int dx_inline, u32 num_entries,
				     struct buffer_head **ret_dx_root_bh)
{
	int ret;
	struct ocfs2_dinode *di = (struct ocfs2_dinode *) di_bh->b_data;
	u16 dr_suballoc_bit;
	u64 dr_blkno;
	unsigned int num_bits;
	struct buffer_head *dx_root_bh = NULL;
	struct ocfs2_dx_root_block *dx_root;
	struct ocfs2_dir_block_trailer *trailer =
		FUNC17(dirdata_bh, dir->i_sb);

	ret = FUNC10(osb, handle, meta_ac, 1, &dr_suballoc_bit,
				   &num_bits, &dr_blkno);
	if (ret) {
		FUNC9(ret);
		goto out;
	}

	FUNC8(0, "Dir %llu, attach new index block: %llu\n",
	     (unsigned long long)FUNC1(dir)->ip_blkno,
	     (unsigned long long)dr_blkno);

	dx_root_bh = FUNC18(osb->sb, dr_blkno);
	if (dx_root_bh == NULL) {
		ret = -EIO;
		goto out;
	}
	FUNC16(FUNC0(dir), dx_root_bh);

	ret = FUNC14(handle, FUNC0(dir), dx_root_bh,
				      OCFS2_JOURNAL_ACCESS_CREATE);
	if (ret < 0) {
		FUNC9(ret);
		goto out;
	}

	dx_root = (struct ocfs2_dx_root_block *)dx_root_bh->b_data;
	FUNC7(dx_root, 0, osb->sb->s_blocksize);
	FUNC19(dx_root->dr_signature, OCFS2_DX_ROOT_SIGNATURE);
	dx_root->dr_suballoc_slot = FUNC3(osb->slot_num);
	dx_root->dr_suballoc_bit = FUNC3(dr_suballoc_bit);
	dx_root->dr_fs_generation = FUNC4(osb->fs_generation);
	dx_root->dr_blkno = FUNC5(dr_blkno);
	dx_root->dr_dir_blkno = FUNC5(FUNC1(dir)->ip_blkno);
	dx_root->dr_num_entries = FUNC4(num_entries);
	if (FUNC6(trailer->db_free_rec_len))
		dx_root->dr_free_blk = FUNC5(dirdata_bh->b_blocknr);
	else
		dx_root->dr_free_blk = FUNC5(0);

	if (dx_inline) {
		dx_root->dr_flags |= OCFS2_DX_FLAG_INLINE;
		dx_root->dr_entries.de_count =
			FUNC3(FUNC11(osb->sb));
	} else {
		dx_root->dr_list.l_count =
			FUNC3(FUNC12(osb->sb));
	}

	ret = FUNC15(handle, dx_root_bh);
	if (ret)
		FUNC9(ret);

	ret = FUNC13(handle, FUNC0(dir), di_bh,
				      OCFS2_JOURNAL_ACCESS_CREATE);
	if (ret) {
		FUNC9(ret);
		goto out;
	}

	di->i_dx_root = FUNC5(dr_blkno);

	FUNC1(dir)->ip_dyn_features |= OCFS2_INDEXED_DIR_FL;
	di->i_dyn_features = FUNC3(FUNC1(dir)->ip_dyn_features);

	ret = FUNC15(handle, di_bh);
	if (ret)
		FUNC9(ret);

	*ret_dx_root_bh = dx_root_bh;
	dx_root_bh = NULL;

out:
	FUNC2(dx_root_bh);
	return ret;
}