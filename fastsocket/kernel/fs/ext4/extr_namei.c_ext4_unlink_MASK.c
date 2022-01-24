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
struct inode {scalar_t__ i_ino; int i_nlink; void* i_ctime; void* i_mtime; int /*<<< orphan*/  i_sb; } ;
struct ext4_dir_entry_2 {int /*<<< orphan*/  inode; } ;
struct dentry {struct inode* d_inode; int /*<<< orphan*/  d_name; } ;
struct buffer_head {int dummy; } ;
typedef  int /*<<< orphan*/  handle_t ;

/* Variables and functions */
 int EIO ; 
 int ENOENT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct inode*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*) ; 
 void* FUNC6 (struct inode*) ; 
 int FUNC7 (int /*<<< orphan*/ *,struct inode*,struct ext4_dir_entry_2*,struct buffer_head*) ; 
 struct buffer_head* FUNC8 (struct inode*,int /*<<< orphan*/ *,struct ext4_dir_entry_2**) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC10 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,struct inode*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,struct inode*) ; 
 int /*<<< orphan*/  FUNC14 (struct inode*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,char*,scalar_t__,int) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (struct inode*) ; 

__attribute__((used)) static int FUNC18(struct inode *dir, struct dentry *dentry)
{
	int retval;
	struct inode *inode;
	struct buffer_head *bh;
	struct ext4_dir_entry_2 *de;
	handle_t *handle;

	/* Initialize quotas before so that eventual writes go
	 * in separate transaction */
	FUNC17(dentry->d_inode);
	handle = FUNC10(dir, FUNC0(dir->i_sb));
	if (FUNC2(handle))
		return FUNC3(handle);

	if (FUNC1(dir))
		FUNC9(handle);

	retval = -ENOENT;
	bh = FUNC8(dir, &dentry->d_name, &de);
	if (!bh)
		goto end_unlink;

	inode = dentry->d_inode;

	retval = -EIO;
	if (FUNC16(de->inode) != inode->i_ino)
		goto end_unlink;

	if (!inode->i_nlink) {
		FUNC15(inode->i_sb,
			     "Deleting nonexistent file (%lu), %d",
			     inode->i_ino, inode->i_nlink);
		inode->i_nlink = 1;
	}
	retval = FUNC7(handle, dir, de, bh);
	if (retval)
		goto end_unlink;
	dir->i_ctime = dir->i_mtime = FUNC6(dir);
	FUNC14(dir);
	FUNC12(handle, dir);
	FUNC5(inode);
	if (!inode->i_nlink)
		FUNC13(handle, inode);
	inode->i_ctime = FUNC6(inode);
	FUNC12(handle, inode);
	retval = 0;

end_unlink:
	FUNC11(handle);
	FUNC4(bh);
	return retval;
}