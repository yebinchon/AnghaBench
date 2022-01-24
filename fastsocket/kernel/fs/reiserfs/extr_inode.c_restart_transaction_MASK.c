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
struct treepath {int dummy; } ;
struct super_block {int dummy; } ;
struct reiserfs_transaction_handle {int t_blocks_allocated; int t_refcount; int /*<<< orphan*/  t_trans_id; struct super_block* t_super; } ;
struct inode {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int JOURNAL_PER_BALANCE_CNT ; 
 int FUNC1 (struct reiserfs_transaction_handle*,struct super_block*,int) ; 
 int FUNC2 (struct reiserfs_transaction_handle*,struct super_block*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct treepath*) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*) ; 
 int /*<<< orphan*/  FUNC5 (struct reiserfs_transaction_handle*,struct inode*) ; 

__attribute__((used)) static int FUNC6(struct reiserfs_transaction_handle *th,
			       struct inode *inode, struct treepath *path)
{
	struct super_block *s = th->t_super;
	int len = th->t_blocks_allocated;
	int err;

	FUNC0(!th->t_trans_id);
	FUNC0(!th->t_refcount);

	FUNC3(path);

	/* we cannot restart while nested */
	if (th->t_refcount > 1) {
		return 0;
	}
	FUNC5(th, inode);
	err = FUNC2(th, s, len);
	if (!err) {
		err = FUNC1(th, s, JOURNAL_PER_BALANCE_CNT * 6);
		if (!err)
			FUNC4(inode);
	}
	return err;
}