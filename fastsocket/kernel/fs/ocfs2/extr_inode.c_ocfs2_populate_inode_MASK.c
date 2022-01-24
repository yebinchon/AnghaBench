#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_7__ ;
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct super_block {int dummy; } ;
struct ocfs2_super {int s_mount_opt; int fs_generation; } ;
struct TYPE_8__ {int /*<<< orphan*/  i_rdev; } ;
struct TYPE_9__ {TYPE_1__ dev1; } ;
struct ocfs2_dinode {int i_flags; int i_fs_generation; int i_clusters; int i_attr; int i_generation; int i_uid; int i_gid; int i_atime_nsec; int i_mtime_nsec; int i_ctime_nsec; int /*<<< orphan*/  i_blkno; int /*<<< orphan*/  i_size; int /*<<< orphan*/  i_ctime; int /*<<< orphan*/  i_mtime; int /*<<< orphan*/  i_atime; int /*<<< orphan*/  i_mode; TYPE_2__ id1; int /*<<< orphan*/  i_dyn_features; } ;
struct TYPE_13__ {int tv_nsec; scalar_t__ tv_sec; } ;
struct TYPE_12__ {int tv_nsec; scalar_t__ tv_sec; } ;
struct TYPE_11__ {int tv_nsec; scalar_t__ tv_sec; } ;
struct inode {int i_version; int i_generation; int i_mode; int i_uid; int i_gid; struct super_block* i_sb; int /*<<< orphan*/  i_ino; int /*<<< orphan*/  i_rdev; int /*<<< orphan*/ * i_op; int /*<<< orphan*/ * i_fop; int /*<<< orphan*/  i_flags; int /*<<< orphan*/  i_nlink; TYPE_6__ i_ctime; TYPE_5__ i_mtime; TYPE_4__ i_atime; TYPE_3__* i_mapping; scalar_t__ i_blocks; } ;
struct TYPE_14__ {int ip_clusters; int ip_attr; scalar_t__ ip_blkno; scalar_t__ ip_last_used_group; scalar_t__ ip_last_used_slot; int /*<<< orphan*/  ip_rw_lockres; int /*<<< orphan*/  ip_open_lockres; int /*<<< orphan*/  ip_inode_lockres; int /*<<< orphan*/  ip_flags; void* ip_dyn_features; } ;
struct TYPE_10__ {int /*<<< orphan*/ * a_ops; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  ML_ERROR ; 
 int OCFS2_BITMAP_FL ; 
 TYPE_7__* FUNC2 (struct inode*) ; 
 int /*<<< orphan*/  OCFS2_INODE_BITMAP ; 
 int /*<<< orphan*/  OCFS2_INODE_SYSTEM_FILE ; 
 int /*<<< orphan*/  FUNC3 (struct ocfs2_dinode*) ; 
 int OCFS2_LOCAL_ALLOC_FL ; 
 int /*<<< orphan*/  OCFS2_LOCK_TYPE_META ; 
 int /*<<< orphan*/  OCFS2_LOCK_TYPE_OPEN ; 
 int /*<<< orphan*/  OCFS2_LOCK_TYPE_RW ; 
 int OCFS2_MOUNT_LOCALFLOCKS ; 
 int OCFS2_QUOTA_FL ; 
 struct ocfs2_super* FUNC4 (struct super_block*) ; 
 int OCFS2_SUPER_BLOCK_FL ; 
 int OCFS2_SYSTEM_FL ; 
 int OCFS2_VALID_FL ; 
#define  S_IFDIR 130 
#define  S_IFLNK 129 
 int S_IFMT ; 
#define  S_IFREG 128 
 scalar_t__ FUNC5 (int) ; 
 int /*<<< orphan*/  S_NOQUOTA ; 
 int FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (struct inode*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (struct inode*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct super_block*,scalar_t__) ; 
 void* FUNC11 (int /*<<< orphan*/ ) ; 
 int FUNC12 (int) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,char*,unsigned long long,...) ; 
 int /*<<< orphan*/  FUNC15 (char*,struct inode*,unsigned long long) ; 
 int /*<<< orphan*/  FUNC16 () ; 
 int /*<<< orphan*/  ocfs2_aops ; 
 int /*<<< orphan*/  ocfs2_dir_iops ; 
 int /*<<< orphan*/  ocfs2_dops ; 
 int /*<<< orphan*/  ocfs2_dops_no_plocks ; 
 int /*<<< orphan*/  ocfs2_fast_symlink_inode_operations ; 
 int /*<<< orphan*/  ocfs2_file_iops ; 
 int /*<<< orphan*/  ocfs2_fops ; 
 int /*<<< orphan*/  ocfs2_fops_no_plocks ; 
 int /*<<< orphan*/  FUNC17 (struct inode*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,struct inode*) ; 
 scalar_t__ FUNC19 (struct inode*) ; 
 scalar_t__ FUNC20 (struct ocfs2_super*) ; 
 int /*<<< orphan*/  FUNC21 (struct ocfs2_dinode*) ; 
 int /*<<< orphan*/  FUNC22 (struct inode*) ; 
 int /*<<< orphan*/  ocfs2_special_file_iops ; 
 int /*<<< orphan*/  FUNC23 () ; 
 int /*<<< orphan*/  ocfs2_symlink_inode_operations ; 

void FUNC24(struct inode *inode, struct ocfs2_dinode *fe,
			  int create_ino)
{
	struct super_block *sb;
	struct ocfs2_super *osb;
	int use_plocks = 1;

	FUNC15("(0x%p, size:%llu)\n", inode,
		   (unsigned long long)FUNC13(fe->i_size));

	sb = inode->i_sb;
	osb = FUNC4(sb);

	if ((osb->s_mount_opt & OCFS2_MOUNT_LOCALFLOCKS) ||
	    FUNC20(osb) || !FUNC23())
		use_plocks = 0;

	/*
	 * These have all been checked by ocfs2_read_inode_block() or set
	 * by ocfs2_mknod_locked(), so a failure is a code bug.
	 */
	FUNC1(!FUNC3(fe));  /* This means that read_inode
						cannot create a superblock
						inode today.  change if
						that is needed. */
	FUNC1(!(fe->i_flags & FUNC6(OCFS2_VALID_FL)));
	FUNC1(FUNC12(fe->i_fs_generation) != osb->fs_generation);


	FUNC2(inode)->ip_clusters = FUNC12(fe->i_clusters);
	FUNC2(inode)->ip_attr = FUNC12(fe->i_attr);
	FUNC2(inode)->ip_dyn_features = FUNC11(fe->i_dyn_features);

	inode->i_version = 1;
	inode->i_generation = FUNC12(fe->i_generation);
	inode->i_rdev = FUNC7(FUNC13(fe->id1.dev1.i_rdev));
	inode->i_mode = FUNC11(fe->i_mode);
	inode->i_uid = FUNC12(fe->i_uid);
	inode->i_gid = FUNC12(fe->i_gid);

	/* Fast symlinks will have i_size but no allocated clusters. */
	if (FUNC5(inode->i_mode) && !fe->i_clusters)
		inode->i_blocks = 0;
	else
		inode->i_blocks = FUNC19(inode);
	inode->i_mapping->a_ops = &ocfs2_aops;
	inode->i_atime.tv_sec = FUNC13(fe->i_atime);
	inode->i_atime.tv_nsec = FUNC12(fe->i_atime_nsec);
	inode->i_mtime.tv_sec = FUNC13(fe->i_mtime);
	inode->i_mtime.tv_nsec = FUNC12(fe->i_mtime_nsec);
	inode->i_ctime.tv_sec = FUNC13(fe->i_ctime);
	inode->i_ctime.tv_nsec = FUNC12(fe->i_ctime_nsec);

	if (FUNC2(inode)->ip_blkno != FUNC13(fe->i_blkno))
		FUNC14(ML_ERROR,
		     "ip_blkno %llu != i_blkno %llu!\n",
		     (unsigned long long)FUNC2(inode)->ip_blkno,
		     (unsigned long long)FUNC13(fe->i_blkno));

	inode->i_nlink = FUNC21(fe);

	if (fe->i_flags & FUNC6(OCFS2_SYSTEM_FL)) {
		FUNC2(inode)->ip_flags |= OCFS2_INODE_SYSTEM_FILE;
		inode->i_flags |= S_NOQUOTA;
	}

	if (fe->i_flags & FUNC6(OCFS2_LOCAL_ALLOC_FL)) {
		FUNC2(inode)->ip_flags |= OCFS2_INODE_BITMAP;
		FUNC14(0, "local alloc inode: i_ino=%lu\n", inode->i_ino);
	} else if (fe->i_flags & FUNC6(OCFS2_BITMAP_FL)) {
		FUNC2(inode)->ip_flags |= OCFS2_INODE_BITMAP;
	} else if (fe->i_flags & FUNC6(OCFS2_QUOTA_FL)) {
		inode->i_flags |= S_NOQUOTA;
	} else if (fe->i_flags & FUNC6(OCFS2_SUPER_BLOCK_FL)) {
		FUNC14(0, "superblock inode: i_ino=%lu\n", inode->i_ino);
		/* we can't actually hit this as read_inode can't
		 * handle superblocks today ;-) */
		FUNC0();
	}

	switch (inode->i_mode & S_IFMT) {
	    case S_IFREG:
		    if (use_plocks)
			    inode->i_fop = &ocfs2_fops;
		    else
			    inode->i_fop = &ocfs2_fops_no_plocks;
		    inode->i_op = &ocfs2_file_iops;
		    FUNC8(inode, FUNC13(fe->i_size));
		    break;
	    case S_IFDIR:
		    inode->i_op = &ocfs2_dir_iops;
		    if (use_plocks)
			    inode->i_fop = &ocfs2_dops;
		    else
			    inode->i_fop = &ocfs2_dops_no_plocks;
		    FUNC8(inode, FUNC13(fe->i_size));
		    break;
	    case S_IFLNK:
		    if (FUNC17(inode))
			inode->i_op = &ocfs2_fast_symlink_inode_operations;
		    else
			inode->i_op = &ocfs2_symlink_inode_operations;
		    FUNC8(inode, FUNC13(fe->i_size));
		    break;
	    default:
		    inode->i_op = &ocfs2_special_file_iops;
		    FUNC9(inode, inode->i_mode,
				       inode->i_rdev);
		    break;
	}

	if (create_ino) {
		inode->i_ino = FUNC10(inode->i_sb,
			       FUNC13(fe->i_blkno));

		/*
		 * If we ever want to create system files from kernel,
		 * the generation argument to
		 * ocfs2_inode_lock_res_init() will have to change.
		 */
		FUNC1(FUNC12(fe->i_flags) & OCFS2_SYSTEM_FL);

		FUNC18(&FUNC2(inode)->ip_inode_lockres,
					  OCFS2_LOCK_TYPE_META, 0, inode);

		FUNC18(&FUNC2(inode)->ip_open_lockres,
					  OCFS2_LOCK_TYPE_OPEN, 0, inode);
	}

	FUNC18(&FUNC2(inode)->ip_rw_lockres,
				  OCFS2_LOCK_TYPE_RW, inode->i_generation,
				  inode);

	FUNC22(inode);

	FUNC2(inode)->ip_last_used_slot = 0;
	FUNC2(inode)->ip_last_used_group = 0;
	FUNC16();
}