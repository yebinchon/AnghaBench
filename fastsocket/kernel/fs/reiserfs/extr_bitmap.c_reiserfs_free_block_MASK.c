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
struct super_block {int dummy; } ;
struct reiserfs_transaction_handle {struct super_block* t_super; int /*<<< orphan*/  t_trans_id; } ;
struct inode {int dummy; } ;
typedef  scalar_t__ b_blocknr_t ;
struct TYPE_2__ {int /*<<< orphan*/  s_rs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 TYPE_1__* FUNC1 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct reiserfs_transaction_handle*,struct inode*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC4 (struct super_block*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC5 (struct reiserfs_transaction_handle*,struct super_block*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct super_block*,char*,char*,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 

void FUNC8(struct reiserfs_transaction_handle *th,
			 struct inode *inode, b_blocknr_t block,
			 int for_unformatted)
{
	struct super_block *s = th->t_super;
	FUNC0(!th->t_trans_id);

	FUNC2(!s, "vs-4061: trying to free block on nonexistent device");
	if (!FUNC4(s, block, 1))
		return;

	if (block > FUNC7(FUNC1(s)->s_rs)) {
		FUNC6(th->t_super, "bitmap-4072",
			       "Trying to free block outside file system "
			       "boundaries (%lu > %lu)",
			       block, FUNC7(FUNC1(s)->s_rs));
		return;
	}
	/* mark it before we clear it, just in case */
	FUNC5(th, s, block);
	FUNC3(th, inode, block, for_unformatted);
}