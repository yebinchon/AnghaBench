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
struct nameidata {int dummy; } ;
struct inode {int /*<<< orphan*/  i_sb; } ;
struct fuse_entry_out {int dummy; } ;
struct dentry {int /*<<< orphan*/ * d_op; int /*<<< orphan*/  d_name; } ;

/* Variables and functions */
 int EIO ; 
 int ENOENT ; 
 struct dentry* FUNC0 (int) ; 
 scalar_t__ FUSE_ROOT_ID ; 
 scalar_t__ FUNC1 (struct dentry*) ; 
 int FUNC2 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC3 (struct dentry*,struct fuse_entry_out*) ; 
 int /*<<< orphan*/  fuse_dentry_operations ; 
 int /*<<< orphan*/  FUNC4 (struct dentry*) ; 
 int FUNC5 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *,struct fuse_entry_out*,struct inode**) ; 
 struct dentry* FUNC6 (struct dentry*,struct inode*) ; 
 scalar_t__ FUNC7 (struct inode*) ; 
 int /*<<< orphan*/  FUNC8 (struct inode*) ; 

__attribute__((used)) static struct dentry *FUNC9(struct inode *dir, struct dentry *entry,
				  struct nameidata *nd)
{
	int err;
	struct fuse_entry_out outarg;
	struct inode *inode;
	struct dentry *newent;
	bool outarg_valid = true;

	err = FUNC5(dir->i_sb, FUNC7(dir), &entry->d_name,
			       &outarg, &inode);
	if (err == -ENOENT) {
		outarg_valid = false;
		err = 0;
	}
	if (err)
		goto out_err;

	err = -EIO;
	if (inode && FUNC7(inode) == FUSE_ROOT_ID)
		goto out_iput;

	newent = FUNC6(entry, inode);
	err = FUNC2(newent);
	if (FUNC1(newent))
		goto out_err;

	entry = newent ? newent : entry;
	entry->d_op = &fuse_dentry_operations;
	if (outarg_valid)
		FUNC3(entry, &outarg);
	else
		FUNC4(entry);

	return newent;

 out_iput:
	FUNC8(inode);
 out_err:
	return FUNC0(err);
}