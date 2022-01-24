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
struct page {int dummy; } ;
struct nilfs_transaction_info {int dummy; } ;
struct nilfs_dir_entry {int dummy; } ;
struct inode {scalar_t__ i_nlink; int /*<<< orphan*/  i_sb; void* i_ctime; int /*<<< orphan*/  i_mode; } ;
struct dentry {struct inode* d_inode; } ;

/* Variables and functions */
 void* CURRENT_TIME ; 
 int EIO ; 
 int EMLINK ; 
 int ENOENT ; 
 int ENOTEMPTY ; 
 scalar_t__ NILFS_LINK_MAX ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*) ; 
 int /*<<< orphan*/  FUNC4 (struct page*) ; 
 int FUNC5 (struct dentry*,struct inode*) ; 
 int /*<<< orphan*/  FUNC6 (struct nilfs_dir_entry*,struct page*) ; 
 struct nilfs_dir_entry* FUNC7 (struct inode*,struct page**) ; 
 int /*<<< orphan*/  FUNC8 (struct inode*) ; 
 struct nilfs_dir_entry* FUNC9 (struct inode*,struct dentry*,struct page**) ; 
 int /*<<< orphan*/  FUNC10 (struct inode*,struct nilfs_dir_entry*,struct page*,struct inode*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int FUNC12 (int /*<<< orphan*/ ,struct nilfs_transaction_info*,int) ; 
 int FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct page*) ; 
 scalar_t__ FUNC15 (int) ; 

__attribute__((used)) static int FUNC16(struct inode *old_dir, struct dentry *old_dentry,
			struct inode *new_dir,	struct dentry *new_dentry)
{
	struct inode *old_inode = old_dentry->d_inode;
	struct inode *new_inode = new_dentry->d_inode;
	struct page *dir_page = NULL;
	struct nilfs_dir_entry *dir_de = NULL;
	struct page *old_page;
	struct nilfs_dir_entry *old_de;
	struct nilfs_transaction_info ti;
	int err;

	err = FUNC12(old_dir->i_sb, &ti, 1);
	if (FUNC15(err))
		return err;

	err = -ENOENT;
	old_de = FUNC9(old_dir, old_dentry, &old_page);
	if (!old_de)
		goto out;

	if (FUNC0(old_inode->i_mode)) {
		err = -EIO;
		dir_de = FUNC7(old_inode, &dir_page);
		if (!dir_de)
			goto out_old;
	}

	if (new_inode) {
		struct page *new_page;
		struct nilfs_dir_entry *new_de;

		err = -ENOTEMPTY;
		if (dir_de && !FUNC8(new_inode))
			goto out_dir;

		err = -ENOENT;
		new_de = FUNC9(new_dir, new_dentry, &new_page);
		if (!new_de)
			goto out_dir;
		FUNC3(old_inode);
		FUNC10(new_dir, new_de, new_page, old_inode);
		new_inode->i_ctime = CURRENT_TIME;
		if (dir_de)
			FUNC1(new_inode);
		FUNC2(new_inode);
	} else {
		if (dir_de) {
			err = -EMLINK;
			if (new_dir->i_nlink >= NILFS_LINK_MAX)
				goto out_dir;
		}
		FUNC3(old_inode);
		err = FUNC5(new_dentry, old_inode);
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
	old_inode->i_ctime = CURRENT_TIME;

	FUNC6(old_de, old_page);
	FUNC2(old_inode);

	if (dir_de) {
		FUNC10(old_inode, dir_de, dir_page, new_dir);
		FUNC2(old_dir);
	}

	err = FUNC13(old_dir->i_sb);
	return err;

out_dir:
	if (dir_de) {
		FUNC4(dir_page);
		FUNC14(dir_page);
	}
out_old:
	FUNC4(old_page);
	FUNC14(old_page);
out:
	FUNC11(old_dir->i_sb);
	return err;
}