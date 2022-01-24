#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct super_block {int dummy; } ;
struct inode {scalar_t__ i_ino; struct super_block* i_sb; } ;
struct TYPE_4__ {scalar_t__ len; int /*<<< orphan*/  name; } ;
struct dentry {TYPE_2__* d_inode; TYPE_1__ d_name; } ;
struct buffer_head {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  name; } ;
struct TYPE_5__ {int /*<<< orphan*/  i_ino; } ;

/* Variables and functions */
 TYPE_3__* FUNC0 (struct super_block*,struct buffer_head*) ; 
 int EIO ; 
 struct buffer_head* FUNC1 (struct super_block*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct buffer_head*) ; 
 int FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct dentry*) ; 
 int /*<<< orphan*/  FUNC5 (struct super_block*,struct buffer_head*) ; 
 int FUNC6 (struct inode*,struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC7 (struct inode*) ; 
 int FUNC8 (struct inode*,struct buffer_head*) ; 
 int FUNC9 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC10 (struct inode*) ; 
 int /*<<< orphan*/  FUNC11 (struct buffer_head*,struct inode*) ; 
 int /*<<< orphan*/  FUNC12 (char*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

int
FUNC13(struct inode *old_dir, struct dentry *old_dentry,
	    struct inode *new_dir, struct dentry *new_dentry)
{
	struct super_block *sb = old_dir->i_sb;
	struct buffer_head *bh = NULL;
	int retval;

	FUNC12("AFFS: rename(old=%u,\"%*s\" to new=%u,\"%*s\")\n",
		 (u32)old_dir->i_ino, (int)old_dentry->d_name.len, old_dentry->d_name.name,
		 (u32)new_dir->i_ino, (int)new_dentry->d_name.len, new_dentry->d_name.name);

	retval = FUNC3(new_dentry->d_name.name,new_dentry->d_name.len);
	if (retval)
		return retval;

	/* Unlink destination if it already exists */
	if (new_dentry->d_inode) {
		retval = FUNC9(new_dentry);
		if (retval)
			return retval;
	}

	bh = FUNC1(sb, old_dentry->d_inode->i_ino);
	if (!bh)
		return -EIO;

	/* Remove header from its parent directory. */
	FUNC7(old_dir);
	retval = FUNC8(old_dir, bh);
	FUNC10(old_dir);
	if (retval)
		goto done;

	/* And insert it into the new directory with the new name. */
	FUNC4(FUNC0(sb, bh)->name, new_dentry);
	FUNC5(sb, bh);
	FUNC7(new_dir);
	retval = FUNC6(new_dir, bh);
	FUNC10(new_dir);
	/* TODO: move it back to old_dir, if error? */

done:
	FUNC11(bh, retval ? old_dir : new_dir);
	FUNC2(bh);
	return retval;
}