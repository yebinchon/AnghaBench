#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ sync; } ;
struct TYPE_6__ {TYPE_1__ syncpt; } ;
struct lrd {TYPE_2__ log; scalar_t__ length; void* type; scalar_t__ backchain; scalar_t__ logtid; } ;
struct logsuper {void* end; void* state; } ;
struct TYPE_8__ {void* eor; } ;
struct TYPE_7__ {void* eor; } ;
struct logpage {TYPE_4__ t; TYPE_3__ h; } ;
struct lbuf {scalar_t__ l_ldata; int /*<<< orphan*/  l_eor; } ;
struct jfs_log {int /*<<< orphan*/  eor; int /*<<< orphan*/  page; struct lbuf* bp; } ;

/* Variables and functions */
 int LOGREDONE ; 
 int /*<<< orphan*/  LOG_SYNCPT ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 void* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct jfs_log*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct jfs_log*,struct lbuf*,int) ; 
 int /*<<< orphan*/  lbmFREE ; 
 int FUNC6 (struct lbuf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct jfs_log*) ; 
 int lbmRELEASE ; 
 int FUNC8 (struct jfs_log*,int,struct lbuf**) ; 
 int lbmSYNC ; 
 int lbmWRITE ; 
 int /*<<< orphan*/  FUNC9 (struct jfs_log*,struct lbuf*,int,int /*<<< orphan*/ ) ; 
 int FUNC10 (struct jfs_log*,int /*<<< orphan*/ *,struct lrd*,int /*<<< orphan*/ *) ; 

int FUNC11(struct jfs_log * log)
{
	int rc;
	struct lrd lrd;
	int lsn;
	struct logsuper *logsuper;
	struct lbuf *bpsuper;
	struct lbuf *bp;
	struct logpage *lp;

	FUNC3("lmLogShutdown: log:0x%p", log);

	FUNC2(log, 2);

	/*
	 * write the last SYNCPT record with syncpoint = 0
	 * (i.e., log redo up to HERE !)
	 */
	lrd.logtid = 0;
	lrd.backchain = 0;
	lrd.type = FUNC0(LOG_SYNCPT);
	lrd.length = 0;
	lrd.log.syncpt.sync = 0;

	lsn = FUNC10(log, NULL, &lrd, NULL);
	bp = log->bp;
	lp = (struct logpage *) bp->l_ldata;
	lp->h.eor = lp->t.eor = FUNC0(bp->l_eor);
	FUNC9(log, log->bp, lbmWRITE | lbmRELEASE | lbmSYNC, 0);
	FUNC6(log->bp, lbmFREE);
	log->bp = NULL;

	/*
	 * synchronous update log superblock
	 * mark log state as shutdown cleanly
	 * (i.e., Log does not need to be replayed).
	 */
	if ((rc = FUNC8(log, 1, &bpsuper)))
		goto out;

	logsuper = (struct logsuper *) bpsuper->l_ldata;
	logsuper->state = FUNC1(LOGREDONE);
	logsuper->end = FUNC1(lsn);
	FUNC5(log, bpsuper, lbmWRITE | lbmRELEASE | lbmSYNC);
	rc = FUNC6(bpsuper, lbmFREE);

	FUNC3("lmLogShutdown: lsn:0x%x page:%d eor:%d",
		 lsn, log->page, log->eor);

      out:
	/*
	 * shutdown per log i/o
	 */
	FUNC7(log);

	if (rc) {
		FUNC4("lmLogShutdown: exit(%d)", rc);
	}
	return rc;
}