#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct super_block {int dummy; } ;
struct inode {int /*<<< orphan*/  i_atime; int /*<<< orphan*/  i_mtime; struct super_block* i_sb; } ;
struct fat_slot_info {int dummy; } ;
struct dentry {int /*<<< orphan*/  d_name; struct inode* d_inode; } ;

/* Variables and functions */
 int /*<<< orphan*/  CURRENT_TIME_SEC ; 
 int /*<<< orphan*/  FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (struct inode*) ; 
 int FUNC2 (struct inode*,struct fat_slot_info*) ; 
 int /*<<< orphan*/  FUNC3 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC4 (struct super_block*) ; 
 int FUNC5 (struct inode*,int /*<<< orphan*/ *,struct fat_slot_info*) ; 

__attribute__((used)) static int FUNC6(struct inode *dir, struct dentry *dentry)
{
	struct inode *inode = dentry->d_inode;
	struct super_block *sb = dir->i_sb;
	struct fat_slot_info sinfo;
	int err;

	FUNC3(sb);

	err = FUNC5(dir, &dentry->d_name, &sinfo);
	if (err)
		goto out;

	err = FUNC2(dir, &sinfo);	/* and releases bh */
	if (err)
		goto out;
	FUNC0(inode);
	inode->i_mtime = inode->i_atime = CURRENT_TIME_SEC;
	FUNC1(inode);
out:
	FUNC4(sb);

	return err;
}