#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_5__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct journal_head {scalar_t__ b_jlist; TYPE_5__* b_transaction; } ;
struct buffer_head {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  j_list_lock; TYPE_5__* j_committing_transaction; } ;
typedef  TYPE_1__ journal_t ;
struct TYPE_7__ {TYPE_5__* h_transaction; } ;
typedef  TYPE_2__ handle_t ;
struct TYPE_8__ {int /*<<< orphan*/  t_tid; TYPE_1__* t_journal; } ;

/* Variables and functions */
 scalar_t__ BJ_Locked ; 
 scalar_t__ BJ_None ; 
 scalar_t__ BJ_Shadow ; 
 scalar_t__ BJ_SyncData ; 
 int /*<<< orphan*/  FUNC0 (struct buffer_head*,char*) ; 
 int EIO ; 
 int /*<<< orphan*/  FUNC1 (struct journal_head*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct journal_head*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC4 (struct journal_head*,TYPE_5__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct journal_head*) ; 
 scalar_t__ FUNC6 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC7 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC8 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC9 (struct buffer_head*) ; 
 scalar_t__ FUNC10 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC11 (int,char*,struct journal_head*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC13 (struct buffer_head*) ; 
 struct journal_head* FUNC14 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC15 (struct journal_head*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (struct buffer_head*) ; 
 scalar_t__ FUNC19 (int) ; 

int FUNC20(handle_t *handle, struct buffer_head *bh)
{
	journal_t *journal = handle->h_transaction->t_journal;
	int need_brelse = 0;
	struct journal_head *jh;
	int ret = 0;

	if (FUNC10(handle))
		return ret;

	jh = FUNC14(bh);
	FUNC1(jh, "entry");

	/*
	 * The buffer could *already* be dirty.  Writeout can start
	 * at any time.
	 */
	FUNC11(4, "jh: %p, tid:%d\n", jh, handle->h_transaction->t_tid);

	/*
	 * What if the buffer is already part of a running transaction?
	 *
	 * There are two cases:
	 * 1) It is part of the current running transaction.  Refile it,
	 *    just in case we have allocated it as metadata, deallocated
	 *    it, then reallocated it as data.
	 * 2) It is part of the previous, still-committing transaction.
	 *    If all we want to do is to guarantee that the buffer will be
	 *    written to disk before this new transaction commits, then
	 *    being sure that the *previous* transaction has this same
	 *    property is sufficient for us!  Just leave it on its old
	 *    transaction.
	 *
	 * In case (2), the buffer must not already exist as metadata
	 * --- that would violate write ordering (a transaction is free
	 * to write its data at any point, even before the previous
	 * committing transaction has committed).  The caller must
	 * never, ever allow this to happen: there's nothing we can do
	 * about it in this layer.
	 */
	FUNC12(bh);
	FUNC16(&journal->j_list_lock);

	/* Now that we have bh_state locked, are we really still mapped? */
	if (!FUNC7(bh)) {
		FUNC1(jh, "unmapped buffer, bailing out");
		goto no_journal;
	}

	if (jh->b_transaction) {
		FUNC1(jh, "has transaction");
		if (jh->b_transaction != handle->h_transaction) {
			FUNC1(jh, "belongs to older transaction");
			FUNC2(jh, jh->b_transaction ==
					journal->j_committing_transaction);

			/* @@@ IS THIS TRUE  ? */
			/*
			 * Not any more.  Scenario: someone does a write()
			 * in data=journal mode.  The buffer's transaction has
			 * moved into commit.  Then someone does another
			 * write() to the file.  We do the frozen data copyout
			 * and set b_next_transaction to point to j_running_t.
			 * And while we're in that state, someone does a
			 * writepage() in an attempt to pageout the same area
			 * of the file via a shared mapping.  At present that
			 * calls journal_dirty_data(), and we get right here.
			 * It may be too late to journal the data.  Simply
			 * falling through to the next test will suffice: the
			 * data will be dirty and wil be checkpointed.  The
			 * ordering comments in the next comment block still
			 * apply.
			 */
			//J_ASSERT_JH(jh, jh->b_next_transaction == NULL);

			/*
			 * If we're journalling data, and this buffer was
			 * subject to a write(), it could be metadata, forget
			 * or shadow against the committing transaction.  Now,
			 * someone has dirtied the same darn page via a mapping
			 * and it is being writepage()'d.
			 * We *could* just steal the page from commit, with some
			 * fancy locking there.  Instead, we just skip it -
			 * don't tie the page's buffers to the new transaction
			 * at all.
			 * Implication: if we crash before the writepage() data
			 * is written into the filesystem, recovery will replay
			 * the write() data.
			 */
			if (jh->b_jlist != BJ_None &&
					jh->b_jlist != BJ_SyncData &&
					jh->b_jlist != BJ_Locked) {
				FUNC1(jh, "Not stealing");
				goto no_journal;
			}

			/*
			 * This buffer may be undergoing writeout in commit.  We
			 * can't return from here and let the caller dirty it
			 * again because that can cause the write-out loop in
			 * commit to never terminate.
			 */
			if (FUNC6(bh)) {
				FUNC9(bh);
				FUNC17(&journal->j_list_lock);
				FUNC13(bh);
				need_brelse = 1;
				FUNC18(bh);
				FUNC12(bh);
				FUNC16(&journal->j_list_lock);
				/* Since we dropped the lock... */
				if (!FUNC7(bh)) {
					FUNC1(jh, "buffer got unmapped");
					goto no_journal;
				}
				/* The buffer may become locked again at any
				   time if it is redirtied */
			}

			/*
			 * We cannot remove the buffer with io error from the
			 * committing transaction, because otherwise it would
			 * miss the error and the commit would not abort.
			 */
			if (FUNC19(!FUNC8(bh))) {
				ret = -EIO;
				goto no_journal;
			}

			if (jh->b_transaction != NULL) {
				FUNC1(jh, "unfile from commit");
				FUNC5(jh);
				/* It still points to the committing
				 * transaction; move it to this one so
				 * that the refile assert checks are
				 * happy. */
				jh->b_transaction = handle->h_transaction;
			}
			/* The buffer will be refiled below */

		}
		/*
		 * Special case --- the buffer might actually have been
		 * allocated and then immediately deallocated in the previous,
		 * committing transaction, so might still be left on that
		 * transaction's metadata lists.
		 */
		if (jh->b_jlist != BJ_SyncData && jh->b_jlist != BJ_Locked) {
			FUNC1(jh, "not on correct data list: unfile");
			FUNC2(jh, jh->b_jlist != BJ_Shadow);
			FUNC5(jh);
			jh->b_transaction = handle->h_transaction;
			FUNC1(jh, "file as data");
			FUNC4(jh, handle->h_transaction,
						BJ_SyncData);
		}
	} else {
		FUNC1(jh, "not on a transaction");
		FUNC4(jh, handle->h_transaction, BJ_SyncData);
	}
no_journal:
	FUNC17(&journal->j_list_lock);
	FUNC13(bh);
	if (need_brelse) {
		FUNC0(bh, "brelse");
		FUNC3(bh);
	}
	FUNC1(jh, "exit");
	FUNC15(jh);
	return ret;
}