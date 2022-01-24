#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_9__ ;
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;
typedef  struct TYPE_11__   TYPE_10__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u64 ;
typedef  int u16 ;
struct ocfs2_super {TYPE_5__* sb; scalar_t__ fs_generation; int /*<<< orphan*/  osb_lock; int /*<<< orphan*/  s_next_generation; } ;
struct ocfs2_extent_list {void* l_count; scalar_t__ l_next_free_rec; scalar_t__ l_tree_depth; } ;
struct TYPE_14__ {void* id_count; } ;
struct TYPE_15__ {struct ocfs2_extent_list i_list; TYPE_3__ i_data; } ;
struct TYPE_12__ {void* i_rdev; } ;
struct TYPE_13__ {TYPE_1__ dev1; } ;
struct ocfs2_dinode {TYPE_4__ id2; void* i_dyn_features; scalar_t__ i_dtime; void* i_atime_nsec; void* i_ctime_nsec; void* i_mtime_nsec; void* i_mtime; void* i_ctime; void* i_atime; int /*<<< orphan*/  i_flags; int /*<<< orphan*/  i_signature; scalar_t__ i_last_eb_blk; TYPE_2__ id1; void* i_mode; void* i_gid; void* i_uid; void* i_suballoc_slot; void* i_suballoc_bit; void* i_blkno; void* i_fs_generation; void* i_generation; } ;
struct ocfs2_alloc_context {int ac_alloc_slot; } ;
struct inode {int i_mode; int /*<<< orphan*/  i_nlink; scalar_t__ i_gid; scalar_t__ i_uid; scalar_t__ i_generation; int /*<<< orphan*/  i_ino; } ;
struct buffer_head {scalar_t__ b_data; } ;
typedef  int /*<<< orphan*/  handle_t ;
typedef  int /*<<< orphan*/  dev_t ;
struct TYPE_17__ {int /*<<< orphan*/  ip_blkno; } ;
struct TYPE_16__ {int /*<<< orphan*/  s_blocksize; } ;
struct TYPE_11__ {scalar_t__ tv_nsec; int /*<<< orphan*/  tv_sec; } ;

/* Variables and functions */
 TYPE_10__ CURRENT_TIME ; 
 int EIO ; 
 int /*<<< orphan*/  FUNC0 (struct inode*) ; 
 TYPE_9__* FUNC1 (struct inode*) ; 
 int OCFS2_INLINE_DATA_FL ; 
 int /*<<< orphan*/  OCFS2_INODE_SIGNATURE ; 
 int /*<<< orphan*/  OCFS2_JOURNAL_ACCESS_CREATE ; 
 int /*<<< orphan*/  OCFS2_VALID_FL ; 
 scalar_t__ FUNC2 (int) ; 
 scalar_t__ FUNC3 (int) ; 
 scalar_t__ FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (struct buffer_head*) ; 
 void* FUNC6 (int) ; 
 void* FUNC7 (scalar_t__) ; 
 void* FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 int FUNC11 (void*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct ocfs2_dinode*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int) ; 
 int /*<<< orphan*/  FUNC15 (int) ; 
 int /*<<< orphan*/  FUNC16 (struct ocfs2_super*,int /*<<< orphan*/ ) ; 
 int FUNC17 (struct ocfs2_super*,int /*<<< orphan*/ *,struct inode*,struct buffer_head*,struct ocfs2_alloc_context*,int*,int /*<<< orphan*/ *) ; 
 int FUNC18 (struct inode*) ; 
 int FUNC19 (TYPE_5__*) ; 
 int FUNC20 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct buffer_head*,int /*<<< orphan*/ ) ; 
 int FUNC21 (int /*<<< orphan*/ *,struct buffer_head*) ; 
 int FUNC22 (TYPE_5__*,struct ocfs2_dinode*) ; 
 int /*<<< orphan*/  FUNC23 (struct ocfs2_super*) ; 
 int /*<<< orphan*/  FUNC24 (struct inode*,struct ocfs2_dinode*,int) ; 
 int /*<<< orphan*/  FUNC25 (struct ocfs2_dinode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ ,struct buffer_head*) ; 
 scalar_t__ FUNC27 (struct ocfs2_super*) ; 
 struct buffer_head* FUNC28 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC29 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC30 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC31 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC32(struct ocfs2_super *osb,
			      struct inode *dir,
			      struct inode *inode,
			      dev_t dev,
			      struct buffer_head **new_fe_bh,
			      struct buffer_head *parent_fe_bh,
			      handle_t *handle,
			      struct ocfs2_alloc_context *inode_ac)
{
	int status = 0;
	struct ocfs2_dinode *fe = NULL;
	struct ocfs2_extent_list *fel;
	u64 fe_blkno = 0;
	u16 suballoc_bit;
	u16 feat;

	*new_fe_bh = NULL;

	status = FUNC17(osb, handle, dir, parent_fe_bh,
				       inode_ac, &suballoc_bit, &fe_blkno);
	if (status < 0) {
		FUNC14(status);
		goto leave;
	}

	/* populate as many fields early on as possible - many of
	 * these are used by the support functions here and in
	 * callers. */
	inode->i_ino = FUNC10(osb->sb, fe_blkno);
	FUNC1(inode)->ip_blkno = fe_blkno;
	FUNC29(&osb->osb_lock);
	inode->i_generation = osb->s_next_generation++;
	FUNC30(&osb->osb_lock);

	*new_fe_bh = FUNC28(osb->sb, fe_blkno);
	if (!*new_fe_bh) {
		status = -EIO;
		FUNC14(status);
		goto leave;
	}
	FUNC26(FUNC0(inode), *new_fe_bh);

	status = FUNC20(handle, FUNC0(inode),
					 *new_fe_bh,
					 OCFS2_JOURNAL_ACCESS_CREATE);
	if (status < 0) {
		FUNC14(status);
		goto leave;
	}

	fe = (struct ocfs2_dinode *) (*new_fe_bh)->b_data;
	FUNC13(fe, 0, osb->sb->s_blocksize);

	fe->i_generation = FUNC7(inode->i_generation);
	fe->i_fs_generation = FUNC7(osb->fs_generation);
	fe->i_blkno = FUNC8(fe_blkno);
	fe->i_suballoc_bit = FUNC6(suballoc_bit);
	fe->i_suballoc_slot = FUNC6(inode_ac->ac_alloc_slot);
	fe->i_uid = FUNC7(inode->i_uid);
	fe->i_gid = FUNC7(inode->i_gid);
	fe->i_mode = FUNC6(inode->i_mode);
	if (FUNC3(inode->i_mode) || FUNC2(inode->i_mode))
		fe->id1.dev1.i_rdev = FUNC8(FUNC9(dev));

	FUNC25(fe, inode->i_nlink);

	fe->i_last_eb_blk = 0;
	FUNC31(fe->i_signature, OCFS2_INODE_SIGNATURE);
	FUNC12(&fe->i_flags, OCFS2_VALID_FL);
	fe->i_atime = fe->i_ctime = fe->i_mtime =
		FUNC8(CURRENT_TIME.tv_sec);
	fe->i_mtime_nsec = fe->i_ctime_nsec = fe->i_atime_nsec =
		FUNC7(CURRENT_TIME.tv_nsec);
	fe->i_dtime = 0;

	/*
	 * If supported, directories start with inline data. If inline
	 * isn't supported, but indexing is, we start them as indexed.
	 */
	feat = FUNC11(fe->i_dyn_features);
	if (FUNC4(inode->i_mode) && FUNC27(osb)) {
		fe->i_dyn_features = FUNC6(feat | OCFS2_INLINE_DATA_FL);

		fe->id2.i_data.id_count = FUNC6(
				FUNC22(osb->sb, fe));
	} else {
		fel = &fe->id2.i_list;
		fel->l_tree_depth = 0;
		fel->l_next_free_rec = 0;
		fel->l_count = FUNC6(FUNC19(osb->sb));
	}

	status = FUNC21(handle, *new_fe_bh);
	if (status < 0) {
		FUNC14(status);
		goto leave;
	}

	FUNC24(inode, fe, 1);
	FUNC16(osb, FUNC0(inode));
	if (!FUNC23(osb)) {
		status = FUNC18(inode);
		if (status < 0)
			FUNC14(status);
	}

	status = 0; /* error in ocfs2_create_new_inode_locks is not
		     * critical */

leave:
	if (status < 0) {
		if (*new_fe_bh) {
			FUNC5(*new_fe_bh);
			*new_fe_bh = NULL;
		}
	}

	FUNC15(status);
	return status;
}