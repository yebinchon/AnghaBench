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
struct inode {scalar_t__ i_nlink; int /*<<< orphan*/  i_sb; int /*<<< orphan*/  i_count; int /*<<< orphan*/  i_ctime; } ;
struct dentry {struct inode* d_inode; } ;
typedef  int /*<<< orphan*/  handle_t ;

/* Variables and functions */
 int EMLINK ; 
 int ENOENT ; 
 int ENOSPC ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ EXT4_INDEX_EXTRA_TRANS_BLOCKS ; 
 scalar_t__ EXT4_LINK_MAX ; 
 scalar_t__ FUNC1 (struct inode*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct dentry*,struct inode*) ; 
 int /*<<< orphan*/  FUNC6 (struct inode*) ; 
 int FUNC7 (int /*<<< orphan*/ *,struct dentry*,struct inode*) ; 
 int /*<<< orphan*/  FUNC8 (struct inode*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,struct inode*) ; 
 int /*<<< orphan*/ * FUNC11 (struct inode*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,struct inode*) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC15 (struct inode*) ; 

__attribute__((used)) static int FUNC16(struct dentry *old_dentry,
		     struct inode *dir, struct dentry *dentry)
{
	handle_t *handle;
	struct inode *inode = old_dentry->d_inode;
	int err, retries = 0;

	if (inode->i_nlink >= EXT4_LINK_MAX)
		return -EMLINK;

	/*
	 * Return -ENOENT if we've raced with unlink and i_nlink is 0.  Doing
	 * otherwise has the potential to corrupt the orphan inode list.
	 */
	if (inode->i_nlink == 0)
		return -ENOENT;

retry:
	handle = FUNC11(dir, FUNC0(dir->i_sb) +
					EXT4_INDEX_EXTRA_TRANS_BLOCKS);
	if (FUNC2(handle))
		return FUNC3(handle);

	if (FUNC1(dir))
		FUNC9(handle);

	inode->i_ctime = FUNC8(inode);
	FUNC10(handle, inode);
	FUNC4(&inode->i_count);

	err = FUNC7(handle, dentry, inode);
	if (!err) {
		FUNC13(handle, inode);
		FUNC5(dentry, inode);
	} else {
		FUNC6(inode);
		FUNC15(inode);
	}
	FUNC12(handle);
	if (err == -ENOSPC && FUNC14(dir->i_sb, &retries))
		goto retry;
	return err;
}