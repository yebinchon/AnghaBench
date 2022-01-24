#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_33__   TYPE_3__ ;
typedef  struct TYPE_32__   TYPE_2__ ;
typedef  struct TYPE_31__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  xfs_trans_t ;
struct TYPE_32__ {int m_flags; } ;
typedef  TYPE_2__ xfs_mount_t ;
struct TYPE_31__ {int di_mode; scalar_t__ di_nlink; int di_flags; } ;
struct TYPE_33__ {int /*<<< orphan*/  i_ino; TYPE_1__ i_d; TYPE_2__* i_mount; } ;
typedef  TYPE_3__ xfs_inode_t ;
typedef  int /*<<< orphan*/  xfs_fsblock_t ;
typedef  int /*<<< orphan*/  xfs_bmap_free_t ;
struct xfs_name {int /*<<< orphan*/  len; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EEXIST ; 
 int EMLINK ; 
 int ENOSPC ; 
 int EXDEV ; 
 int S_IFDIR ; 
 int S_IFMT ; 
 int XFS_DIFLAG_PROJINHERIT ; 
 int FUNC1 (int) ; 
 int XFS_ICHGTIME_CHG ; 
 int XFS_ICHGTIME_MOD ; 
 int /*<<< orphan*/  XFS_ILOCK_EXCL ; 
 int /*<<< orphan*/  XFS_ILOG_CORE ; 
 scalar_t__ XFS_MAXLINK ; 
 int XFS_MOUNT_DIRSYNC ; 
 int XFS_MOUNT_WSYNC ; 
 int /*<<< orphan*/  XFS_RENAME_LOG_COUNT ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int FUNC3 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int XFS_TRANS_ABORT ; 
 int /*<<< orphan*/  XFS_TRANS_PERM_LOG_RES ; 
 int XFS_TRANS_RELEASE_LOG_RES ; 
 int /*<<< orphan*/  XFS_TRANS_RENAME ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,TYPE_3__*,struct xfs_name*,struct xfs_name*) ; 
 scalar_t__ FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 int FUNC10 (int /*<<< orphan*/ *,TYPE_3__*,struct xfs_name*,int) ; 
 int FUNC11 (int /*<<< orphan*/ *,TYPE_3__*,struct xfs_name*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_3__*) ; 
 int FUNC13 (int /*<<< orphan*/ *,TYPE_3__*,struct xfs_name*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int FUNC14 (int /*<<< orphan*/ *,TYPE_3__*,struct xfs_name*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int FUNC15 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 scalar_t__ FUNC16 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_3__**,int,int /*<<< orphan*/ ) ; 
 struct xfs_name xfs_name_dotdot ; 
 int FUNC18 (TYPE_3__**) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_3__*,TYPE_3__*,TYPE_3__*,TYPE_3__*,TYPE_3__**,int*) ; 
 int /*<<< orphan*/ * FUNC20 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *,int) ; 
 int FUNC22 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *,TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ *,TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ *,TYPE_3__*,int /*<<< orphan*/ ) ; 
 int FUNC26 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ *) ; 

int
FUNC28(
	xfs_inode_t	*src_dp,
	struct xfs_name	*src_name,
	xfs_inode_t	*src_ip,
	xfs_inode_t	*target_dp,
	struct xfs_name	*target_name,
	xfs_inode_t	*target_ip)
{
	xfs_trans_t	*tp = NULL;
	xfs_mount_t	*mp = src_dp->i_mount;
	int		new_parent;		/* moving to a new dir */
	int		src_is_directory;	/* src_name is a directory */
	int		error;
	xfs_bmap_free_t free_list;
	xfs_fsblock_t   first_block;
	int		cancel_flags;
	int		committed;
	xfs_inode_t	*inodes[4];
	int		spaceres;
	int		num_inodes;

	FUNC4(src_dp, target_dp, src_name, target_name);

	new_parent = (src_dp != target_dp);
	src_is_directory = ((src_ip->i_d.di_mode & S_IFMT) == S_IFDIR);

	if (src_is_directory) {
		/*
		 * Check for link count overflow on target_dp
		 */
		if (target_ip == NULL && new_parent &&
		    target_dp->i_d.di_nlink >= XFS_MAXLINK) {
			error = FUNC1(EMLINK);
			goto std_return;
		}
	}

	FUNC19(src_dp, target_dp, src_ip, target_ip,
				inodes, &num_inodes);

	FUNC8(&free_list, &first_block);
	tp = FUNC20(mp, XFS_TRANS_RENAME);
	cancel_flags = XFS_TRANS_RELEASE_LOG_RES;
	spaceres = FUNC3(mp, target_name->len);
	error = FUNC26(tp, spaceres, FUNC2(mp), 0,
			XFS_TRANS_PERM_LOG_RES, XFS_RENAME_LOG_COUNT);
	if (error == ENOSPC) {
		spaceres = 0;
		error = FUNC26(tp, 0, FUNC2(mp), 0,
				XFS_TRANS_PERM_LOG_RES, XFS_RENAME_LOG_COUNT);
	}
	if (error) {
		FUNC21(tp, 0);
		goto std_return;
	}

	/*
	 * Attach the dquots to the inodes
	 */
	error = FUNC18(inodes);
	if (error) {
		FUNC21(tp, cancel_flags);
		goto std_return;
	}

	/*
	 * Lock all the participating inodes. Depending upon whether
	 * the target_name exists in the target directory, and
	 * whether the target directory is the same as the source
	 * directory, we can lock from 2 to 4 inodes.
	 */
	FUNC17(inodes, num_inodes, XFS_ILOCK_EXCL);

	/*
	 * Join all the inodes to the transaction. From this point on,
	 * we can rely on either trans_commit or trans_cancel to unlock
	 * them.
	 */
	FUNC24(tp, src_dp, XFS_ILOCK_EXCL);
	if (new_parent)
		FUNC24(tp, target_dp, XFS_ILOCK_EXCL);
	FUNC24(tp, src_ip, XFS_ILOCK_EXCL);
	if (target_ip)
		FUNC24(tp, target_ip, XFS_ILOCK_EXCL);

	/*
	 * If we are using project inheritance, we only allow renames
	 * into our tree when the project IDs are the same; else the
	 * tree quota mechanism would be circumvented.
	 */
	if (FUNC5((target_dp->i_d.di_flags & XFS_DIFLAG_PROJINHERIT) &&
		     (FUNC16(target_dp) != FUNC16(src_ip)))) {
		error = FUNC1(EXDEV);
		goto error_return;
	}

	/*
	 * Set up the target.
	 */
	if (target_ip == NULL) {
		/*
		 * If there's no space reservation, check the entry will
		 * fit before actually inserting it.
		 */
		error = FUNC10(tp, target_dp, target_name, spaceres);
		if (error)
			goto error_return;
		/*
		 * If target does not exist and the rename crosses
		 * directories, adjust the target directory link count
		 * to account for the ".." reference from the new entry.
		 */
		error = FUNC11(tp, target_dp, target_name,
						src_ip->i_ino, &first_block,
						&free_list, spaceres);
		if (error == ENOSPC)
			goto error_return;
		if (error)
			goto abort_return;

		FUNC23(tp, target_dp,
					XFS_ICHGTIME_MOD | XFS_ICHGTIME_CHG);

		if (new_parent && src_is_directory) {
			error = FUNC9(tp, target_dp);
			if (error)
				goto abort_return;
		}
	} else { /* target_ip != NULL */
		/*
		 * If target exists and it's a directory, check that both
		 * target and source are directories and that target can be
		 * destroyed, or that neither is a directory.
		 */
		if ((target_ip->i_d.di_mode & S_IFMT) == S_IFDIR) {
			/*
			 * Make sure target dir is empty.
			 */
			if (!(FUNC12(target_ip)) ||
			    (target_ip->i_d.di_nlink > 2)) {
				error = FUNC1(EEXIST);
				goto error_return;
			}
		}

		/*
		 * Link the source inode under the target name.
		 * If the source inode is a directory and we are moving
		 * it across directories, its ".." entry will be
		 * inconsistent until we replace that down below.
		 *
		 * In case there is already an entry with the same
		 * name at the destination directory, remove it first.
		 */
		error = FUNC14(tp, target_dp, target_name,
					src_ip->i_ino,
					&first_block, &free_list, spaceres);
		if (error)
			goto abort_return;

		FUNC23(tp, target_dp,
					XFS_ICHGTIME_MOD | XFS_ICHGTIME_CHG);

		/*
		 * Decrement the link count on the target since the target
		 * dir no longer points to it.
		 */
		error = FUNC15(tp, target_ip);
		if (error)
			goto abort_return;

		if (src_is_directory) {
			/*
			 * Drop the link from the old "." entry.
			 */
			error = FUNC15(tp, target_ip);
			if (error)
				goto abort_return;
		}
	} /* target_ip != NULL */

	/*
	 * Remove the source.
	 */
	if (new_parent && src_is_directory) {
		/*
		 * Rewrite the ".." entry to point to the new
		 * directory.
		 */
		error = FUNC14(tp, src_ip, &xfs_name_dotdot,
					target_dp->i_ino,
					&first_block, &free_list, spaceres);
		FUNC0(error != EEXIST);
		if (error)
			goto abort_return;
	}

	/*
	 * We always want to hit the ctime on the source inode.
	 *
	 * This isn't strictly required by the standards since the source
	 * inode isn't really being changed, but old unix file systems did
	 * it and some incremental backup programs won't work without it.
	 */
	FUNC23(tp, src_ip, XFS_ICHGTIME_CHG);
	FUNC25(tp, src_ip, XFS_ILOG_CORE);

	/*
	 * Adjust the link count on src_dp.  This is necessary when
	 * renaming a directory, either within one parent when
	 * the target existed, or across two parent directories.
	 */
	if (src_is_directory && (new_parent || target_ip != NULL)) {

		/*
		 * Decrement link count on src_directory since the
		 * entry that's moved no longer points to it.
		 */
		error = FUNC15(tp, src_dp);
		if (error)
			goto abort_return;
	}

	error = FUNC13(tp, src_dp, src_name, src_ip->i_ino,
					&first_block, &free_list, spaceres);
	if (error)
		goto abort_return;

	FUNC23(tp, src_dp, XFS_ICHGTIME_MOD | XFS_ICHGTIME_CHG);
	FUNC25(tp, src_dp, XFS_ILOG_CORE);
	if (new_parent)
		FUNC25(tp, target_dp, XFS_ILOG_CORE);

	/*
	 * If this is a synchronous mount, make sure that the
	 * rename transaction goes to disk before returning to
	 * the user.
	 */
	if (mp->m_flags & (XFS_MOUNT_WSYNC|XFS_MOUNT_DIRSYNC)) {
		FUNC27(tp);
	}

	error = FUNC7(&tp, &free_list, &committed);
	if (error) {
		FUNC6(&free_list);
		FUNC21(tp, (XFS_TRANS_RELEASE_LOG_RES |
				 XFS_TRANS_ABORT));
		goto std_return;
	}

	/*
	 * trans_commit will unlock src_ip, target_ip & decrement
	 * the vnode references.
	 */
	return FUNC22(tp, XFS_TRANS_RELEASE_LOG_RES);

 abort_return:
	cancel_flags |= XFS_TRANS_ABORT;
 error_return:
	FUNC6(&free_list);
	FUNC21(tp, cancel_flags);
 std_return:
	return error;
}