#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct inode {scalar_t__ i_ino; int i_nlink; int /*<<< orphan*/  i_mtime; int /*<<< orphan*/  i_ctime; scalar_t__ i_size; int /*<<< orphan*/  i_version; int /*<<< orphan*/  i_sb; } ;
struct ext3_dir_entry_2 {int /*<<< orphan*/  inode; } ;
struct dentry {struct inode* d_inode; int /*<<< orphan*/  d_name; } ;
struct buffer_head {int dummy; } ;
struct TYPE_9__ {int h_sync; } ;
typedef  TYPE_1__ handle_t ;

/* Variables and functions */
 int /*<<< orphan*/  CURRENT_TIME_SEC ; 
 int EIO ; 
 int ENOENT ; 
 int ENOTEMPTY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct inode*) ; 
 scalar_t__ FUNC2 (TYPE_1__*) ; 
 int FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*) ; 
 int /*<<< orphan*/  FUNC6 (struct inode*) ; 
 int /*<<< orphan*/  FUNC7 (struct inode*) ; 
 int FUNC8 (TYPE_1__*,struct inode*,struct ext3_dir_entry_2*,struct buffer_head*) ; 
 struct buffer_head* FUNC9 (struct inode*,int /*<<< orphan*/ *,struct ext3_dir_entry_2**) ; 
 TYPE_1__* FUNC10 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*,struct inode*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*,struct inode*) ; 
 int /*<<< orphan*/  FUNC14 (struct inode*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,char*,char*,int) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (struct inode*) ; 

__attribute__((used)) static int FUNC18 (struct inode * dir, struct dentry *dentry)
{
	int retval;
	struct inode * inode;
	struct buffer_head * bh;
	struct ext3_dir_entry_2 * de;
	handle_t *handle;

	/* Initialize quotas before so that eventual writes go in
	 * separate transaction */
	FUNC17(dentry->d_inode);
	handle = FUNC10(dir, FUNC0(dir->i_sb));
	if (FUNC2(handle))
		return FUNC3(handle);

	retval = -ENOENT;
	bh = FUNC9(dir, &dentry->d_name, &de);
	if (!bh)
		goto end_rmdir;

	if (FUNC1(dir))
		handle->h_sync = 1;

	inode = dentry->d_inode;

	retval = -EIO;
	if (FUNC16(de->inode) != inode->i_ino)
		goto end_rmdir;

	retval = -ENOTEMPTY;
	if (!FUNC7 (inode))
		goto end_rmdir;

	retval = FUNC8(handle, dir, de, bh);
	if (retval)
		goto end_rmdir;
	if (inode->i_nlink != 2)
		FUNC15 (inode->i_sb, "ext3_rmdir",
			      "empty directory has nlink!=2 (%d)",
			      inode->i_nlink);
	inode->i_version++;
	FUNC5(inode);
	/* There's no need to set i_disksize: the fact that i_nlink is
	 * zero will ensure that the right thing happens during any
	 * recovery. */
	inode->i_size = 0;
	FUNC13(handle, inode);
	inode->i_ctime = dir->i_ctime = dir->i_mtime = CURRENT_TIME_SEC;
	FUNC12(handle, inode);
	FUNC6(dir);
	FUNC14(dir);
	FUNC12(handle, dir);

end_rmdir:
	FUNC11(handle);
	FUNC4 (bh);
	return retval;
}