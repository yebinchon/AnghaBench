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
struct tblock {int flag; int xflag; int /*<<< orphan*/  gcwait; } ;
struct jfs_log {int cflag; int /*<<< orphan*/  gcrtc; int /*<<< orphan*/  flag; int /*<<< orphan*/  cqueue; } ;

/* Variables and functions */
 int COMMIT_LAZY ; 
 int EIO ; 
 int /*<<< orphan*/  FUNC0 (struct jfs_log*) ; 
 int /*<<< orphan*/  FUNC1 (struct jfs_log*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,struct tblock*,int /*<<< orphan*/ ) ; 
 scalar_t__ jfs_tlocks_low ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct jfs_log*,int /*<<< orphan*/ ) ; 
 int logGC_PAGEOUT ; 
 int /*<<< orphan*/  log_FLUSH ; 
 int tblkGC_COMMITTED ; 
 int tblkGC_ERROR ; 
 int tblkGC_LAZY ; 
 int tblkGC_READY ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int FUNC7(struct jfs_log * log, struct tblock * tblk)
{
	int rc = 0;

	FUNC0(log);

	/* group committed already ? */
	if (tblk->flag & tblkGC_COMMITTED) {
		if (tblk->flag & tblkGC_ERROR)
			rc = -EIO;

		FUNC1(log);
		return rc;
	}
	FUNC3("lmGroup Commit: tblk = 0x%p, gcrtc = %d", tblk, log->gcrtc);

	if (tblk->xflag & COMMIT_LAZY)
		tblk->flag |= tblkGC_LAZY;

	if ((!(log->cflag & logGC_PAGEOUT)) && (!FUNC4(&log->cqueue)) &&
	    (!(tblk->xflag & COMMIT_LAZY) || FUNC6(log_FLUSH, &log->flag)
	     || jfs_tlocks_low)) {
		/*
		 * No pageout in progress
		 *
		 * start group commit as its group leader.
		 */
		log->cflag |= logGC_PAGEOUT;

		FUNC5(log, 0);
	}

	if (tblk->xflag & COMMIT_LAZY) {
		/*
		 * Lazy transactions can leave now
		 */
		FUNC1(log);
		return 0;
	}

	/* lmGCwrite gives up LOGGC_LOCK, check again */

	if (tblk->flag & tblkGC_COMMITTED) {
		if (tblk->flag & tblkGC_ERROR)
			rc = -EIO;

		FUNC1(log);
		return rc;
	}

	/* upcount transaction waiting for completion
	 */
	log->gcrtc++;
	tblk->flag |= tblkGC_READY;

	FUNC2(tblk->gcwait, (tblk->flag & tblkGC_COMMITTED),
		     FUNC0(log), FUNC1(log));

	/* removed from commit queue */
	if (tblk->flag & tblkGC_ERROR)
		rc = -EIO;

	FUNC1(log);
	return rc;
}