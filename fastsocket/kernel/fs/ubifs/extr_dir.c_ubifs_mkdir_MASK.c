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
struct ubifs_inode {int ui_size; int /*<<< orphan*/  ui_mutex; } ;
struct ubifs_info {int dummy; } ;
struct ubifs_budget_req {int new_ino; int new_dent; } ;
struct inode {int i_size; int /*<<< orphan*/  i_ctime; int /*<<< orphan*/  i_mtime; int /*<<< orphan*/  i_ino; TYPE_1__* i_sb; } ;
struct TYPE_4__ {int /*<<< orphan*/  name; int /*<<< orphan*/  len; } ;
struct dentry {TYPE_2__ d_name; } ;
struct TYPE_3__ {struct ubifs_info* s_fs_info; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct inode*) ; 
 int FUNC2 (struct inode*) ; 
 int S_IFDIR ; 
 int /*<<< orphan*/  FUNC3 (struct dentry*,struct inode*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*) ; 
 int /*<<< orphan*/  FUNC6 (struct inode*) ; 
 int /*<<< orphan*/  FUNC7 (struct inode*) ; 
 int /*<<< orphan*/  FUNC8 (struct inode*) ; 
 int /*<<< orphan*/  FUNC9 (struct inode*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int FUNC12 (struct ubifs_info*,struct ubifs_budget_req*) ; 
 int /*<<< orphan*/  FUNC13 (char*,int) ; 
 struct ubifs_inode* FUNC14 (struct inode*) ; 
 int FUNC15 (struct ubifs_info*,struct inode*,TYPE_2__*,struct inode*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct inode* FUNC16 (struct ubifs_info*,struct inode*,int) ; 
 int /*<<< orphan*/  FUNC17 (struct ubifs_info*,struct ubifs_budget_req*) ; 

__attribute__((used)) static int FUNC18(struct inode *dir, struct dentry *dentry, int mode)
{
	struct inode *inode;
	struct ubifs_inode *dir_ui = FUNC14(dir);
	struct ubifs_info *c = dir->i_sb->s_fs_info;
	int err, sz_change = FUNC0(dentry->d_name.len);
	struct ubifs_budget_req req = { .new_ino = 1, .new_dent = 1 };

	/*
	 * Budget request settings: new inode, new direntry and changing parent
	 * directory inode.
	 */

	FUNC4("dent '%.*s', mode %#x in dir ino %lu",
		dentry->d_name.len, dentry->d_name.name, mode, dir->i_ino);

	err = FUNC12(c, &req);
	if (err)
		return err;

	inode = FUNC16(c, dir, S_IFDIR | mode);
	if (FUNC1(inode)) {
		err = FUNC2(inode);
		goto out_budg;
	}

	FUNC10(&dir_ui->ui_mutex);
	FUNC7(inode);
	FUNC6(inode);
	FUNC6(dir);
	dir->i_size += sz_change;
	dir_ui->ui_size = dir->i_size;
	dir->i_mtime = dir->i_ctime = inode->i_ctime;
	err = FUNC15(c, dir, &dentry->d_name, inode, 0, 0);
	if (err) {
		FUNC13("cannot create directory, error %d", err);
		goto out_cancel;
	}
	FUNC11(&dir_ui->ui_mutex);

	FUNC17(c, &req);
	FUNC3(dentry, inode);
	return 0;

out_cancel:
	dir->i_size -= sz_change;
	dir_ui->ui_size = dir->i_size;
	FUNC5(dir);
	FUNC11(&dir_ui->ui_mutex);
	FUNC9(inode);
	FUNC8(inode);
out_budg:
	FUNC17(c, &req);
	return err;
}