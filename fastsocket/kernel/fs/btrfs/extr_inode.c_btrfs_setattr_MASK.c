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
struct inode {int /*<<< orphan*/  i_mode; } ;
struct iattr {int ia_valid; } ;
struct dentry {struct inode* d_inode; } ;
struct btrfs_root {int dummy; } ;
struct TYPE_2__ {struct btrfs_root* root; } ;

/* Variables and functions */
 int ATTR_MODE ; 
 int ATTR_SIZE ; 
 TYPE_1__* FUNC0 (struct inode*) ; 
 int EROFS ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct inode*) ; 
 scalar_t__ FUNC3 (struct btrfs_root*) ; 
 int FUNC4 (struct inode*,struct iattr*) ; 
 int FUNC5 (struct inode*,struct iattr*) ; 
 int /*<<< orphan*/  FUNC6 (struct inode*) ; 
 int FUNC7 (struct inode*,struct iattr*) ; 

__attribute__((used)) static int FUNC8(struct dentry *dentry, struct iattr *attr)
{
	struct inode *inode = dentry->d_inode;
	struct btrfs_root *root = FUNC0(inode)->root;
	int err;

	if (FUNC3(root))
		return -EROFS;

	err = FUNC5(inode, attr);
	if (err)
		return err;

	if (FUNC1(inode->i_mode) && (attr->ia_valid & ATTR_SIZE)) {
		err = FUNC4(inode, attr);
		if (err)
			return err;
	}
	attr->ia_valid &= ~ATTR_SIZE;

	if (attr->ia_valid) {
		FUNC6(inode);
		err = FUNC7(inode, attr);
	}

	if (!err && ((attr->ia_valid & ATTR_MODE)))
		err = FUNC2(inode);
	return err;
}