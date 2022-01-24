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
struct super_block {TYPE_1__* s_root; } ;
struct msdos_dir_entry {int dummy; } ;
struct inode {int dummy; } ;
struct dentry {int /*<<< orphan*/  d_op; int /*<<< orphan*/  d_inode; struct super_block* d_sb; } ;
struct buffer_head {int dummy; } ;
typedef  int /*<<< orphan*/  loff_t ;
struct TYPE_2__ {int /*<<< orphan*/  d_op; } ;

/* Variables and functions */
 struct dentry* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC2 (struct buffer_head*) ; 
 struct dentry* FUNC3 (struct inode*) ; 
 struct inode* FUNC4 (struct super_block*,struct msdos_dir_entry*,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,struct buffer_head**,struct msdos_dir_entry**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC7 (struct super_block*) ; 

__attribute__((used)) static struct dentry *FUNC8(struct dentry *child)
{
	struct super_block *sb = child->d_sb;
	struct buffer_head *bh;
	struct msdos_dir_entry *de;
	loff_t i_pos;
	struct dentry *parent;
	struct inode *inode;
	int err;

	FUNC6(sb);

	err = FUNC5(child->d_inode, &bh, &de, &i_pos);
	if (err) {
		parent = FUNC0(err);
		goto out;
	}
	inode = FUNC4(sb, de, i_pos);
	FUNC2(bh);

	parent = FUNC3(inode);
	if (!FUNC1(parent))
		parent->d_op = sb->s_root->d_op;
out:
	FUNC7(sb);

	return parent;
}