#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  zl_spa; } ;
typedef  TYPE_2__ zilog_t ;
typedef  scalar_t__ uint64_t ;
typedef  int /*<<< orphan*/  u_longlong_t ;
struct TYPE_7__ {scalar_t__* zc_word; } ;
struct TYPE_9__ {scalar_t__ blk_birth; TYPE_1__ blk_cksum; } ;
typedef  TYPE_3__ blkptr_t ;
typedef  int /*<<< orphan*/  blkbuf ;

/* Variables and functions */
 int /*<<< orphan*/  BP_SPRINTF_LEN ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 size_t ZIL_ZC_SEQ ; 
 int /*<<< orphan*/ * dump_opt ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,char const*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,TYPE_3__*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 
 int FUNC5 (char*) ; 

__attribute__((used)) static int
FUNC6(zilog_t *zilog, blkptr_t *bp, void *arg, uint64_t claim_txg)
{
	char blkbuf[BP_SPRINTF_LEN + 10];
	int verbose = FUNC0(dump_opt['d'], dump_opt['i']);
	const char *claim;

	if (verbose <= 3)
		return (0);

	if (verbose >= 5) {
		(void) FUNC4(blkbuf, ", ");
		FUNC2(blkbuf + FUNC5(blkbuf),
		    sizeof (blkbuf) - FUNC5(blkbuf), bp);
	} else {
		blkbuf[0] = '\0';
	}

	if (claim_txg != 0)
		claim = "already claimed";
	else if (bp->blk_birth >= FUNC3(zilog->zl_spa))
		claim = "will claim";
	else
		claim = "won't claim";

	(void) FUNC1("\tBlock seqno %llu, %s%s\n",
	    (u_longlong_t)bp->blk_cksum.zc_word[ZIL_ZC_SEQ], claim, blkbuf);

	return (0);
}