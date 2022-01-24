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
struct ubifs_inode {scalar_t__ dirty; scalar_t__ ui_size; scalar_t__ xattr; } ;
struct ubifs_info {scalar_t__ nospace_rp; scalar_t__ nospace; } ;
struct inode {scalar_t__ i_nlink; int /*<<< orphan*/  i_ino; scalar_t__ i_size; int /*<<< orphan*/  i_data; int /*<<< orphan*/  i_count; scalar_t__ i_mode; TYPE_1__* i_sb; } ;
struct TYPE_2__ {struct ubifs_info* s_fs_info; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 (struct inode*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ,int) ; 
 struct ubifs_inode* FUNC8 (struct inode*) ; 
 int FUNC9 (struct ubifs_info*,struct inode*) ; 
 int /*<<< orphan*/  FUNC10 (struct ubifs_info*,struct ubifs_inode*) ; 

__attribute__((used)) static void FUNC11(struct inode *inode)
{
	int err;
	struct ubifs_info *c = inode->i_sb->s_fs_info;
	struct ubifs_inode *ui = FUNC8(inode);

	if (ui->xattr)
		/*
		 * Extended attribute inode deletions are fully handled in
		 * 'ubifs_removexattr()'. These inodes are special and have
		 * limited usage, so there is nothing to do here.
		 */
		goto out;

	FUNC2("inode %lu, mode %#x", inode->i_ino, (int)inode->i_mode);
	FUNC6(!FUNC0(&inode->i_count));
	FUNC6(inode->i_nlink == 0);

	FUNC5(&inode->i_data, 0);
	if (FUNC3(inode))
		goto out;

	ui->ui_size = inode->i_size = 0;
	err = FUNC9(c, inode);
	if (err)
		/*
		 * Worst case we have a lost orphan inode wasting space, so a
		 * simple error message is OK here.
		 */
		FUNC7("can't delete inode %lu, error %d",
			  inode->i_ino, err);

out:
	if (ui->dirty)
		FUNC10(c, ui);
	else {
		/* We've deleted something - clean the "no space" flags */
		c->nospace = c->nospace_rp = 0;
		FUNC4();
	}
	FUNC1(inode);
}