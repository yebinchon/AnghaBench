#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct super_block {int dummy; } ;
struct nilfs_sb_info {int /*<<< orphan*/  s_next_gen_lock; int /*<<< orphan*/  s_next_generation; int /*<<< orphan*/  s_inodes_count; int /*<<< orphan*/  s_ifile; } ;
struct nilfs_inode_info {int i_state; int i_flags; scalar_t__ i_cno; scalar_t__ i_dir_start_lookup; int /*<<< orphan*/  i_bmap; int /*<<< orphan*/  i_bh; } ;
struct inode {int i_mode; scalar_t__ i_nlink; scalar_t__ i_generation; int /*<<< orphan*/  i_ctime; int /*<<< orphan*/  i_atime; int /*<<< orphan*/  i_mtime; int /*<<< orphan*/  i_ino; int /*<<< orphan*/  i_gid; int /*<<< orphan*/  i_uid; int /*<<< orphan*/  i_mapping; struct super_block* i_sb; } ;
typedef  int /*<<< orphan*/  ino_t ;

/* Variables and functions */
 int /*<<< orphan*/  CURRENT_TIME ; 
 int ENOMEM ; 
 struct inode* FUNC0 (int) ; 
 int NILFS_APPEND_FL ; 
 int NILFS_DIRSYNC_FL ; 
 struct nilfs_inode_info* FUNC1 (struct inode*) ; 
 int NILFS_IMMUTABLE_FL ; 
 int /*<<< orphan*/  NILFS_I_BMAP ; 
 int NILFS_I_NEW ; 
 struct nilfs_sb_info* FUNC2 (struct super_block*) ; 
 scalar_t__ FUNC3 (int) ; 
 int S_ISGID ; 
 scalar_t__ FUNC4 (int) ; 
 scalar_t__ FUNC5 (int) ; 
 int __GFP_FS ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (struct inode*) ; 
 int /*<<< orphan*/  FUNC10 (struct inode*) ; 
 int /*<<< orphan*/  FUNC11 (struct inode*) ; 
 int FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC14 (struct inode*) ; 
 struct inode* FUNC15 (struct super_block*) ; 
 int FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC18 (struct inode*,struct inode*) ; 
 int /*<<< orphan*/  FUNC19 (struct inode*) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC23 (int) ; 

struct inode *FUNC24(struct inode *dir, int mode)
{
	struct super_block *sb = dir->i_sb;
	struct nilfs_sb_info *sbi = FUNC2(sb);
	struct inode *inode;
	struct nilfs_inode_info *ii;
	int err = -ENOMEM;
	ino_t ino;

	inode = FUNC15(sb);
	if (FUNC23(!inode))
		goto failed;

	FUNC13(inode->i_mapping,
			     FUNC12(inode->i_mapping) & ~__GFP_FS);

	ii = FUNC1(inode);
	ii->i_state = 1 << NILFS_I_NEW;

	err = FUNC17(sbi->s_ifile, &ino, &ii->i_bh);
	if (FUNC23(err))
		goto failed_ifile_create_inode;
	/* reference count of i_bh inherits from nilfs_mdt_read_block() */

	FUNC6(&sbi->s_inodes_count);

	inode->i_uid = FUNC8();
	if (dir->i_mode & S_ISGID) {
		inode->i_gid = dir->i_gid;
		if (FUNC3(mode))
			mode |= S_ISGID;
	} else
		inode->i_gid = FUNC7();

	inode->i_mode = mode;
	inode->i_ino = ino;
	inode->i_mtime = inode->i_atime = inode->i_ctime = CURRENT_TIME;

	if (FUNC5(mode) || FUNC3(mode) || FUNC4(mode)) {
		err = FUNC16(ii->i_bmap, NULL);
		if (err < 0)
			goto failed_bmap;

		FUNC20(NILFS_I_BMAP, &ii->i_state);
		/* No lock is needed; iget() ensures it. */
	}

	ii->i_flags = FUNC1(dir)->i_flags;
	if (FUNC4(mode))
		ii->i_flags &= ~(NILFS_IMMUTABLE_FL | NILFS_APPEND_FL);
	if (!FUNC3(mode))
		ii->i_flags &= ~NILFS_DIRSYNC_FL;

	/* ii->i_file_acl = 0; */
	/* ii->i_dir_acl = 0; */
	ii->i_dir_start_lookup = 0;
	ii->i_cno = 0;
	FUNC19(inode);
	FUNC21(&sbi->s_next_gen_lock);
	inode->i_generation = sbi->s_next_generation++;
	FUNC22(&sbi->s_next_gen_lock);
	FUNC9(inode);

	err = FUNC18(inode, dir);
	if (FUNC23(err))
		goto failed_acl; /* never occur. When supporting
				    nilfs_init_acl(), proper cancellation of
				    above jobs should be considered */

	FUNC14(inode);
	return inode;

 failed_acl:
 failed_bmap:
	inode->i_nlink = 0;
	FUNC10(inode);  /* raw_inode will be deleted through
			 generic_delete_inode() */
	goto failed;

 failed_ifile_create_inode:
	FUNC11(inode);
	FUNC10(inode);  /* if i_nlink == 1, generic_forget_inode() will be
			 called */
 failed:
	return FUNC0(err);
}