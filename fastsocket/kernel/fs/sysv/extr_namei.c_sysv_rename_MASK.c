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
struct sysv_dir_entry {int dummy; } ;
struct page {int dummy; } ;
struct inode {scalar_t__ i_nlink; int /*<<< orphan*/  i_sb; int /*<<< orphan*/  i_ctime; int /*<<< orphan*/  i_mode; } ;
struct dentry {struct inode* d_inode; } ;
struct TYPE_2__ {scalar_t__ s_link_max; } ;

/* Variables and functions */
 int /*<<< orphan*/  CURRENT_TIME_SEC ; 
 int EIO ; 
 int EMLINK ; 
 int ENOENT ; 
 int ENOTEMPTY ; 
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*) ; 
 int /*<<< orphan*/  FUNC5 (struct page*) ; 
 int /*<<< orphan*/  FUNC6 (struct page*) ; 
 int FUNC7 (struct dentry*,struct inode*) ; 
 int /*<<< orphan*/  FUNC8 (struct sysv_dir_entry*,struct page*) ; 
 struct sysv_dir_entry* FUNC9 (struct inode*,struct page**) ; 
 int /*<<< orphan*/  FUNC10 (struct inode*) ; 
 struct sysv_dir_entry* FUNC11 (struct dentry*,struct page**) ; 
 int /*<<< orphan*/  FUNC12 (struct sysv_dir_entry*,struct page*,struct inode*) ; 

__attribute__((used)) static int FUNC13(struct inode * old_dir, struct dentry * old_dentry,
		  struct inode * new_dir, struct dentry * new_dentry)
{
	struct inode * old_inode = old_dentry->d_inode;
	struct inode * new_inode = new_dentry->d_inode;
	struct page * dir_page = NULL;
	struct sysv_dir_entry * dir_de = NULL;
	struct page * old_page;
	struct sysv_dir_entry * old_de;
	int err = -ENOENT;

	old_de = FUNC11(old_dentry, &old_page);
	if (!old_de)
		goto out;

	if (FUNC1(old_inode->i_mode)) {
		err = -EIO;
		dir_de = FUNC9(old_inode, &dir_page);
		if (!dir_de)
			goto out_old;
	}

	if (new_inode) {
		struct page * new_page;
		struct sysv_dir_entry * new_de;

		err = -ENOTEMPTY;
		if (dir_de && !FUNC10(new_inode))
			goto out_dir;

		err = -ENOENT;
		new_de = FUNC11(new_dentry, &new_page);
		if (!new_de)
			goto out_dir;
		FUNC4(old_inode);
		FUNC12(new_de, new_page, old_inode);
		new_inode->i_ctime = CURRENT_TIME_SEC;
		if (dir_de)
			FUNC2(new_inode);
		FUNC3(new_inode);
	} else {
		if (dir_de) {
			err = -EMLINK;
			if (new_dir->i_nlink >= FUNC0(new_dir->i_sb)->s_link_max)
				goto out_dir;
		}
		FUNC4(old_inode);
		err = FUNC7(new_dentry, old_inode);
		if (err) {
			FUNC3(old_inode);
			goto out_dir;
		}
		if (dir_de)
			FUNC4(new_dir);
	}

	FUNC8(old_de, old_page);
	FUNC3(old_inode);

	if (dir_de) {
		FUNC12(dir_de, dir_page, new_dir);
		FUNC3(old_dir);
	}
	return 0;

out_dir:
	if (dir_de) {
		FUNC5(dir_page);
		FUNC6(dir_page);
	}
out_old:
	FUNC5(old_page);
	FUNC6(old_page);
out:
	return err;
}