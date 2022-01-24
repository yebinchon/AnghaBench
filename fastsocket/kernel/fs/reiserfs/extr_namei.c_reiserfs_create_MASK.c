#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct reiserfs_transaction_handle {int dummy; } ;
struct reiserfs_security_handle {int dummy; } ;
struct nameidata {int dummy; } ;
struct inode {int /*<<< orphan*/  i_sb; int /*<<< orphan*/  i_nlink; TYPE_1__* i_mapping; int /*<<< orphan*/ * i_fop; int /*<<< orphan*/ * i_op; } ;
struct TYPE_4__ {int /*<<< orphan*/  len; int /*<<< orphan*/  name; } ;
struct dentry {TYPE_2__ d_name; } ;
struct TYPE_3__ {int /*<<< orphan*/ * a_ops; } ;

/* Variables and functions */
 int ENOMEM ; 
 int JOURNAL_PER_BALANCE_CNT ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct dentry*,struct inode*) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*) ; 
 int FUNC5 (struct reiserfs_transaction_handle*,int /*<<< orphan*/ ,int) ; 
 int FUNC6 (struct reiserfs_transaction_handle*,int /*<<< orphan*/ ,int) ; 
 struct inode* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct inode*,struct inode*,int) ; 
 int FUNC9 (struct reiserfs_transaction_handle*,struct inode*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct inode*,int) ; 
 int /*<<< orphan*/  reiserfs_address_space_operations ; 
 scalar_t__ FUNC10 (struct inode*) ; 
 int /*<<< orphan*/  reiserfs_file_inode_operations ; 
 int /*<<< orphan*/  reiserfs_file_operations ; 
 int FUNC11 (struct reiserfs_transaction_handle*,struct inode*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct dentry*,struct inode*,struct reiserfs_security_handle*) ; 
 int FUNC12 (struct inode*,struct inode*,struct reiserfs_security_handle*) ; 
 int /*<<< orphan*/  FUNC13 (struct inode*) ; 
 int /*<<< orphan*/  FUNC14 (struct reiserfs_transaction_handle*,struct inode*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (struct inode*) ; 

__attribute__((used)) static int FUNC18(struct inode *dir, struct dentry *dentry, int mode,
			   struct nameidata *nd)
{
	int retval;
	struct inode *inode;
	/* We need blocks for transaction + (user+group)*(quotas for new inode + update of quota for directory owner) */
	int jbegin_count =
	    JOURNAL_PER_BALANCE_CNT * 2 +
	    2 * (FUNC0(dir->i_sb) +
		 FUNC1(dir->i_sb));
	struct reiserfs_transaction_handle th;
	struct reiserfs_security_handle security;

	if (!(inode = FUNC7(dir->i_sb))) {
		return -ENOMEM;
	}
	FUNC8(inode, dir, mode);

	jbegin_count += FUNC10(dir);
	retval = FUNC12(dir, inode, &security);
	if (retval < 0) {
		FUNC3(inode);
		return retval;
	}
	jbegin_count += retval;
	FUNC15(dir->i_sb);

	retval = FUNC5(&th, dir->i_sb, jbegin_count);
	if (retval) {
		FUNC3(inode);
		goto out_failed;
	}

	retval =
	    FUNC11(&th, dir, mode, NULL, 0 /*i_size */ , dentry,
			       inode, &security);
	if (retval)
		goto out_failed;

	inode->i_op = &reiserfs_file_inode_operations;
	inode->i_fop = &reiserfs_file_operations;
	inode->i_mapping->a_ops = &reiserfs_address_space_operations;

	retval =
	    FUNC9(&th, dir, dentry->d_name.name,
			       dentry->d_name.len, inode, 1 /*visible */ );
	if (retval) {
		int err;
		inode->i_nlink--;
		FUNC14(&th, inode);
		err = FUNC6(&th, dir->i_sb, jbegin_count);
		if (err)
			retval = err;
		FUNC17(inode);
		FUNC4(inode);
		goto out_failed;
	}
	FUNC13(inode);
	FUNC13(dir);

	FUNC2(dentry, inode);
	FUNC17(inode);
	retval = FUNC6(&th, dir->i_sb, jbegin_count);

      out_failed:
	FUNC16(dir->i_sb);
	return retval;
}