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
struct qstr {int len; char* name; } ;
struct inode {int /*<<< orphan*/  i_sb; } ;
struct fuse_entry_out {int dummy; } ;
struct fuse_conn {int /*<<< orphan*/  export_support; } ;
struct dentry {int /*<<< orphan*/ * d_op; struct inode* d_inode; } ;

/* Variables and functions */
 int ENOENT ; 
 struct dentry* FUNC0 (int) ; 
 int ESTALE ; 
 scalar_t__ FUSE_ROOT_ID ; 
 int /*<<< orphan*/  FUNC1 (struct dentry*) ; 
 struct dentry* FUNC2 (struct inode*) ; 
 int /*<<< orphan*/  fuse_dentry_operations ; 
 int /*<<< orphan*/  FUNC3 (struct dentry*) ; 
 int FUNC4 (int /*<<< orphan*/ ,scalar_t__,struct qstr*,struct fuse_entry_out*,struct inode**) ; 
 struct fuse_conn* FUNC5 (struct inode*) ; 
 scalar_t__ FUNC6 (struct inode*) ; 

__attribute__((used)) static struct dentry *FUNC7(struct dentry *child)
{
	struct inode *child_inode = child->d_inode;
	struct fuse_conn *fc = FUNC5(child_inode);
	struct inode *inode;
	struct dentry *parent;
	struct fuse_entry_out outarg;
	struct qstr name;
	int err;

	if (!fc->export_support)
		return FUNC0(-ESTALE);

	name.len = 2;
	name.name = "..";
	err = FUNC4(child_inode->i_sb, FUNC6(child_inode),
			       &name, &outarg, &inode);
	if (err) {
		if (err == -ENOENT)
			return FUNC0(-ESTALE);
		return FUNC0(err);
	}

	parent = FUNC2(inode);
	if (!FUNC1(parent) && FUNC6(inode) != FUSE_ROOT_ID) {
		parent->d_op = &fuse_dentry_operations;
		FUNC3(parent);
	}

	return parent;
}