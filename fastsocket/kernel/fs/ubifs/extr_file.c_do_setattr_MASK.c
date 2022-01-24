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
struct ubifs_inode {int dirty; int /*<<< orphan*/  ui_mutex; int /*<<< orphan*/  ui_size; int /*<<< orphan*/  data_len; } ;
struct ubifs_info {int dummy; } ;
struct ubifs_budget_req {int dirtied_ino; int /*<<< orphan*/  dirtied_ino_d; } ;
struct inode {TYPE_2__* i_sb; int /*<<< orphan*/  i_size; int /*<<< orphan*/  i_ctime; int /*<<< orphan*/  i_mtime; } ;
struct iattr {int ia_valid; int /*<<< orphan*/  ia_size; } ;
typedef  int /*<<< orphan*/  loff_t ;
struct TYPE_4__ {TYPE_1__* s_op; } ;
struct TYPE_3__ {int (* write_inode ) (struct inode*,int /*<<< orphan*/ *) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int ATTR_SIZE ; 
 scalar_t__ FUNC1 (struct inode*) ; 
 int I_DIRTY_DATASYNC ; 
 int I_DIRTY_SYNC ; 
 int /*<<< orphan*/  FUNC2 (struct inode*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*,struct iattr const*) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (struct inode*,int /*<<< orphan*/ *) ; 
 int FUNC9 (struct ubifs_info*,struct ubifs_budget_req*) ; 
 int /*<<< orphan*/  FUNC10 (struct inode*) ; 
 struct ubifs_inode* FUNC11 (struct inode*) ; 
 int /*<<< orphan*/  FUNC12 (struct ubifs_info*,struct ubifs_budget_req*) ; 
 int FUNC13 (struct inode*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC14(struct ubifs_info *c, struct inode *inode,
		      const struct iattr *attr)
{
	int err, release;
	loff_t new_size = attr->ia_size;
	struct ubifs_inode *ui = FUNC11(inode);
	struct ubifs_budget_req req = { .dirtied_ino = 1,
				.dirtied_ino_d = FUNC0(ui->data_len, 8) };

	err = FUNC9(c, &req);
	if (err)
		return err;

	if (attr->ia_valid & ATTR_SIZE) {
		FUNC3("size %lld -> %lld", inode->i_size, new_size);
		err = FUNC13(inode, new_size);
		if (err)
			goto out;
	}

	FUNC6(&ui->ui_mutex);
	if (attr->ia_valid & ATTR_SIZE) {
		/* Truncation changes inode [mc]time */
		inode->i_mtime = inode->i_ctime = FUNC10(inode);
		/* 'vmtruncate()' changed @i_size, update @ui_size */
		ui->ui_size = inode->i_size;
	}

	FUNC4(inode, attr);

	release = ui->dirty;
	if (attr->ia_valid & ATTR_SIZE)
		/*
		 * Inode length changed, so we have to make sure
		 * @I_DIRTY_DATASYNC is set.
		 */
		 FUNC2(inode, I_DIRTY_SYNC | I_DIRTY_DATASYNC);
	else
		FUNC5(inode);
	FUNC7(&ui->ui_mutex);

	if (release)
		FUNC12(c, &req);
	if (FUNC1(inode))
		err = inode->i_sb->s_op->write_inode(inode, NULL);
	return err;

out:
	FUNC12(c, &req);
	return err;
}