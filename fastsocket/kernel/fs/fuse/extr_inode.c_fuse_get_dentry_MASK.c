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
struct qstr {int len; char* name; } ;
struct inode {scalar_t__ i_generation; } ;
struct fuse_inode_handle {scalar_t__ nodeid; scalar_t__ generation; } ;
struct fuse_entry_out {int dummy; } ;
struct fuse_conn {int /*<<< orphan*/  export_support; } ;
struct dentry {int /*<<< orphan*/ * d_op; } ;

/* Variables and functions */
 int EIO ; 
 int ENOENT ; 
 struct dentry* FUNC0 (int) ; 
 int ESTALE ; 
 scalar_t__ FUSE_ROOT_ID ; 
 int /*<<< orphan*/  FUNC1 (struct dentry*) ; 
 struct dentry* FUNC2 (struct inode*) ; 
 int /*<<< orphan*/  fuse_dentry_operations ; 
 int /*<<< orphan*/  fuse_inode_eq ; 
 int /*<<< orphan*/  FUNC3 (struct dentry*) ; 
 int FUNC4 (struct super_block*,scalar_t__,struct qstr*,struct fuse_entry_out*,struct inode**) ; 
 struct fuse_conn* FUNC5 (struct super_block*) ; 
 scalar_t__ FUNC6 (struct inode*) ; 
 struct inode* FUNC7 (struct super_block*,scalar_t__,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC8 (struct inode*) ; 

__attribute__((used)) static struct dentry *FUNC9(struct super_block *sb,
				      struct fuse_inode_handle *handle)
{
	struct fuse_conn *fc = FUNC5(sb);
	struct inode *inode;
	struct dentry *entry;
	int err = -ESTALE;

	if (handle->nodeid == 0)
		goto out_err;

	inode = FUNC7(sb, handle->nodeid, fuse_inode_eq, &handle->nodeid);
	if (!inode) {
		struct fuse_entry_out outarg;
		struct qstr name;

		if (!fc->export_support)
			goto out_err;

		name.len = 1;
		name.name = ".";
		err = FUNC4(sb, handle->nodeid, &name, &outarg,
				       &inode);
		if (err && err != -ENOENT)
			goto out_err;
		if (err || !inode) {
			err = -ESTALE;
			goto out_err;
		}
		err = -EIO;
		if (FUNC6(inode) != handle->nodeid)
			goto out_iput;
	}
	err = -ESTALE;
	if (inode->i_generation != handle->generation)
		goto out_iput;

	entry = FUNC2(inode);
	if (!FUNC1(entry) && FUNC6(inode) != FUSE_ROOT_ID) {
		entry->d_op = &fuse_dentry_operations;
		FUNC3(entry);
	}

	return entry;

 out_iput:
	FUNC8(inode);
 out_err:
	return FUNC0(err);
}