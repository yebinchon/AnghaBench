#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {TYPE_2__* t_journal; } ;
typedef  TYPE_1__ transaction_t ;
struct page {int dummy; } ;
struct journal_head {char* b_frozen_data; int /*<<< orphan*/ * b_transaction; } ;
struct buffer_head {char* b_data; unsigned int b_blocknr; int /*<<< orphan*/  b_bdev; int /*<<< orphan*/  b_size; struct page* b_page; int /*<<< orphan*/  b_count; scalar_t__ b_state; } ;
struct TYPE_7__ {int /*<<< orphan*/  j_list_lock; int /*<<< orphan*/  j_dev; } ;
typedef  TYPE_2__ journal_t ;
typedef  scalar_t__ __be32 ;

/* Variables and functions */
 int /*<<< orphan*/  BJ_IO ; 
 int /*<<< orphan*/  BJ_Shadow ; 
 int GFP_NOFS ; 
 int /*<<< orphan*/  FUNC0 (struct journal_head*,char*) ; 
 int /*<<< orphan*/  JFS_MAGIC_NUMBER ; 
 int /*<<< orphan*/  FUNC1 (struct buffer_head*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  KM_USER0 ; 
 int __GFP_NOFAIL ; 
 int /*<<< orphan*/  FUNC2 (struct journal_head*,TYPE_1__*,int /*<<< orphan*/ ) ; 
 struct buffer_head* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (struct buffer_head*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct buffer_head*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 char* FUNC8 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC11 (struct buffer_head*) ; 
 struct buffer_head* FUNC12 (struct journal_head*) ; 
 struct journal_head* FUNC13 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC14 (struct journal_head*,TYPE_1__*,int /*<<< orphan*/ ) ; 
 char* FUNC15 (struct page*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (char*,char*,int /*<<< orphan*/ ) ; 
 unsigned int FUNC18 (char*) ; 
 int /*<<< orphan*/  FUNC19 (struct buffer_head*,struct page*,unsigned int) ; 
 int /*<<< orphan*/  FUNC20 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC21 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *) ; 
 struct page* FUNC24 (char*) ; 

int FUNC25(transaction_t *transaction,
				  struct journal_head  *jh_in,
				  struct journal_head **jh_out,
				  unsigned int blocknr)
{
	int need_copy_out = 0;
	int done_copy_out = 0;
	int do_escape = 0;
	char *mapped_data;
	struct buffer_head *new_bh;
	struct journal_head *new_jh;
	struct page *new_page;
	unsigned int new_offset;
	struct buffer_head *bh_in = FUNC12(jh_in);
	journal_t *journal = transaction->t_journal;

	/*
	 * The buffer really shouldn't be locked: only the current committing
	 * transaction is allowed to write it, so nobody else is allowed
	 * to do any IO.
	 *
	 * akpm: except if we're journalling data, and write() output is
	 * also part of a shared mapping, and another thread has
	 * decided to launch a writepage() against this buffer.
	 */
	FUNC1(bh_in, FUNC5(bh_in));

	new_bh = FUNC3(GFP_NOFS|__GFP_NOFAIL);
	/* keep subsequent assertions sane */
	new_bh->b_state = 0;
	FUNC7(new_bh, NULL, NULL);
	FUNC4(&new_bh->b_count, 1);
	new_jh = FUNC13(new_bh);	/* This sleeps */

	/*
	 * If a new transaction has already done a buffer copy-out, then
	 * we use that version of the data for the commit.
	 */
	FUNC10(bh_in);
repeat:
	if (jh_in->b_frozen_data) {
		done_copy_out = 1;
		new_page = FUNC24(jh_in->b_frozen_data);
		new_offset = FUNC18(jh_in->b_frozen_data);
	} else {
		new_page = FUNC12(jh_in)->b_page;
		new_offset = FUNC18(FUNC12(jh_in)->b_data);
	}

	mapped_data = FUNC15(new_page, KM_USER0);
	/*
	 * Check for escaping
	 */
	if (*((__be32 *)(mapped_data + new_offset)) ==
				FUNC6(JFS_MAGIC_NUMBER)) {
		need_copy_out = 1;
		do_escape = 1;
	}
	FUNC16(mapped_data, KM_USER0);

	/*
	 * Do we need to do a data copy?
	 */
	if (need_copy_out && !done_copy_out) {
		char *tmp;

		FUNC11(bh_in);
		tmp = FUNC8(bh_in->b_size, GFP_NOFS);
		FUNC10(bh_in);
		if (jh_in->b_frozen_data) {
			FUNC9(tmp, bh_in->b_size);
			goto repeat;
		}

		jh_in->b_frozen_data = tmp;
		mapped_data = FUNC15(new_page, KM_USER0);
		FUNC17(tmp, mapped_data + new_offset, FUNC12(jh_in)->b_size);
		FUNC16(mapped_data, KM_USER0);

		new_page = FUNC24(tmp);
		new_offset = FUNC18(tmp);
		done_copy_out = 1;
	}

	/*
	 * Did we need to do an escaping?  Now we've done all the
	 * copying, we can finally do so.
	 */
	if (do_escape) {
		mapped_data = FUNC15(new_page, KM_USER0);
		*((unsigned int *)(mapped_data + new_offset)) = 0;
		FUNC16(mapped_data, KM_USER0);
	}

	FUNC19(new_bh, new_page, new_offset);
	new_jh->b_transaction = NULL;
	new_bh->b_size = FUNC12(jh_in)->b_size;
	new_bh->b_bdev = transaction->t_journal->j_dev;
	new_bh->b_blocknr = blocknr;
	FUNC21(new_bh);
	FUNC20(new_bh);

	*jh_out = new_jh;

	/*
	 * The to-be-written buffer needs to get moved to the io queue,
	 * and the original buffer whose contents we are shadowing or
	 * copying is moved to the transaction's shadow queue.
	 */
	FUNC0(jh_in, "file as BJ_Shadow");
	FUNC22(&journal->j_list_lock);
	FUNC2(jh_in, transaction, BJ_Shadow);
	FUNC23(&journal->j_list_lock);
	FUNC11(bh_in);

	FUNC0(new_jh, "file as BJ_IO");
	FUNC14(new_jh, transaction, BJ_IO);

	return do_escape | (done_copy_out << 1);
}