#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {int /*<<< orphan*/  zl_spa; int /*<<< orphan*/  zl_os; TYPE_2__* zl_header; } ;
typedef  TYPE_3__ zilog_t ;
typedef  int /*<<< orphan*/  zbookmark_phys_t ;
typedef  int /*<<< orphan*/  u_longlong_t ;
struct TYPE_12__ {int lrc_reclen; } ;
struct TYPE_16__ {scalar_t__ blk_birth; } ;
struct TYPE_15__ {int lr_offset; int lr_length; scalar_t__ lr_foid; TYPE_1__ lr_common; TYPE_5__ lr_blkptr; } ;
typedef  TYPE_4__ lr_write_t ;
typedef  TYPE_5__ blkptr_t ;
typedef  int /*<<< orphan*/  abd_t ;
struct TYPE_13__ {scalar_t__ zh_claim_txg; } ;

/* Variables and functions */
 int FUNC0 (TYPE_5__*) ; 
 scalar_t__ FUNC1 (TYPE_5__*) ; 
 int /*<<< orphan*/  B_FALSE ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int) ; 
 int SPA_MAXBLOCKSIZE ; 
 int TX_WRITE2 ; 
 int /*<<< orphan*/  ZB_ZIL_LEVEL ; 
 int /*<<< orphan*/  ZIO_FLAG_CANFAIL ; 
 int /*<<< orphan*/  ZIO_PRIORITY_SYNC_READ ; 
 int /*<<< orphan*/ * FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,TYPE_4__*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * dump_opt ; 
 int /*<<< orphan*/  FUNC10 (TYPE_5__*,char*) ; 
 int /*<<< orphan*/  FUNC11 (char*,...) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ) ; 
 char* tab_prefix ; 
 int /*<<< orphan*/  zil_prt_rec_write_cb ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_5__*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC14 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC15(zilog_t *zilog, int txtype, void *arg)
{
	lr_write_t *lr = arg;
	abd_t *data;
	blkptr_t *bp = &lr->lr_blkptr;
	zbookmark_phys_t zb;
	int verbose = FUNC2(dump_opt['d'], dump_opt['i']);
	int error;

	(void) FUNC11("%sfoid %llu, offset %llx, length %llx\n", tab_prefix,
	    (u_longlong_t)lr->lr_foid, (u_longlong_t)lr->lr_offset,
	    (u_longlong_t)lr->lr_length);

	if (txtype == TX_WRITE2 || verbose < 5)
		return;

	if (lr->lr_common.lrc_reclen == sizeof (lr_write_t)) {
		(void) FUNC11("%shas blkptr, %s\n", tab_prefix,
		    !FUNC1(bp) &&
		    bp->blk_birth >= FUNC12(zilog->zl_spa) ?
		    "will claim" : "won't claim");
		FUNC10(bp, tab_prefix);

		if (FUNC1(bp)) {
			(void) FUNC11("\t\t\tLSIZE 0x%llx\n",
			    (u_longlong_t)FUNC0(bp));
			(void) FUNC11("%s<hole>\n", tab_prefix);
			return;
		}
		if (bp->blk_birth < zilog->zl_header->zh_claim_txg) {
			(void) FUNC11("%s<block already committed>\n",
			    tab_prefix);
			return;
		}

		FUNC4(&zb, FUNC9(zilog->zl_os),
		    lr->lr_foid, ZB_ZIL_LEVEL,
		    lr->lr_offset / FUNC0(bp));

		data = FUNC5(FUNC0(bp), B_FALSE);
		error = FUNC14(FUNC13(NULL, zilog->zl_spa,
		    bp, data, FUNC0(bp), NULL, NULL,
		    ZIO_PRIORITY_SYNC_READ, ZIO_FLAG_CANFAIL, &zb));
		if (error)
			goto out;
	} else {
		/* data is stored after the end of the lr_write record */
		data = FUNC5(lr->lr_length, B_FALSE);
		FUNC6(data, lr + 1, lr->lr_length);
	}

	(void) FUNC11("%s", tab_prefix);
	(void) FUNC8(data,
	    0, FUNC3(lr->lr_length, (verbose < 6 ? 20 : SPA_MAXBLOCKSIZE)),
	    zil_prt_rec_write_cb, NULL);
	(void) FUNC11("\n");

out:
	FUNC7(data);
}