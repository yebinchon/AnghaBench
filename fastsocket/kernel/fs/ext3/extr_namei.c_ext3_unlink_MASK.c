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
struct inode {scalar_t__ i_ino; int i_nlink; int /*<<< orphan*/  i_ctime; int /*<<< orphan*/  i_mtime; int /*<<< orphan*/  i_sb; } ;
struct ext3_dir_entry_2 {int /*<<< orphan*/  inode; } ;
struct dentry {struct inode* d_inode; int /*<<< orphan*/  d_name; } ;
struct buffer_head {int dummy; } ;
struct TYPE_9__ {int h_sync; } ;
typedef  TYPE_1__ handle_t ;

/* Variables and functions */
 int /*<<< orphan*/  CURRENT_TIME_SEC ; 
 int EIO ; 
 int ENOENT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct inode*) ; 
 scalar_t__ FUNC2 (TYPE_1__*) ; 
 int FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*) ; 
 int FUNC6 (TYPE_1__*,struct inode*,struct ext3_dir_entry_2*,struct buffer_head*) ; 
 struct buffer_head* FUNC7 (struct inode*,int /*<<< orphan*/ *,struct ext3_dir_entry_2**) ; 
 TYPE_1__* FUNC8 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,struct inode*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*,struct inode*) ; 
 int /*<<< orphan*/  FUNC12 (struct inode*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,char*,char*,scalar_t__,int) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct inode*,struct dentry*) ; 
 int /*<<< orphan*/  FUNC16 (struct dentry*,int) ; 
 int /*<<< orphan*/  FUNC17 (struct inode*) ; 

__attribute__((used)) static int FUNC18(struct inode * dir, struct dentry *dentry)
{
	int retval;
	struct inode * inode;
	struct buffer_head * bh;
	struct ext3_dir_entry_2 * de;
	handle_t *handle;

	FUNC15(dir, dentry);
	/* Initialize quotas before so that eventual writes go
	 * in separate transaction */
	FUNC17(dentry->d_inode);
	handle = FUNC8(dir, FUNC0(dir->i_sb));
	if (FUNC2(handle))
		return FUNC3(handle);

	if (FUNC1(dir))
		handle->h_sync = 1;

	retval = -ENOENT;
	bh = FUNC7(dir, &dentry->d_name, &de);
	if (!bh)
		goto end_unlink;

	inode = dentry->d_inode;

	retval = -EIO;
	if (FUNC14(de->inode) != inode->i_ino)
		goto end_unlink;

	if (!inode->i_nlink) {
		FUNC13 (inode->i_sb, "ext3_unlink",
			      "Deleting nonexistent file (%lu), %d",
			      inode->i_ino, inode->i_nlink);
		inode->i_nlink = 1;
	}
	retval = FUNC6(handle, dir, de, bh);
	if (retval)
		goto end_unlink;
	dir->i_ctime = dir->i_mtime = CURRENT_TIME_SEC;
	FUNC12(dir);
	FUNC10(handle, dir);
	FUNC5(inode);
	if (!inode->i_nlink)
		FUNC11(handle, inode);
	inode->i_ctime = dir->i_ctime;
	FUNC10(handle, inode);
	retval = 0;

end_unlink:
	FUNC9(handle);
	FUNC4 (bh);
	FUNC16(dentry, retval);
	return retval;
}