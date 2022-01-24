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
struct writeback_control {int dummy; } ;
struct ubifs_inode {int /*<<< orphan*/  ui_mutex; scalar_t__ dirty; int /*<<< orphan*/  ui_size; int /*<<< orphan*/  xattr; } ;
struct ubifs_info {int dummy; } ;
struct inode {int /*<<< orphan*/  i_ino; scalar_t__ i_nlink; scalar_t__ i_mode; TYPE_1__* i_sb; } ;
struct TYPE_2__ {struct ubifs_info* s_fs_info; } ;

/* Variables and functions */
 int FUNC0 (struct ubifs_info*,struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int,scalar_t__) ; 
 scalar_t__ FUNC2 (struct inode*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ,int) ; 
 struct ubifs_inode* FUNC7 (struct inode*) ; 
 int FUNC8 (struct ubifs_info*,struct inode*) ; 
 int /*<<< orphan*/  FUNC9 (struct ubifs_info*,struct ubifs_inode*) ; 

__attribute__((used)) static int FUNC10(struct inode *inode, struct writeback_control *wbc)
{
	int err = 0;
	struct ubifs_info *c = inode->i_sb->s_fs_info;
	struct ubifs_inode *ui = FUNC7(inode);

	FUNC5(!ui->xattr);
	if (FUNC2(inode))
		return 0;

	FUNC3(&ui->ui_mutex);
	/*
	 * Due to races between write-back forced by budgeting
	 * (see 'sync_some_inodes()') and pdflush write-back, the inode may
	 * have already been synchronized, do not do this again. This might
	 * also happen if it was synchronized in an VFS operation, e.g.
	 * 'ubifs_link()'.
	 */
	if (!ui->dirty) {
		FUNC4(&ui->ui_mutex);
		return 0;
	}

	/*
	 * As an optimization, do not write orphan inodes to the media just
	 * because this is not needed.
	 */
	FUNC1("inode %lu, mode %#x, nlink %u",
		inode->i_ino, (int)inode->i_mode, inode->i_nlink);
	if (inode->i_nlink) {
		err = FUNC8(c, inode);
		if (err)
			FUNC6("can't write inode %lu, error %d",
				  inode->i_ino, err);
		else
			err = FUNC0(c, inode, ui->ui_size);
	}

	ui->dirty = 0;
	FUNC4(&ui->ui_mutex);
	FUNC9(c, ui);
	return err;
}