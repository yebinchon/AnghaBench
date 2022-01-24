#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct reiserfs_transaction_handle {int dummy; } ;
struct reiserfs_security_handle {int dummy; } ;
struct inode {TYPE_3__* i_sb; int /*<<< orphan*/  i_nlink; TYPE_1__* i_mapping; int /*<<< orphan*/ * i_op; } ;
struct TYPE_11__ {int /*<<< orphan*/  len; int /*<<< orphan*/  name; } ;
struct dentry {TYPE_2__ d_name; } ;
struct TYPE_12__ {int /*<<< orphan*/  s_blocksize; } ;
struct TYPE_10__ {int /*<<< orphan*/ * a_ops; } ;

/* Variables and functions */
 int ENAMETOOLONG ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 int JOURNAL_PER_BALANCE_CNT ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (TYPE_3__*) ; 
 int FUNC2 (TYPE_3__*) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int S_IFLNK ; 
 int S_IRWXUGO ; 
 int /*<<< orphan*/  FUNC4 (struct dentry*,struct inode*) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*) ; 
 int /*<<< orphan*/  FUNC6 (struct inode*) ; 
 int FUNC7 (struct reiserfs_transaction_handle*,TYPE_3__*,int) ; 
 int FUNC8 (struct reiserfs_transaction_handle*,TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 char* FUNC10 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (char*,char const*,int /*<<< orphan*/ ) ; 
 struct inode* FUNC12 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC13 (struct inode*,struct inode*,int) ; 
 int /*<<< orphan*/  FUNC14 (char*,int,int /*<<< orphan*/ ) ; 
 int FUNC15 (struct reiserfs_transaction_handle*,struct inode*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct inode*,int) ; 
 int /*<<< orphan*/  reiserfs_address_space_operations ; 
 int FUNC16 (struct reiserfs_transaction_handle*,struct inode*,int,char*,int /*<<< orphan*/ ,struct dentry*,struct inode*,struct reiserfs_security_handle*) ; 
 int FUNC17 (struct inode*,struct inode*,struct reiserfs_security_handle*) ; 
 int /*<<< orphan*/  reiserfs_symlink_inode_operations ; 
 int /*<<< orphan*/  FUNC18 (struct inode*) ; 
 int /*<<< orphan*/  FUNC19 (struct reiserfs_transaction_handle*,struct inode*) ; 
 int /*<<< orphan*/  FUNC20 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC21 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC22 (char const*) ; 
 int /*<<< orphan*/  FUNC23 (struct inode*) ; 

__attribute__((used)) static int FUNC24(struct inode *parent_dir,
			    struct dentry *dentry, const char *symname)
{
	int retval;
	struct inode *inode;
	char *name;
	int item_len;
	struct reiserfs_transaction_handle th;
	struct reiserfs_security_handle security;
	int mode = S_IFLNK | S_IRWXUGO;
	/* We need blocks for transaction + (user+group)*(quotas for new inode + update of quota for directory owner) */
	int jbegin_count =
	    JOURNAL_PER_BALANCE_CNT * 3 +
	    2 * (FUNC1(parent_dir->i_sb) +
		 FUNC2(parent_dir->i_sb));

	if (!(inode = FUNC12(parent_dir->i_sb))) {
		return -ENOMEM;
	}
	FUNC13(inode, parent_dir, mode);

	retval = FUNC17(parent_dir, inode, &security);
	if (retval < 0) {
		FUNC5(inode);
		return retval;
	}
	jbegin_count += retval;

	FUNC20(parent_dir->i_sb);
	item_len = FUNC3(FUNC22(symname));
	if (item_len > FUNC0(parent_dir->i_sb->s_blocksize)) {
		retval = -ENAMETOOLONG;
		FUNC5(inode);
		goto out_failed;
	}

	name = FUNC10(item_len, GFP_NOFS);
	if (!name) {
		FUNC5(inode);
		retval = -ENOMEM;
		goto out_failed;
	}
	FUNC11(name, symname, FUNC22(symname));
	FUNC14(name, item_len, FUNC22(symname));

	retval = FUNC7(&th, parent_dir->i_sb, jbegin_count);
	if (retval) {
		FUNC5(inode);
		FUNC9(name);
		goto out_failed;
	}

	retval =
	    FUNC16(&th, parent_dir, mode, name, FUNC22(symname),
			       dentry, inode, &security);
	FUNC9(name);
	if (retval) {		/* reiserfs_new_inode iputs for us */
		goto out_failed;
	}

	FUNC18(inode);
	FUNC18(parent_dir);

	inode->i_op = &reiserfs_symlink_inode_operations;
	inode->i_mapping->a_ops = &reiserfs_address_space_operations;

	// must be sure this inode is written with this transaction
	//
	//reiserfs_update_sd (&th, inode, READ_BLOCKS);

	retval = FUNC15(&th, parent_dir, dentry->d_name.name,
				    dentry->d_name.len, inode, 1 /*visible */ );
	if (retval) {
		int err;
		inode->i_nlink--;
		FUNC19(&th, inode);
		err = FUNC8(&th, parent_dir->i_sb, jbegin_count);
		if (err)
			retval = err;
		FUNC23(inode);
		FUNC6(inode);
		goto out_failed;
	}

	FUNC4(dentry, inode);
	FUNC23(inode);
	retval = FUNC8(&th, parent_dir->i_sb, jbegin_count);
      out_failed:
	FUNC21(parent_dir->i_sb);
	return retval;
}