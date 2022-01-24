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
struct inode {int h_sync; int /*<<< orphan*/  i_sb; int /*<<< orphan*/ * i_op; int /*<<< orphan*/  i_mode; } ;
struct dentry {int dummy; } ;
typedef  struct inode handle_t ;
typedef  int /*<<< orphan*/  dev_t ;

/* Variables and functions */
 int EINVAL ; 
 int ENOSPC ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ EXT3_INDEX_EXTRA_TRANS_BLOCKS ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct inode*) ; 
 scalar_t__ FUNC3 (struct inode*) ; 
 int FUNC4 (struct inode*) ; 
 int FUNC5 (struct inode*,struct dentry*,struct inode*) ; 
 struct inode* FUNC6 (struct inode*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (struct inode*) ; 
 struct inode* FUNC8 (struct inode*,struct inode*,int) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  ext3_special_inode_operations ; 
 int /*<<< orphan*/  FUNC10 (struct inode*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC12 (struct inode * dir, struct dentry *dentry,
			int mode, dev_t rdev)
{
	handle_t *handle;
	struct inode *inode;
	int err, retries = 0;

	if (!FUNC11(rdev))
		return -EINVAL;

retry:
	handle = FUNC6(dir, FUNC0(dir->i_sb) +
					EXT3_INDEX_EXTRA_TRANS_BLOCKS + 3 +
					2*FUNC1(dir->i_sb));
	if (FUNC3(handle))
		return FUNC4(handle);

	if (FUNC2(dir))
		handle->h_sync = 1;

	inode = FUNC8 (handle, dir, mode);
	err = FUNC4(inode);
	if (!FUNC3(inode)) {
		FUNC10(inode, inode->i_mode, rdev);
#ifdef CONFIG_EXT3_FS_XATTR
		inode->i_op = &ext3_special_inode_operations;
#endif
		err = FUNC5(handle, dentry, inode);
	}
	FUNC7(handle);
	if (err == -ENOSPC && FUNC9(dir->i_sb, &retries))
		goto retry;
	return err;
}