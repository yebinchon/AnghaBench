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
typedef  int /*<<< orphan*/  u32 ;
struct super_block {int dummy; } ;
struct inode {int i_nlink; int /*<<< orphan*/  i_ctime; int /*<<< orphan*/  i_ino; struct super_block* i_sb; } ;
struct dentry {scalar_t__ d_fsdata; struct inode* d_inode; TYPE_1__* d_parent; } ;
struct buffer_head {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  stype; } ;
struct TYPE_3__ {struct inode* d_inode; } ;

/* Variables and functions */
 TYPE_2__* FUNC0 (struct super_block*,struct buffer_head*) ; 
 int /*<<< orphan*/  CURRENT_TIME_SEC ; 
 int EIO ; 
 int ENOENT ; 
#define  ST_USERDIR 128 
 struct buffer_head* FUNC1 (struct super_block*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct buffer_head*) ; 
 int FUNC3 (struct inode*) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*) ; 
 int FUNC6 (struct inode*,struct buffer_head*) ; 
 int FUNC7 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC8 (struct inode*) ; 
 int /*<<< orphan*/  FUNC9 (struct inode*) ; 
 int FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct buffer_head*,struct inode*) ; 
 int /*<<< orphan*/  FUNC12 (struct inode*) ; 
 int /*<<< orphan*/  FUNC13 (char*,int /*<<< orphan*/ ) ; 

int
FUNC14(struct dentry *dentry)
{
	struct super_block *sb;
	struct inode *inode, *dir;
	struct buffer_head *bh = NULL;
	int retval;

	dir = dentry->d_parent->d_inode;
	sb = dir->i_sb;

	retval = -ENOENT;
	inode = dentry->d_inode;
	if (!inode)
		goto done;

	FUNC13("AFFS: remove_header(key=%ld)\n", inode->i_ino);
	retval = -EIO;
	bh = FUNC1(sb, (u32)(long)dentry->d_fsdata);
	if (!bh)
		goto done;

	FUNC5(inode);
	FUNC4(dir);
	switch (FUNC10(FUNC0(sb, bh)->stype)) {
	case ST_USERDIR:
		/* if we ever want to support links to dirs
		 * i_hash_lock of the inode must only be
		 * taken after some checks
		 */
		FUNC4(inode);
		retval = FUNC3(inode);
		FUNC8(inode);
		if (retval)
			goto done_unlock;
		break;
	default:
		break;
	}

	retval = FUNC6(dir, bh);
	if (retval)
		goto done_unlock;
	FUNC11(bh, inode);

	FUNC8(dir);

	if (inode->i_nlink > 1)
		retval = FUNC7(dentry);
	else
		inode->i_nlink = 0;
	FUNC9(inode);
	inode->i_ctime = CURRENT_TIME_SEC;
	FUNC12(inode);

done:
	FUNC2(bh);
	return retval;

done_unlock:
	FUNC8(dir);
	FUNC9(inode);
	goto done;
}