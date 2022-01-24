#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct ubifs_inode {int ui_size; } ;
struct ubifs_info {scalar_t__ nospace_rp; scalar_t__ nospace; } ;
struct ubifs_budget_req {int mod_dent; int dirtied_ino; } ;
struct inode {int i_size; int /*<<< orphan*/  i_ctime; int /*<<< orphan*/  i_mtime; int /*<<< orphan*/  i_mutex; int /*<<< orphan*/  i_ino; int /*<<< orphan*/  i_nlink; TYPE_1__* i_sb; } ;
struct TYPE_4__ {int /*<<< orphan*/  name; int /*<<< orphan*/  len; } ;
struct dentry {TYPE_2__ d_name; struct inode* d_inode; } ;
struct TYPE_3__ {struct ubifs_info* s_fs_info; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int ENOSPC ; 
 int FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*,struct inode*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 (struct ubifs_info*,struct ubifs_budget_req*) ; 
 int /*<<< orphan*/  FUNC10 (struct inode*) ; 
 struct ubifs_inode* FUNC11 (struct inode*) ; 
 int FUNC12 (struct ubifs_info*,struct inode*,TYPE_2__*,struct inode*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct ubifs_info*,struct ubifs_budget_req*) ; 
 int /*<<< orphan*/  FUNC14 (struct inode*,struct inode*) ; 

__attribute__((used)) static int FUNC15(struct inode *dir, struct dentry *dentry)
{
	struct ubifs_info *c = dir->i_sb->s_fs_info;
	struct inode *inode = dentry->d_inode;
	struct ubifs_inode *dir_ui = FUNC11(dir);
	int sz_change = FUNC0(dentry->d_name.len);
	int err, budgeted = 1;
	struct ubifs_budget_req req = { .mod_dent = 1, .dirtied_ino = 2 };

	/*
	 * Budget request settings: deletion direntry, deletion inode (+1 for
	 * @dirtied_ino), changing the parent directory inode. If budgeting
	 * fails, go ahead anyway because we have extra space reserved for
	 * deletions.
	 */

	FUNC2("dent '%.*s' from ino %lu (nlink %d) in dir ino %lu",
		dentry->d_name.len, dentry->d_name.name, inode->i_ino,
		inode->i_nlink, dir->i_ino);
	FUNC8(FUNC6(&dir->i_mutex));
	FUNC8(FUNC6(&inode->i_mutex));
	err = FUNC1(inode);
	if (err)
		return err;

	err = FUNC9(c, &req);
	if (err) {
		if (err != -ENOSPC)
			return err;
		budgeted = 0;
	}

	FUNC5(dir, inode);
	inode->i_ctime = FUNC10(dir);
	FUNC3(inode);
	dir->i_size -= sz_change;
	dir_ui->ui_size = dir->i_size;
	dir->i_mtime = dir->i_ctime = inode->i_ctime;
	err = FUNC12(c, dir, &dentry->d_name, inode, 1, 0);
	if (err)
		goto out_cancel;
	FUNC14(dir, inode);

	if (budgeted)
		FUNC13(c, &req);
	else {
		/* We've deleted something - clean the "no space" flags */
		c->nospace = c->nospace_rp = 0;
		FUNC7();
	}
	return 0;

out_cancel:
	dir->i_size += sz_change;
	dir_ui->ui_size = dir->i_size;
	FUNC4(inode);
	FUNC14(dir, inode);
	if (budgeted)
		FUNC13(c, &req);
	return err;
}