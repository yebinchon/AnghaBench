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
struct super_block {scalar_t__ s_dirt; } ;
struct inode {struct super_block* i_sb; } ;
struct file {struct address_space* f_mapping; } ;
struct dentry {struct inode* d_inode; } ;
struct address_space {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct super_block*,int) ; 
 int FUNC1 (struct address_space*) ; 
 int FUNC2 (struct inode*,int) ; 

__attribute__((used)) static int FUNC3(struct file *filp, struct dentry *dentry,
			    int datasync)
{
	int ret;
	struct address_space *mapping = filp->f_mapping;
	struct inode *inode = dentry->d_inode;
	struct super_block *sb;

	ret = FUNC1(mapping);
	if (ret)
		return ret;

	/* sync the inode attributes */
	ret = FUNC2(inode, 1);

	/* This is a good place to write the sb */
	/* TODO: Sechedule an sb-sync on create */
	sb = inode->i_sb;
	if (sb->s_dirt)
		FUNC0(sb, 1);

	return ret;
}