#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct super_block {int dummy; } ;
struct inode {int i_mode; int /*<<< orphan*/  i_gid; int /*<<< orphan*/ * i_fop; int /*<<< orphan*/ * i_op; int /*<<< orphan*/  i_ctime; int /*<<< orphan*/  i_mtime; int /*<<< orphan*/  i_atime; TYPE_1__* i_mapping; int /*<<< orphan*/  i_uid; struct super_block* i_sb; } ;
struct dlmfs_inode_private {int /*<<< orphan*/  ip_parent; int /*<<< orphan*/  ip_lockres; int /*<<< orphan*/  ip_dlm; } ;
struct dentry {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/ * backing_dev_info; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  CURRENT_TIME ; 
 struct dlmfs_inode_private* FUNC2 (struct inode*) ; 
 int /*<<< orphan*/  DLM_LVB_LEN ; 
#define  S_IFDIR 129 
 int S_IFMT ; 
#define  S_IFREG 128 
 scalar_t__ FUNC3 (int) ; 
 int S_ISGID ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  dlmfs_backing_dev_info ; 
 int /*<<< orphan*/  dlmfs_dir_inode_operations ; 
 int /*<<< orphan*/  dlmfs_file_inode_operations ; 
 int /*<<< orphan*/  dlmfs_file_operations ; 
 int /*<<< orphan*/  FUNC6 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct inode*) ; 
 int /*<<< orphan*/  FUNC8 (struct inode*) ; 
 struct inode* FUNC9 (struct super_block*) ; 
 int /*<<< orphan*/  simple_dir_operations ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,struct dentry*) ; 

__attribute__((used)) static struct inode *FUNC11(struct inode *parent,
				     struct dentry *dentry,
				     int mode)
{
	struct super_block *sb = parent->i_sb;
	struct inode * inode = FUNC9(sb);
	struct dlmfs_inode_private *ip;

	if (!inode)
		return NULL;

	inode->i_mode = mode;
	inode->i_uid = FUNC5();
	inode->i_gid = FUNC4();
	inode->i_mapping->backing_dev_info = &dlmfs_backing_dev_info;
	inode->i_atime = inode->i_mtime = inode->i_ctime = CURRENT_TIME;

	ip = FUNC2(inode);
	ip->ip_dlm = FUNC2(parent)->ip_dlm;

	switch (mode & S_IFMT) {
	default:
		/* for now we don't support anything other than
		 * directories and regular files. */
		FUNC0();
		break;
	case S_IFREG:
		inode->i_op = &dlmfs_file_inode_operations;
		inode->i_fop = &dlmfs_file_operations;

		FUNC6(inode,  DLM_LVB_LEN);

		FUNC10(&ip->ip_lockres, dentry);

		/* released at clear_inode time, this insures that we
		 * get to drop the dlm reference on each lock *before*
		 * we call the unregister code for releasing parent
		 * directories. */
		ip->ip_parent = FUNC7(parent);
		FUNC1(!ip->ip_parent);
		break;
	case S_IFDIR:
		inode->i_op = &dlmfs_dir_inode_operations;
		inode->i_fop = &simple_dir_operations;

		/* directory inodes start off with i_nlink ==
		 * 2 (for "." entry) */
		FUNC8(inode);
		break;
	}

	if (parent->i_mode & S_ISGID) {
		inode->i_gid = parent->i_gid;
		if (FUNC3(mode))
			inode->i_mode |= S_ISGID;
	}

	return inode;
}