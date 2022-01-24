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
typedef  int /*<<< orphan*/  uncomp ;
typedef  int uint64_t ;
typedef  char* u_longlong_t ;
typedef  int /*<<< orphan*/  objset_t ;
typedef  int /*<<< orphan*/  comp ;
typedef  int /*<<< orphan*/  bytes ;
struct TYPE_2__ {int bpo_num_blkptrs; scalar_t__ bpo_num_subobjs; scalar_t__ bpo_subobjs; int /*<<< orphan*/  bpo_uncomp; int /*<<< orphan*/  bpo_comp; int /*<<< orphan*/  bpo_bytes; } ;
typedef  TYPE_1__ bpobj_phys_t ;
typedef  int /*<<< orphan*/  bp ;
typedef  int /*<<< orphan*/  blkptr_t ;
typedef  int /*<<< orphan*/  blkbuf ;

/* Variables and functions */
 size_t BPOBJ_SIZE_V1 ; 
 int BP_SPRINTF_LEN ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int NN_NUMBUF_SZ ; 
 int FUNC1 (int /*<<< orphan*/ *,int,int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int* dump_opt ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static void
FUNC5(objset_t *os, uint64_t object, void *data, size_t size)
{
	bpobj_phys_t *bpop = data;
	char bytes[32], comp[32], uncomp[32];

	/* make sure the output won't get truncated */
	FUNC0(sizeof (bytes) >= NN_NUMBUF_SZ);
	FUNC0(sizeof (comp) >= NN_NUMBUF_SZ);
	FUNC0(sizeof (uncomp) >= NN_NUMBUF_SZ);

	if (bpop == NULL)
		return;

	FUNC4(bpop->bpo_bytes, bytes, sizeof (bytes));
	FUNC4(bpop->bpo_comp, comp, sizeof (comp));
	FUNC4(bpop->bpo_uncomp, uncomp, sizeof (uncomp));

	(void) FUNC2("\t\tnum_blkptrs = %llu\n",
	    (u_longlong_t)bpop->bpo_num_blkptrs);
	(void) FUNC2("\t\tbytes = %s\n", bytes);
	if (size >= BPOBJ_SIZE_V1) {
		(void) FUNC2("\t\tcomp = %s\n", comp);
		(void) FUNC2("\t\tuncomp = %s\n", uncomp);
	}
	if (size >= sizeof (*bpop)) {
		(void) FUNC2("\t\tsubobjs = %llu\n",
		    (u_longlong_t)bpop->bpo_subobjs);
		(void) FUNC2("\t\tnum_subobjs = %llu\n",
		    (u_longlong_t)bpop->bpo_num_subobjs);
	}

	if (dump_opt['d'] < 5)
		return;

	for (uint64_t i = 0; i < bpop->bpo_num_blkptrs; i++) {
		char blkbuf[BP_SPRINTF_LEN];
		blkptr_t bp;

		int err = FUNC1(os, object,
		    i * sizeof (bp), sizeof (bp), &bp, 0);
		if (err != 0) {
			(void) FUNC2("got error %u from dmu_read\n", err);
			break;
		}
		FUNC3(blkbuf, sizeof (blkbuf), &bp);
		(void) FUNC2("\t%s\n", blkbuf);
	}
}