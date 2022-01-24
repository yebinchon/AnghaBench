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
struct ufs_dir_entry {int dummy; } ;
struct page {int dummy; } ;
struct inode {scalar_t__ i_nlink; void* i_ctime; int /*<<< orphan*/  i_mode; } ;
struct dentry {struct inode* d_inode; } ;

/* Variables and functions */
 void* CURRENT_TIME_SEC ; 
 int EIO ; 
 int EMLINK ; 
 int ENOENT ; 
 int ENOTEMPTY ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ UFS_LINK_MAX ; 
 int /*<<< orphan*/  FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*) ; 
 int /*<<< orphan*/  FUNC4 (struct page*) ; 
 int /*<<< orphan*/  FUNC5 (struct page*) ; 
 int FUNC6 (struct dentry*,struct inode*) ; 
 int /*<<< orphan*/  FUNC7 (struct inode*,struct ufs_dir_entry*,struct page*) ; 
 struct ufs_dir_entry* FUNC8 (struct inode*,struct page**) ; 
 int /*<<< orphan*/  FUNC9 (struct inode*) ; 
 struct ufs_dir_entry* FUNC10 (struct inode*,struct dentry*,struct page**) ; 
 int /*<<< orphan*/  FUNC11 (struct inode*,struct ufs_dir_entry*,struct page*,struct inode*) ; 

__attribute__((used)) static int FUNC12(struct inode *old_dir, struct dentry *old_dentry,
		      struct inode *new_dir, struct dentry *new_dentry)
{
	struct inode *old_inode = old_dentry->d_inode;
	struct inode *new_inode = new_dentry->d_inode;
	struct page *dir_page = NULL;
	struct ufs_dir_entry * dir_de = NULL;
	struct page *old_page;
	struct ufs_dir_entry *old_de;
	int err = -ENOENT;

	old_de = FUNC10(old_dir, old_dentry, &old_page);
	if (!old_de)
		goto out;

	if (FUNC0(old_inode->i_mode)) {
		err = -EIO;
		dir_de = FUNC8(old_inode, &dir_page);
		if (!dir_de)
			goto out_old;
	}

	if (new_inode) {
		struct page *new_page;
		struct ufs_dir_entry *new_de;

		err = -ENOTEMPTY;
		if (dir_de && !FUNC9(new_inode))
			goto out_dir;

		err = -ENOENT;
		new_de = FUNC10(new_dir, new_dentry, &new_page);
		if (!new_de)
			goto out_dir;
		FUNC3(old_inode);
		FUNC11(new_dir, new_de, new_page, old_inode);
		new_inode->i_ctime = CURRENT_TIME_SEC;
		if (dir_de)
			FUNC1(new_inode);
		FUNC2(new_inode);
	} else {
		if (dir_de) {
			err = -EMLINK;
			if (new_dir->i_nlink >= UFS_LINK_MAX)
				goto out_dir;
		}
		FUNC3(old_inode);
		err = FUNC6(new_dentry, old_inode);
		if (err) {
			FUNC2(old_inode);
			goto out_dir;
		}
		if (dir_de)
			FUNC3(new_dir);
	}

	/*
	 * Like most other Unix systems, set the ctime for inodes on a
 	 * rename.
	 * inode_dec_link_count() will mark the inode dirty.
	 */
	old_inode->i_ctime = CURRENT_TIME_SEC;

	FUNC7(old_dir, old_de, old_page);
	FUNC2(old_inode);

	if (dir_de) {
		FUNC11(old_inode, dir_de, dir_page, new_dir);
		FUNC2(old_dir);
	}
	return 0;


out_dir:
	if (dir_de) {
		FUNC4(dir_page);
		FUNC5(dir_page);
	}
out_old:
	FUNC4(old_page);
	FUNC5(old_page);
out:
	return err;
}