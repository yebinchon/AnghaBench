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
struct ubifs_inode {int data_len; int ui_size; int /*<<< orphan*/  ui_mutex; scalar_t__ data; } ;
struct ubifs_info {int dummy; } ;
struct ubifs_budget_req {int new_ino; int new_dent; int dirtied_ino; int /*<<< orphan*/  new_ino_d; } ;
struct inode {int i_size; int /*<<< orphan*/  i_ctime; int /*<<< orphan*/  i_mtime; int /*<<< orphan*/  i_ino; TYPE_1__* i_sb; } ;
struct TYPE_4__ {int /*<<< orphan*/  name; int /*<<< orphan*/  len; } ;
struct dentry {TYPE_2__ d_name; } ;
struct TYPE_3__ {struct ubifs_info* s_fs_info; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int ENAMETOOLONG ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 scalar_t__ FUNC2 (struct inode*) ; 
 int FUNC3 (struct inode*) ; 
 int S_IFLNK ; 
 int S_IRWXUGO ; 
 int UBIFS_MAX_INO_DATA ; 
 int /*<<< orphan*/  FUNC4 (struct dentry*,struct inode*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct inode*) ; 
 int /*<<< orphan*/  FUNC7 (struct inode*) ; 
 scalar_t__ FUNC8 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct inode*) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__,char const*,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int FUNC13 (char const*) ; 
 int FUNC14 (struct ubifs_info*,struct ubifs_budget_req*) ; 
 struct ubifs_inode* FUNC15 (struct inode*) ; 
 int FUNC16 (struct ubifs_info*,struct inode*,TYPE_2__*,struct inode*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct inode* FUNC17 (struct ubifs_info*,struct inode*,int) ; 
 int /*<<< orphan*/  FUNC18 (struct ubifs_info*,struct ubifs_budget_req*) ; 

__attribute__((used)) static int FUNC19(struct inode *dir, struct dentry *dentry,
			 const char *symname)
{
	struct inode *inode;
	struct ubifs_inode *ui;
	struct ubifs_inode *dir_ui = FUNC15(dir);
	struct ubifs_info *c = dir->i_sb->s_fs_info;
	int err, len = FUNC13(symname);
	int sz_change = FUNC1(dentry->d_name.len);
	struct ubifs_budget_req req = { .new_ino = 1, .new_dent = 1,
					.new_ino_d = FUNC0(len, 8),
					.dirtied_ino = 1 };

	/*
	 * Budget request settings: new inode, new direntry and changing parent
	 * directory inode.
	 */

	FUNC5("dent '%.*s', target '%s' in dir ino %lu", dentry->d_name.len,
		dentry->d_name.name, symname, dir->i_ino);

	if (len > UBIFS_MAX_INO_DATA)
		return -ENAMETOOLONG;

	err = FUNC14(c, &req);
	if (err)
		return err;

	inode = FUNC17(c, dir, S_IFLNK | S_IRWXUGO);
	if (FUNC2(inode)) {
		err = FUNC3(inode);
		goto out_budg;
	}

	ui = FUNC15(inode);
	ui->data = FUNC8(len + 1, GFP_NOFS);
	if (!ui->data) {
		err = -ENOMEM;
		goto out_inode;
	}

	FUNC10(ui->data, symname, len);
	((char *)ui->data)[len] = '\0';
	/*
	 * The terminating zero byte is not written to the flash media and it
	 * is put just to make later in-memory string processing simpler. Thus,
	 * data length is @len, not @len + %1.
	 */
	ui->data_len = len;
	inode->i_size = FUNC15(inode)->ui_size = len;

	FUNC11(&dir_ui->ui_mutex);
	dir->i_size += sz_change;
	dir_ui->ui_size = dir->i_size;
	dir->i_mtime = dir->i_ctime = inode->i_ctime;
	err = FUNC16(c, dir, &dentry->d_name, inode, 0, 0);
	if (err)
		goto out_cancel;
	FUNC12(&dir_ui->ui_mutex);

	FUNC18(c, &req);
	FUNC6(inode);
	FUNC4(dentry, inode);
	return 0;

out_cancel:
	dir->i_size -= sz_change;
	dir_ui->ui_size = dir->i_size;
	FUNC12(&dir_ui->ui_mutex);
out_inode:
	FUNC9(inode);
	FUNC7(inode);
out_budg:
	FUNC18(c, &req);
	return err;
}