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
struct inode {unsigned long i_ino; int /*<<< orphan*/ * i_fop; int /*<<< orphan*/ * i_op; int /*<<< orphan*/  i_sb; } ;
struct dentry {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int S_IFDIR ; 
 int S_IRUGO ; 
 int S_IXUGO ; 
 int /*<<< orphan*/  FUNC0 (struct dentry*,struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (struct inode*) ; 
 struct inode* FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  simple_dir_inode_operations ; 
 int /*<<< orphan*/  simple_dir_operations ; 

__attribute__((used)) static int FUNC3(struct inode *dir, struct dentry *dentry,
			unsigned long *ino)
{
	int ret = 0;
	struct inode *inode;

	inode = FUNC2(dir->i_sb, S_IFDIR | S_IRUGO | S_IXUGO);
	if (!inode) {
		ret = -ENOMEM;
		goto out;
	}
	inode->i_op = &simple_dir_inode_operations;
	inode->i_fop = &simple_dir_operations;
	inode->i_ino = ++(*ino);
	/* directory inodes start off with i_nlink == 2 (for "." entry) */
	FUNC1(inode);
	FUNC0(dentry, inode);
	/* bump link count on parent directory, too */
	FUNC1(dir);
out:
	return ret;
}