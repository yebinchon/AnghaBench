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
struct TYPE_4__ {struct journal_head* t_locked_list; struct journal_head* t_reserved_list; struct journal_head* t_log_list; struct journal_head* t_shadow_list; struct journal_head* t_iobuf_list; struct journal_head* t_forget; struct journal_head* t_buffers; int /*<<< orphan*/  t_nr_buffers; struct journal_head* t_sync_datalist; TYPE_1__* t_journal; } ;
typedef  TYPE_2__ transaction_t ;
struct journal_head {int b_jlist; TYPE_2__* b_transaction; } ;
struct buffer_head {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  j_list_lock; } ;

/* Variables and functions */
#define  BJ_Forget 136 
#define  BJ_IO 135 
#define  BJ_Locked 134 
#define  BJ_LogCtl 133 
#define  BJ_Metadata 132 
#define  BJ_None 131 
#define  BJ_Reserved 130 
#define  BJ_Shadow 129 
#define  BJ_SyncData 128 
 int BJ_Types ; 
 int /*<<< orphan*/  FUNC0 (struct journal_head*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct journal_head**,struct journal_head*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (struct buffer_head*) ; 
 struct buffer_head* FUNC4 (struct journal_head*) ; 
 int /*<<< orphan*/  FUNC5 (struct buffer_head*) ; 
 scalar_t__ FUNC6 (struct buffer_head*) ; 

__attribute__((used)) static void FUNC7(struct journal_head *jh)
{
	struct journal_head **list = NULL;
	transaction_t *transaction;
	struct buffer_head *bh = FUNC4(jh);

	FUNC0(jh, FUNC3(bh));
	transaction = jh->b_transaction;
	if (transaction)
		FUNC2(&transaction->t_journal->j_list_lock);

	FUNC0(jh, jh->b_jlist < BJ_Types);
	if (jh->b_jlist != BJ_None)
		FUNC0(jh, transaction != NULL);

	switch (jh->b_jlist) {
	case BJ_None:
		return;
	case BJ_SyncData:
		list = &transaction->t_sync_datalist;
		break;
	case BJ_Metadata:
		transaction->t_nr_buffers--;
		FUNC0(jh, transaction->t_nr_buffers >= 0);
		list = &transaction->t_buffers;
		break;
	case BJ_Forget:
		list = &transaction->t_forget;
		break;
	case BJ_IO:
		list = &transaction->t_iobuf_list;
		break;
	case BJ_Shadow:
		list = &transaction->t_shadow_list;
		break;
	case BJ_LogCtl:
		list = &transaction->t_log_list;
		break;
	case BJ_Reserved:
		list = &transaction->t_reserved_list;
		break;
	case BJ_Locked:
		list = &transaction->t_locked_list;
		break;
	}

	FUNC1(list, jh);
	jh->b_jlist = BJ_None;
	if (FUNC6(bh))
		FUNC5(bh);	/* Expose it to the VM */
}