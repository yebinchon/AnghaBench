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
struct super_block {unsigned int s_blocksize; } ;
struct inode {unsigned int i_size; int /*<<< orphan*/ * i_op; TYPE_1__* i_mapping; struct super_block* i_sb; } ;
struct exofs_i_info {int /*<<< orphan*/  i_data; } ;
struct dentry {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/ * a_ops; } ;

/* Variables and functions */
 int ENAMETOOLONG ; 
 scalar_t__ FUNC0 (struct inode*) ; 
 int FUNC1 (struct inode*) ; 
 int S_IFLNK ; 
 int S_IRWXUGO ; 
 int FUNC2 (struct dentry*,struct inode*) ; 
 int /*<<< orphan*/  exofs_aops ; 
 int /*<<< orphan*/  exofs_fast_symlink_inode_operations ; 
 struct exofs_i_info* FUNC3 (struct inode*) ; 
 struct inode* FUNC4 (struct inode*,int) ; 
 int /*<<< orphan*/  exofs_symlink_inode_operations ; 
 int /*<<< orphan*/  FUNC5 (struct inode*) ; 
 int /*<<< orphan*/  FUNC6 (struct inode*) ; 
 int /*<<< orphan*/  FUNC7 (struct inode*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char const*,unsigned int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC10 (struct inode*,char const*,unsigned int) ; 
 int FUNC11 (char const*) ; 

__attribute__((used)) static int FUNC12(struct inode *dir, struct dentry *dentry,
			  const char *symname)
{
	struct super_block *sb = dir->i_sb;
	int err = -ENAMETOOLONG;
	unsigned l = FUNC11(symname)+1;
	struct inode *inode;
	struct exofs_i_info *oi;

	if (l > sb->s_blocksize)
		goto out;

	inode = FUNC4(dir, S_IFLNK | S_IRWXUGO);
	err = FUNC1(inode);
	if (FUNC0(inode))
		goto out;

	oi = FUNC3(inode);
	if (l > sizeof(oi->i_data)) {
		/* slow symlink */
		inode->i_op = &exofs_symlink_inode_operations;
		inode->i_mapping->a_ops = &exofs_aops;
		FUNC9(oi->i_data, 0, sizeof(oi->i_data));

		err = FUNC10(inode, symname, l);
		if (err)
			goto out_fail;
	} else {
		/* fast symlink */
		inode->i_op = &exofs_fast_symlink_inode_operations;
		FUNC8(oi->i_data, symname, l);
		inode->i_size = l-1;
	}
	FUNC7(inode);

	err = FUNC2(dentry, inode);
out:
	return err;

out_fail:
	FUNC5(inode);
	FUNC6(inode);
	goto out;
}