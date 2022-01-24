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
struct super_block {int dummy; } ;
struct inode {int /*<<< orphan*/  i_ctime; struct super_block* i_sb; } ;
struct fat_slot_info {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  len; int /*<<< orphan*/  name; } ;
struct dentry {TYPE_1__ d_name; struct inode* d_inode; } ;

/* Variables and functions */
 int /*<<< orphan*/  CURRENT_TIME_SEC ; 
 int /*<<< orphan*/  FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*) ; 
 int FUNC3 (struct inode*) ; 
 int FUNC4 (struct super_block*,struct inode*,struct inode*) ; 
 int FUNC5 (struct inode*,struct fat_slot_info*) ; 
 int /*<<< orphan*/  FUNC6 (struct super_block*) ; 
 int FUNC7 (struct inode*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct fat_slot_info*) ; 
 int /*<<< orphan*/  FUNC8 (struct super_block*) ; 

__attribute__((used)) static int FUNC9(struct inode *dir, struct dentry *dentry)
{
	struct super_block *sb = dir->i_sb;
	struct inode *inode = dentry->d_inode;
	struct fat_slot_info sinfo;
	int err;

	FUNC6(sb);
	/*
	 * Check whether the directory is not in use, then check
	 * whether it is empty.
	 */
	err = FUNC3(inode);
	if (err)
		goto out;
	err = FUNC7(dir, dentry->d_name.name, dentry->d_name.len, &sinfo);
	if (err)
		goto out;

	err = FUNC5(dir, &sinfo);	/* and releases bh */
	if (err)
		goto out;
	FUNC1(dir);

	FUNC0(inode);
	inode->i_ctime = CURRENT_TIME_SEC;
	FUNC2(inode);
out:
	FUNC8(sb);
	if (!err)
		err = FUNC4(sb, dir, inode);

	return err;
}