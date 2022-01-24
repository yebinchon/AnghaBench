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
struct super_block {int dummy; } ;
struct nameidata {int dummy; } ;
struct inode {int i_mode; unsigned long i_ino; TYPE_1__* i_mapping; int /*<<< orphan*/ * i_fop; int /*<<< orphan*/ * i_op; scalar_t__ i_blocks; int /*<<< orphan*/  i_ctime; int /*<<< orphan*/  i_atime; int /*<<< orphan*/  i_mtime; int /*<<< orphan*/  i_gid; int /*<<< orphan*/  i_uid; struct super_block* i_sb; } ;
struct TYPE_5__ {int /*<<< orphan*/  len; int /*<<< orphan*/  name; } ;
struct dentry {TYPE_2__ d_name; } ;
struct bfs_sb_info {unsigned long si_lasti; int /*<<< orphan*/  bfs_lock; int /*<<< orphan*/  si_freei; int /*<<< orphan*/  si_imap; } ;
struct TYPE_6__ {unsigned long i_dsk_ino; scalar_t__ i_eblock; scalar_t__ i_sblock; } ;
struct TYPE_4__ {int /*<<< orphan*/ * a_ops; } ;

/* Variables and functions */
 TYPE_3__* FUNC0 (struct inode*) ; 
 struct bfs_sb_info* FUNC1 (struct super_block*) ; 
 int /*<<< orphan*/  CURRENT_TIME_SEC ; 
 int ENOSPC ; 
 int S_ISGID ; 
 int FUNC2 (struct inode*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  bfs_aops ; 
 int /*<<< orphan*/  bfs_file_inops ; 
 int /*<<< orphan*/  bfs_file_operations ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (struct dentry*,struct inode*) ; 
 int /*<<< orphan*/  FUNC6 (char*,struct super_block*) ; 
 unsigned long FUNC7 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (struct inode*) ; 
 int /*<<< orphan*/  FUNC9 (struct inode*) ; 
 int /*<<< orphan*/  FUNC10 (struct inode*) ; 
 int /*<<< orphan*/  FUNC11 (struct inode*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 struct inode* FUNC14 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC15 (unsigned long,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC16(struct inode *dir, struct dentry *dentry, int mode,
						struct nameidata *nd)
{
	int err;
	struct inode *inode;
	struct super_block *s = dir->i_sb;
	struct bfs_sb_info *info = FUNC1(s);
	unsigned long ino;

	inode = FUNC14(s);
	if (!inode)
		return -ENOSPC;
	FUNC12(&info->bfs_lock);
	ino = FUNC7(info->si_imap, info->si_lasti);
	if (ino > info->si_lasti) {
		FUNC13(&info->bfs_lock);
		FUNC10(inode);
		return -ENOSPC;
	}
	FUNC15(ino, info->si_imap);
	info->si_freei--;
	inode->i_uid = FUNC4();
	inode->i_gid = (dir->i_mode & S_ISGID) ? dir->i_gid : FUNC3();
	inode->i_mtime = inode->i_atime = inode->i_ctime = CURRENT_TIME_SEC;
	inode->i_blocks = 0;
	inode->i_op = &bfs_file_inops;
	inode->i_fop = &bfs_file_operations;
	inode->i_mapping->a_ops = &bfs_aops;
	inode->i_mode = mode;
	inode->i_ino = ino;
	FUNC0(inode)->i_dsk_ino = ino;
	FUNC0(inode)->i_sblock = 0;
	FUNC0(inode)->i_eblock = 0;
	FUNC9(inode);
        FUNC11(inode);
	FUNC6("create", s);

	err = FUNC2(dir, dentry->d_name.name, dentry->d_name.len,
							inode->i_ino);
	if (err) {
		FUNC8(inode);
		FUNC13(&info->bfs_lock);
		FUNC10(inode);
		return err;
	}
	FUNC13(&info->bfs_lock);
	FUNC5(dentry, inode);
	return 0;
}