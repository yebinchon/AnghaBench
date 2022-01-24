#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct reiserfs_transaction_handle {int dummy; } ;
struct inode {scalar_t__ i_nlink; int /*<<< orphan*/  i_sb; int /*<<< orphan*/  i_count; int /*<<< orphan*/  i_ctime; } ;
struct TYPE_2__ {int /*<<< orphan*/  len; int /*<<< orphan*/  name; } ;
struct dentry {TYPE_1__ d_name; struct inode* d_inode; } ;

/* Variables and functions */
 int /*<<< orphan*/  CURRENT_TIME_SEC ; 
 int EMLINK ; 
 int ENOENT ; 
 int JOURNAL_PER_BALANCE_CNT ; 
 scalar_t__ REISERFS_LINK_MAX ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct dentry*,struct inode*) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*) ; 
 int FUNC4 (struct reiserfs_transaction_handle*,int /*<<< orphan*/ ,int) ; 
 int FUNC5 (struct reiserfs_transaction_handle*,int /*<<< orphan*/ ,int) ; 
 int FUNC6 (struct reiserfs_transaction_handle*,struct inode*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct inode*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct inode*) ; 
 int /*<<< orphan*/  FUNC8 (struct reiserfs_transaction_handle*,struct inode*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11(struct dentry *old_dentry, struct inode *dir,
			 struct dentry *dentry)
{
	int retval;
	struct inode *inode = old_dentry->d_inode;
	struct reiserfs_transaction_handle th;
	/* We need blocks for transaction + update of quotas for the owners of the directory */
	int jbegin_count =
	    JOURNAL_PER_BALANCE_CNT * 3 +
	    2 * FUNC0(dir->i_sb);

	FUNC9(dir->i_sb);
	if (inode->i_nlink >= REISERFS_LINK_MAX) {
		//FIXME: sd_nlink is 32 bit for new files
		FUNC10(dir->i_sb);
		return -EMLINK;
	}
	if (inode->i_nlink == 0) {
		FUNC10(dir->i_sb);
		return -ENOENT;
	}

	/* inc before scheduling so reiserfs_unlink knows we are here */
	FUNC3(inode);

	retval = FUNC4(&th, dir->i_sb, jbegin_count);
	if (retval) {
		inode->i_nlink--;
		FUNC10(dir->i_sb);
		return retval;
	}

	/* create new entry */
	retval =
	    FUNC6(&th, dir, dentry->d_name.name,
			       dentry->d_name.len, inode, 1 /*visible */ );

	FUNC7(inode);
	FUNC7(dir);

	if (retval) {
		int err;
		inode->i_nlink--;
		err = FUNC5(&th, dir->i_sb, jbegin_count);
		FUNC10(dir->i_sb);
		return err ? err : retval;
	}

	inode->i_ctime = CURRENT_TIME_SEC;
	FUNC8(&th, inode);

	FUNC1(&inode->i_count);
	FUNC2(dentry, inode);
	retval = FUNC5(&th, dir->i_sb, jbegin_count);
	FUNC10(dir->i_sb);
	return retval;
}