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
struct inode {scalar_t__ i_ino; int /*<<< orphan*/  i_mtime; int /*<<< orphan*/  i_ctime; scalar_t__ i_size; int /*<<< orphan*/  i_version; int /*<<< orphan*/  i_nlink; int /*<<< orphan*/  i_sb; } ;
struct ext4_dir_entry_2 {int /*<<< orphan*/  inode; } ;
struct dentry {struct inode* d_inode; int /*<<< orphan*/  d_name; } ;
struct buffer_head {int dummy; } ;
typedef  int /*<<< orphan*/  handle_t ;

/* Variables and functions */
 int EIO ; 
 int ENOENT ; 
 int ENOTEMPTY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct inode*) ; 
 scalar_t__ FUNC2 (struct inode*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC6 (struct inode*) ; 
 int /*<<< orphan*/  FUNC7 (struct inode*) ; 
 int /*<<< orphan*/  FUNC8 (struct inode*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,struct inode*) ; 
 int FUNC10 (int /*<<< orphan*/ *,struct inode*,struct ext4_dir_entry_2*,struct buffer_head*) ; 
 struct buffer_head* FUNC11 (struct inode*,int /*<<< orphan*/ *,struct ext4_dir_entry_2**) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC13 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,struct inode*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,struct inode*) ; 
 int /*<<< orphan*/  FUNC17 (struct inode*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC19 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (struct inode*) ; 

__attribute__((used)) static int FUNC21(struct inode *dir, struct dentry *dentry)
{
	int retval;
	struct inode *inode;
	struct buffer_head *bh;
	struct ext4_dir_entry_2 *de;
	handle_t *handle;

	/* Initialize quotas before so that eventual writes go in
	 * separate transaction */
	FUNC20(dentry->d_inode);
	handle = FUNC13(dir, FUNC0(dir->i_sb));
	if (FUNC3(handle))
		return FUNC4(handle);

	retval = -ENOENT;
	bh = FUNC11(dir, &dentry->d_name, &de);
	if (!bh)
		goto end_rmdir;

	if (FUNC2(dir))
		FUNC12(handle);

	inode = dentry->d_inode;

	retval = -EIO;
	if (FUNC19(de->inode) != inode->i_ino)
		goto end_rmdir;

	retval = -ENOTEMPTY;
	if (!FUNC7(inode))
		goto end_rmdir;

	retval = FUNC10(handle, dir, de, bh);
	if (retval)
		goto end_rmdir;
	if (!FUNC1(inode))
		FUNC18(inode->i_sb,
			     "empty directory has too many links (%d)",
			     inode->i_nlink);
	inode->i_version++;
	FUNC6(inode);
	/* There's no need to set i_disksize: the fact that i_nlink is
	 * zero will ensure that the right thing happens during any
	 * recovery. */
	inode->i_size = 0;
	FUNC16(handle, inode);
	inode->i_ctime = dir->i_ctime = dir->i_mtime = FUNC8(inode);
	FUNC15(handle, inode);
	FUNC9(handle, dir);
	FUNC17(dir);
	FUNC15(handle, dir);

end_rmdir:
	FUNC14(handle);
	FUNC5(bh);
	return retval;
}