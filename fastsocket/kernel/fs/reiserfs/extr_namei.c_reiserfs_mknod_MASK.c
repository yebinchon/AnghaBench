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
struct reiserfs_security_handle {int dummy; } ;
struct inode {int /*<<< orphan*/  i_sb; int /*<<< orphan*/  i_nlink; int /*<<< orphan*/  i_mode; int /*<<< orphan*/ * i_op; } ;
struct TYPE_2__ {int /*<<< orphan*/  len; int /*<<< orphan*/  name; } ;
struct dentry {TYPE_1__ d_name; } ;
typedef  int /*<<< orphan*/  dev_t ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int JOURNAL_PER_BALANCE_CNT ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct dentry*,struct inode*) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*) ; 
 int FUNC6 (struct reiserfs_transaction_handle*,int /*<<< orphan*/ ,int) ; 
 int FUNC7 (struct reiserfs_transaction_handle*,int /*<<< orphan*/ ,int) ; 
 struct inode* FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct inode*,struct inode*,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int FUNC11 (struct reiserfs_transaction_handle*,struct inode*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct inode*,int) ; 
 scalar_t__ FUNC12 (struct inode*) ; 
 int FUNC13 (struct reiserfs_transaction_handle*,struct inode*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct dentry*,struct inode*,struct reiserfs_security_handle*) ; 
 int FUNC14 (struct inode*,struct inode*,struct reiserfs_security_handle*) ; 
 int /*<<< orphan*/  reiserfs_special_inode_operations ; 
 int /*<<< orphan*/  FUNC15 (struct inode*) ; 
 int /*<<< orphan*/  FUNC16 (struct reiserfs_transaction_handle*,struct inode*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (struct inode*) ; 

__attribute__((used)) static int FUNC20(struct inode *dir, struct dentry *dentry, int mode,
			  dev_t rdev)
{
	int retval;
	struct inode *inode;
	struct reiserfs_transaction_handle th;
	struct reiserfs_security_handle security;
	/* We need blocks for transaction + (user+group)*(quotas for new inode + update of quota for directory owner) */
	int jbegin_count =
	    JOURNAL_PER_BALANCE_CNT * 3 +
	    2 * (FUNC0(dir->i_sb) +
		 FUNC1(dir->i_sb));

	if (!FUNC10(rdev))
		return -EINVAL;

	if (!(inode = FUNC8(dir->i_sb))) {
		return -ENOMEM;
	}
	FUNC9(inode, dir, mode);

	jbegin_count += FUNC12(dir);
	retval = FUNC14(dir, inode, &security);
	if (retval < 0) {
		FUNC3(inode);
		return retval;
	}
	jbegin_count += retval;
	FUNC17(dir->i_sb);

	retval = FUNC6(&th, dir->i_sb, jbegin_count);
	if (retval) {
		FUNC3(inode);
		goto out_failed;
	}

	retval =
	    FUNC13(&th, dir, mode, NULL, 0 /*i_size */ , dentry,
			       inode, &security);
	if (retval) {
		goto out_failed;
	}

	inode->i_op = &reiserfs_special_inode_operations;
	FUNC4(inode, inode->i_mode, rdev);

	//FIXME: needed for block and char devices only
	FUNC16(&th, inode);

	FUNC15(inode);
	FUNC15(dir);

	retval =
	    FUNC11(&th, dir, dentry->d_name.name,
			       dentry->d_name.len, inode, 1 /*visible */ );
	if (retval) {
		int err;
		inode->i_nlink--;
		FUNC16(&th, inode);
		err = FUNC7(&th, dir->i_sb, jbegin_count);
		if (err)
			retval = err;
		FUNC19(inode);
		FUNC5(inode);
		goto out_failed;
	}

	FUNC2(dentry, inode);
	FUNC19(inode);
	retval = FUNC7(&th, dir->i_sb, jbegin_count);

      out_failed:
	FUNC18(dir->i_sb);
	return retval;
}