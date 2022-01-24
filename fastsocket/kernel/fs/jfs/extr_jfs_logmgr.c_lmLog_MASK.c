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
struct tlock {int type; struct metapage* mp; } ;
struct tblock {int lsn; int /*<<< orphan*/  synclist; } ;
struct metapage {int lsn; int /*<<< orphan*/  synclist; struct jfs_log* log; } ;
struct lrd {int dummy; } ;
struct jfs_log {int lsn; int nextsync; int /*<<< orphan*/  count; int /*<<< orphan*/  synclist; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct jfs_log*,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (struct jfs_log*,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (struct jfs_log*) ; 
 int /*<<< orphan*/  FUNC3 (struct jfs_log*) ; 
 int /*<<< orphan*/  FUNC4 (char*,struct jfs_log*,struct tblock*,struct lrd*,struct tlock*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC8 (struct jfs_log*,int /*<<< orphan*/ ) ; 
 int FUNC9 (struct jfs_log*,struct tblock*,struct lrd*,struct tlock*) ; 
 int /*<<< orphan*/  FUNC10 (int,int,struct jfs_log*) ; 
 int tlckBTROOT ; 

int FUNC11(struct jfs_log * log, struct tblock * tblk, struct lrd * lrd,
	  struct tlock * tlck)
{
	int lsn;
	int diffp, difft;
	struct metapage *mp = NULL;
	unsigned long flags;

	FUNC4("lmLog: log:0x%p tblk:0x%p, lrd:0x%p tlck:0x%p",
		 log, tblk, lrd, tlck);

	FUNC2(log);

	/* log by (out-of-transaction) JFS ? */
	if (tblk == NULL)
		goto writeRecord;

	/* log from page ? */
	if (tlck == NULL ||
	    tlck->type & tlckBTROOT || (mp = tlck->mp) == NULL)
		goto writeRecord;

	/*
	 *	initialize/update page/transaction recovery lsn
	 */
	lsn = log->lsn;

	FUNC0(log, flags);

	/*
	 * initialize page lsn if first log write of the page
	 */
	if (mp->lsn == 0) {
		mp->log = log;
		mp->lsn = lsn;
		log->count++;

		/* insert page at tail of logsynclist */
		FUNC6(&mp->synclist, &log->synclist);
	}

	/*
	 *	initialize/update lsn of tblock of the page
	 *
	 * transaction inherits oldest lsn of pages associated
	 * with allocation/deallocation of resources (their
	 * log records are used to reconstruct allocation map
	 * at recovery time: inode for inode allocation map,
	 * B+-tree index of extent descriptors for block
	 * allocation map);
	 * allocation map pages inherit transaction lsn at
	 * commit time to allow forwarding log syncpt past log
	 * records associated with allocation/deallocation of
	 * resources only after persistent map of these map pages
	 * have been updated and propagated to home.
	 */
	/*
	 * initialize transaction lsn:
	 */
	if (tblk->lsn == 0) {
		/* inherit lsn of its first page logged */
		tblk->lsn = mp->lsn;
		log->count++;

		/* insert tblock after the page on logsynclist */
		FUNC5(&tblk->synclist, &mp->synclist);
	}
	/*
	 * update transaction lsn:
	 */
	else {
		/* inherit oldest/smallest lsn of page */
		FUNC10(diffp, mp->lsn, log);
		FUNC10(difft, tblk->lsn, log);
		if (diffp < difft) {
			/* update tblock lsn with page lsn */
			tblk->lsn = mp->lsn;

			/* move tblock after page on logsynclist */
			FUNC7(&tblk->synclist, &mp->synclist);
		}
	}

	FUNC1(log, flags);

	/*
	 *	write the log record
	 */
      writeRecord:
	lsn = FUNC9(log, tblk, lrd, tlck);

	/*
	 * forward log syncpt if log reached next syncpt trigger
	 */
	FUNC10(diffp, lsn, log);
	if (diffp >= log->nextsync)
		lsn = FUNC8(log, 0);

	/* update end-of-log lsn */
	log->lsn = lsn;

	FUNC3(log);

	/* return end-of-log address */
	return lsn;
}