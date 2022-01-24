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
struct inode {int /*<<< orphan*/  i_sb; int /*<<< orphan*/ * i_fop; int /*<<< orphan*/ * i_op; } ;
struct dentry {int /*<<< orphan*/  d_name; } ;
typedef  struct inode handle_t ;

/* Variables and functions */
 int ENOSPC ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ EXT4_INDEX_EXTRA_TRANS_BLOCKS ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct inode*) ; 
 scalar_t__ FUNC3 (struct inode*) ; 
 int FUNC4 (struct inode*) ; 
 int FUNC5 (struct inode*,struct dentry*,struct inode*) ; 
 int /*<<< orphan*/  ext4_file_inode_operations ; 
 int /*<<< orphan*/  ext4_file_operations ; 
 int /*<<< orphan*/  FUNC6 (struct inode*) ; 
 struct inode* FUNC7 (struct inode*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (struct inode*) ; 
 struct inode* FUNC9 (struct inode*,struct inode*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct inode*) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,int*) ; 

__attribute__((used)) static int FUNC12(struct inode *dir, struct dentry *dentry, int mode,
		       struct nameidata *nd)
{
	handle_t *handle;
	struct inode *inode;
	int err, retries = 0;

retry:
	handle = FUNC7(dir, FUNC0(dir->i_sb) +
					EXT4_INDEX_EXTRA_TRANS_BLOCKS + 3 +
					FUNC1(dir->i_sb));
	if (FUNC3(handle))
		return FUNC4(handle);

	if (FUNC2(dir))
		FUNC6(handle);

	inode = FUNC9(handle, dir, mode, &dentry->d_name, 0);
	err = FUNC4(inode);
	if (!FUNC3(inode)) {
		inode->i_op = &ext4_file_inode_operations;
		inode->i_fop = &ext4_file_operations;
		FUNC10(inode);
		err = FUNC5(handle, dentry, inode);
	}
	FUNC8(handle);
	if (err == -ENOSPC && FUNC11(dir->i_sb, &retries))
		goto retry;
	return err;
}