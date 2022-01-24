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
struct inode {int i_state; int /*<<< orphan*/  i_sb; scalar_t__ i_blocks; int /*<<< orphan*/  i_data; } ;
struct TYPE_2__ {scalar_t__ k_objectid; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct inode*) ; 
 int I_NEW ; 
 int JOURNAL_PER_BALANCE_CNT ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*) ; 
 scalar_t__ FUNC3 (struct reiserfs_transaction_handle*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC4 (struct reiserfs_transaction_handle*,int /*<<< orphan*/ ,int) ; 
 int FUNC5 (struct reiserfs_transaction_handle*,struct inode*) ; 
 int /*<<< orphan*/  FUNC6 (struct inode*) ; 
 int /*<<< orphan*/  FUNC7 (struct reiserfs_transaction_handle*,struct inode*) ; 
 int /*<<< orphan*/  FUNC8 (struct inode*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct inode*) ; 

void FUNC14(struct inode *inode)
{
	/* We need blocks for transaction + (user+group) quota update (possibly delete) */
	int jbegin_count =
	    JOURNAL_PER_BALANCE_CNT * 2 +
	    2 * FUNC1(inode->i_sb);
	struct reiserfs_transaction_handle th;
	int err;

	FUNC12(&inode->i_data, 0);

	FUNC9(inode->i_sb);

	/* The = 0 happens when we abort creating a new inode for some reason like lack of space.. */
	if (!(inode->i_state & I_NEW) && FUNC0(inode)->k_objectid != 0) {	/* also handles bad_inode case */
		FUNC6(inode);

		if (FUNC3(&th, inode->i_sb, jbegin_count))
			goto out;
		FUNC8(inode);

		FUNC7(&th, inode);

		err = FUNC5(&th, inode);

		/* Do quota update inside a transaction for journaled quotas. We must do that
		 * after delete_object so that quota updates go into the same transaction as
		 * stat data deletion */
		if (!err) 
			FUNC13(inode);

		if (FUNC4(&th, inode->i_sb, jbegin_count))
			goto out;

		/* check return value from reiserfs_delete_object after
		 * ending the transaction
		 */
		if (err)
		    goto out;

		/* all items of file are deleted, so we can remove "save" link */
		FUNC11(inode, 0 /* not truncate */ );	/* we can't do anything
								 * about an error here */
	} else {
		/* no object items are in the tree */
		;
	}
      out:
	FUNC2(inode);	/* note this must go after the journal_end to prevent deadlock */
	inode->i_blocks = 0;
	FUNC10(inode->i_sb);
}