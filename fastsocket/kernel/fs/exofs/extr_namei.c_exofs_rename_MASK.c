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
struct inode {scalar_t__ i_nlink; void* i_ctime; int /*<<< orphan*/  i_mode; } ;
struct exofs_dir_entry {int dummy; } ;
struct dentry {struct inode* d_inode; } ;

/* Variables and functions */
 void* CURRENT_TIME ; 
 int EIO ; 
 int EMLINK ; 
 int ENOENT ; 
 int ENOTEMPTY ; 
 scalar_t__ EXOFS_LINK_MAX ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct inode*) ; 
 int FUNC2 (struct dentry*,struct inode*) ; 
 int /*<<< orphan*/  FUNC3 (struct exofs_dir_entry*,struct page*) ; 
 struct exofs_dir_entry* FUNC4 (struct inode*,struct page**) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*) ; 
 struct exofs_dir_entry* FUNC6 (struct inode*,struct dentry*,struct page**) ; 
 int FUNC7 (struct inode*,struct exofs_dir_entry*,struct page*,struct inode*) ; 
 int /*<<< orphan*/  FUNC8 (struct inode*) ; 
 int /*<<< orphan*/  FUNC9 (struct inode*) ; 
 int /*<<< orphan*/  FUNC10 (struct page*) ; 
 int /*<<< orphan*/  FUNC11 (struct page*) ; 

__attribute__((used)) static int FUNC12(struct inode *old_dir, struct dentry *old_dentry,
		struct inode *new_dir, struct dentry *new_dentry)
{
	struct inode *old_inode = old_dentry->d_inode;
	struct inode *new_inode = new_dentry->d_inode;
	struct page *dir_page = NULL;
	struct exofs_dir_entry *dir_de = NULL;
	struct page *old_page;
	struct exofs_dir_entry *old_de;
	int err = -ENOENT;

	old_de = FUNC6(old_dir, old_dentry, &old_page);
	if (!old_de)
		goto out;

	if (FUNC0(old_inode->i_mode)) {
		err = -EIO;
		dir_de = FUNC4(old_inode, &dir_page);
		if (!dir_de)
			goto out_old;
	}

	if (new_inode) {
		struct page *new_page;
		struct exofs_dir_entry *new_de;

		err = -ENOTEMPTY;
		if (dir_de && !FUNC5(new_inode))
			goto out_dir;

		err = -ENOENT;
		new_de = FUNC6(new_dir, new_dentry, &new_page);
		if (!new_de)
			goto out_dir;
		FUNC9(old_inode);
		err = FUNC7(new_dir, new_de, new_page, old_inode);
		new_inode->i_ctime = CURRENT_TIME;
		if (dir_de)
			FUNC1(new_inode);
		FUNC8(new_inode);
		if (err)
			goto out_dir;
	} else {
		if (dir_de) {
			err = -EMLINK;
			if (new_dir->i_nlink >= EXOFS_LINK_MAX)
				goto out_dir;
		}
		FUNC9(old_inode);
		err = FUNC2(new_dentry, old_inode);
		if (err) {
			FUNC8(old_inode);
			goto out_dir;
		}
		if (dir_de)
			FUNC9(new_dir);
	}

	old_inode->i_ctime = CURRENT_TIME;

	FUNC3(old_de, old_page);
	FUNC8(old_inode);

	if (dir_de) {
		err = FUNC7(old_inode, dir_de, dir_page, new_dir);
		FUNC8(old_dir);
		if (err)
			goto out_dir;
	}
	return 0;


out_dir:
	if (dir_de) {
		FUNC10(dir_page);
		FUNC11(dir_page);
	}
out_old:
	FUNC10(old_page);
	FUNC11(old_page);
out:
	return err;
}