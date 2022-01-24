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
typedef  union ubifs_dev_desc {int dummy; } ubifs_dev_desc ;
struct ubifs_inode {int ui_size; int data_len; int /*<<< orphan*/  ui_mutex; union ubifs_dev_desc* data; } ;
struct ubifs_info {int dummy; } ;
struct ubifs_budget_req {int new_ino; int new_dent; int dirtied_ino; int /*<<< orphan*/  new_ino_d; } ;
struct inode {int i_size; int /*<<< orphan*/  i_ctime; int /*<<< orphan*/  i_mtime; int /*<<< orphan*/  i_mode; int /*<<< orphan*/  i_ino; TYPE_1__* i_sb; } ;
struct TYPE_4__ {int /*<<< orphan*/  name; int /*<<< orphan*/  len; } ;
struct dentry {TYPE_2__ d_name; } ;
typedef  int /*<<< orphan*/  dev_t ;
struct TYPE_3__ {struct ubifs_info* s_fs_info; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 scalar_t__ FUNC2 (struct inode*) ; 
 int FUNC3 (struct inode*) ; 
 scalar_t__ FUNC4 (int) ; 
 scalar_t__ FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (struct dentry*,struct inode*) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct inode*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct inode*) ; 
 int /*<<< orphan*/  FUNC10 (struct inode*) ; 
 int /*<<< orphan*/  FUNC11 (union ubifs_dev_desc*) ; 
 union ubifs_dev_desc* FUNC12 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct inode*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int FUNC17 (struct ubifs_info*,struct ubifs_budget_req*) ; 
 int FUNC18 (union ubifs_dev_desc*,int /*<<< orphan*/ ) ; 
 struct ubifs_inode* FUNC19 (struct inode*) ; 
 int FUNC20 (struct ubifs_info*,struct inode*,TYPE_2__*,struct inode*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct inode* FUNC21 (struct ubifs_info*,struct inode*,int) ; 
 int /*<<< orphan*/  FUNC22 (struct ubifs_info*,struct ubifs_budget_req*) ; 

__attribute__((used)) static int FUNC23(struct inode *dir, struct dentry *dentry,
		       int mode, dev_t rdev)
{
	struct inode *inode;
	struct ubifs_inode *ui;
	struct ubifs_inode *dir_ui = FUNC19(dir);
	struct ubifs_info *c = dir->i_sb->s_fs_info;
	union ubifs_dev_desc *dev = NULL;
	int sz_change = FUNC1(dentry->d_name.len);
	int err, devlen = 0;
	struct ubifs_budget_req req = { .new_ino = 1, .new_dent = 1,
					.new_ino_d = FUNC0(devlen, 8),
					.dirtied_ino = 1 };

	/*
	 * Budget request settings: new inode, new direntry and changing parent
	 * directory inode.
	 */

	FUNC7("dent '%.*s' in dir ino %lu",
		dentry->d_name.len, dentry->d_name.name, dir->i_ino);

	if (!FUNC16(rdev))
		return -EINVAL;

	if (FUNC4(mode) || FUNC5(mode)) {
		dev = FUNC12(sizeof(union ubifs_dev_desc), GFP_NOFS);
		if (!dev)
			return -ENOMEM;
		devlen = FUNC18(dev, rdev);
	}

	err = FUNC17(c, &req);
	if (err) {
		FUNC11(dev);
		return err;
	}

	inode = FUNC21(c, dir, mode);
	if (FUNC2(inode)) {
		FUNC11(dev);
		err = FUNC3(inode);
		goto out_budg;
	}

	FUNC8(inode, inode->i_mode, rdev);
	inode->i_size = FUNC19(inode)->ui_size = devlen;
	ui = FUNC19(inode);
	ui->data = dev;
	ui->data_len = devlen;

	FUNC14(&dir_ui->ui_mutex);
	dir->i_size += sz_change;
	dir_ui->ui_size = dir->i_size;
	dir->i_mtime = dir->i_ctime = inode->i_ctime;
	err = FUNC20(c, dir, &dentry->d_name, inode, 0, 0);
	if (err)
		goto out_cancel;
	FUNC15(&dir_ui->ui_mutex);

	FUNC22(c, &req);
	FUNC9(inode);
	FUNC6(dentry, inode);
	return 0;

out_cancel:
	dir->i_size -= sz_change;
	dir_ui->ui_size = dir->i_size;
	FUNC15(&dir_ui->ui_mutex);
	FUNC13(inode);
	FUNC10(inode);
out_budg:
	FUNC22(c, &req);
	return err;
}