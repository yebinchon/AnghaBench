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
typedef  int /*<<< orphan*/  u32 ;
struct super_block {int dummy; } ;
struct ocfs2_super {int /*<<< orphan*/  sb; int /*<<< orphan*/  fs_generation; } ;
struct ocfs2_find_inode_args {int fi_flags; scalar_t__ fi_blkno; } ;
struct TYPE_4__ {int /*<<< orphan*/  i_rdev; } ;
struct TYPE_5__ {TYPE_1__ dev1; } ;
struct ocfs2_dinode {int i_flags; int /*<<< orphan*/  i_blkno; TYPE_2__ id1; int /*<<< orphan*/  i_mode; } ;
struct inode {int /*<<< orphan*/  i_rdev; struct super_block* i_sb; } ;
struct buffer_head {scalar_t__ b_data; } ;
struct TYPE_6__ {int /*<<< orphan*/  ip_open_lockres; int /*<<< orphan*/  ip_inode_lockres; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EINVAL ; 
 int /*<<< orphan*/  ML_ERROR ; 
 int /*<<< orphan*/  OCFS2_BH_IGNORE_CACHE ; 
 int OCFS2_FI_FLAG_ORPHAN_RECOVERY ; 
 int OCFS2_FI_FLAG_SYSFILE ; 
 TYPE_3__* FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  OCFS2_LOCK_TYPE_META ; 
 int /*<<< orphan*/  OCFS2_LOCK_TYPE_OPEN ; 
 struct ocfs2_super* FUNC2 (struct super_block*) ; 
 int /*<<< orphan*/  OCFS2_SYSTEM_FL ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct buffer_head*) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct inode*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC12 (int,char*,unsigned long long) ; 
 int /*<<< orphan*/  FUNC13 (char*,struct inode*,struct ocfs2_find_inode_args*) ; 
 int /*<<< orphan*/  FUNC14 (int) ; 
 int /*<<< orphan*/  FUNC15 (int) ; 
 int FUNC16 (struct inode*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct inode*) ; 
 int /*<<< orphan*/  FUNC18 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (struct ocfs2_super*) ; 
 int FUNC20 (struct inode*) ; 
 int /*<<< orphan*/  FUNC21 (struct inode*,struct ocfs2_dinode*,int /*<<< orphan*/ ) ; 
 int FUNC22 (struct ocfs2_super*,scalar_t__,int,struct buffer_head**) ; 
 int FUNC23 (struct inode*,struct buffer_head**,int /*<<< orphan*/ ) ; 
 int FUNC24 (struct inode*,int /*<<< orphan*/ ) ; 
 int FUNC25 (int /*<<< orphan*/ ,struct buffer_head*) ; 

__attribute__((used)) static int FUNC26(struct inode *inode,
				   struct ocfs2_find_inode_args *args)
{
	struct super_block *sb;
	struct ocfs2_super *osb;
	struct ocfs2_dinode *fe;
	struct buffer_head *bh = NULL;
	int status, can_lock;
	u32 generation = 0;

	FUNC13("(0x%p, 0x%p)\n", inode, args);

	status = -EINVAL;
	if (inode == NULL || inode->i_sb == NULL) {
		FUNC11(ML_ERROR, "bad inode\n");
		return status;
	}
	sb = inode->i_sb;
	osb = FUNC2(sb);

	if (!args) {
		FUNC11(ML_ERROR, "bad inode args\n");
		FUNC10(inode);
		return status;
	}

	/*
	 * To improve performance of cold-cache inode stats, we take
	 * the cluster lock here if possible.
	 *
	 * Generally, OCFS2 never trusts the contents of an inode
	 * unless it's holding a cluster lock, so taking it here isn't
	 * a correctness issue as much as it is a performance
	 * improvement.
	 *
	 * There are three times when taking the lock is not a good idea:
	 *
	 * 1) During startup, before we have initialized the DLM.
	 *
	 * 2) If we are reading certain system files which never get
	 *    cluster locks (local alloc, truncate log).
	 *
	 * 3) If the process doing the iget() is responsible for
	 *    orphan dir recovery. We're holding the orphan dir lock and
	 *    can get into a deadlock with another process on another
	 *    node in ->delete_inode().
	 *
	 * #1 and #2 can be simply solved by never taking the lock
	 * here for system files (which are the only type we read
	 * during mount). It's a heavier approach, but our main
	 * concern is user-accesible files anyway.
	 *
	 * #3 works itself out because we'll eventually take the
	 * cluster lock before trusting anything anyway.
	 */
	can_lock = !(args->fi_flags & OCFS2_FI_FLAG_SYSFILE)
		&& !(args->fi_flags & OCFS2_FI_FLAG_ORPHAN_RECOVERY)
		&& !FUNC19(osb);

	/*
	 * To maintain backwards compatibility with older versions of
	 * ocfs2-tools, we still store the generation value for system
	 * files. The only ones that actually matter to userspace are
	 * the journals, but it's easier and inexpensive to just flag
	 * all system files similarly.
	 */
	if (args->fi_flags & OCFS2_FI_FLAG_SYSFILE)
		generation = osb->fs_generation;

	FUNC17(&FUNC1(inode)->ip_inode_lockres,
				  OCFS2_LOCK_TYPE_META,
				  generation, inode);

	FUNC17(&FUNC1(inode)->ip_open_lockres,
				  OCFS2_LOCK_TYPE_OPEN,
				  0, inode);

	if (can_lock) {
		status = FUNC20(inode);
		if (status) {
			FUNC10(inode);
			FUNC14(status);
			return status;
		}
		status = FUNC16(inode, NULL, 0);
		if (status) {
			FUNC10(inode);
			FUNC14(status);
			return status;
		}
	}

	if (args->fi_flags & OCFS2_FI_FLAG_ORPHAN_RECOVERY) {
		status = FUNC24(inode, 0);
		if (status) {
			FUNC10(inode);	
			return status;
		}
	}

	if (can_lock) {
		status = FUNC23(inode, &bh,
						     OCFS2_BH_IGNORE_CACHE);
	} else {
		status = FUNC22(osb, args->fi_blkno, 1, &bh);
		if (!status)
			status = FUNC25(osb->sb, bh);
	}
	if (status < 0) {
		FUNC14(status);
		goto bail;
	}

	status = -EINVAL;
	fe = (struct ocfs2_dinode *) bh->b_data;

	/*
	 * This is a code bug. Right now the caller needs to
	 * understand whether it is asking for a system file inode or
	 * not so the proper lock names can be built.
	 */
	FUNC12(!!(fe->i_flags & FUNC6(OCFS2_SYSTEM_FL)) !=
			!!(args->fi_flags & OCFS2_FI_FLAG_SYSFILE),
			"Inode %llu: system file state is ambigous\n",
			(unsigned long long)args->fi_blkno);

	if (FUNC4(FUNC8(fe->i_mode)) ||
	    FUNC3(FUNC8(fe->i_mode)))
		inode->i_rdev = FUNC7(FUNC9(fe->id1.dev1.i_rdev));

	FUNC21(inode, fe, 0);

	FUNC0(args->fi_blkno != FUNC9(fe->i_blkno));

	status = 0;

bail:
	if (can_lock)
		FUNC18(inode, 0);

	if (status < 0)
		FUNC10(inode);

	if (args && bh)
		FUNC5(bh);

	FUNC15(status);
	return status;
}