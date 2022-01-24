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
struct minix_sb_info {scalar_t__ s_link_max; } ;
struct minix_dir_entry {int dummy; } ;
struct inode {scalar_t__ i_nlink; int /*<<< orphan*/  i_ctime; int /*<<< orphan*/  i_mode; int /*<<< orphan*/  i_sb; } ;
struct dentry {struct inode* d_inode; } ;

/* Variables and functions */
 int /*<<< orphan*/  CURRENT_TIME_SEC ; 
 int EIO ; 
 int EMLINK ; 
 int ENOENT ; 
 int ENOTEMPTY ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*) ; 
 int /*<<< orphan*/  FUNC4 (struct page*) ; 
 int FUNC5 (struct dentry*,struct inode*) ; 
 int /*<<< orphan*/  FUNC6 (struct minix_dir_entry*,struct page*) ; 
 struct minix_dir_entry* FUNC7 (struct inode*,struct page**) ; 
 int /*<<< orphan*/  FUNC8 (struct inode*) ; 
 struct minix_dir_entry* FUNC9 (struct dentry*,struct page**) ; 
 struct minix_sb_info* FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct minix_dir_entry*,struct page*,struct inode*) ; 
 int /*<<< orphan*/  FUNC12 (struct page*) ; 

__attribute__((used)) static int FUNC13(struct inode * old_dir, struct dentry *old_dentry,
			   struct inode * new_dir, struct dentry *new_dentry)
{
	struct minix_sb_info * info = FUNC10(old_dir->i_sb);
	struct inode * old_inode = old_dentry->d_inode;
	struct inode * new_inode = new_dentry->d_inode;
	struct page * dir_page = NULL;
	struct minix_dir_entry * dir_de = NULL;
	struct page * old_page;
	struct minix_dir_entry * old_de;
	int err = -ENOENT;

	old_de = FUNC9(old_dentry, &old_page);
	if (!old_de)
		goto out;

	if (FUNC0(old_inode->i_mode)) {
		err = -EIO;
		dir_de = FUNC7(old_inode, &dir_page);
		if (!dir_de)
			goto out_old;
	}

	if (new_inode) {
		struct page * new_page;
		struct minix_dir_entry * new_de;

		err = -ENOTEMPTY;
		if (dir_de && !FUNC8(new_inode))
			goto out_dir;

		err = -ENOENT;
		new_de = FUNC9(new_dentry, &new_page);
		if (!new_de)
			goto out_dir;
		FUNC3(old_inode);
		FUNC11(new_de, new_page, old_inode);
		new_inode->i_ctime = CURRENT_TIME_SEC;
		if (dir_de)
			FUNC1(new_inode);
		FUNC2(new_inode);
	} else {
		if (dir_de) {
			err = -EMLINK;
			if (new_dir->i_nlink >= info->s_link_max)
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

	FUNC6(old_de, old_page);
	FUNC2(old_inode);

	if (dir_de) {
		FUNC11(dir_de, dir_page, new_dir);
		FUNC2(old_dir);
	}
	return 0;

out_dir:
	if (dir_de) {
		FUNC4(dir_page);
		FUNC12(dir_page);
	}
out_old:
	FUNC4(old_page);
	FUNC12(old_page);
out:
	return err;
}