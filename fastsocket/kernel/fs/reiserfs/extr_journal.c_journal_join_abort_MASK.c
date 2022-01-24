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
struct reiserfs_transaction_handle {int t_refcount; struct reiserfs_transaction_handle* t_handle_save; } ;
struct TYPE_2__ {struct reiserfs_transaction_handle* journal_info; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  JBEGIN_ABORT ; 
 TYPE_1__* current ; 
 int FUNC1 (struct reiserfs_transaction_handle*,struct super_block*,unsigned long,int /*<<< orphan*/ ) ; 

int FUNC2(struct reiserfs_transaction_handle *th,
		       struct super_block *sb, unsigned long nblocks)
{
	struct reiserfs_transaction_handle *cur_th = current->journal_info;

	/* this keeps do_journal_end from NULLing out the current->journal_info
	 ** pointer
	 */
	th->t_handle_save = cur_th;
	FUNC0(cur_th && cur_th->t_refcount > 1);
	return FUNC1(th, sb, nblocks, JBEGIN_ABORT);
}