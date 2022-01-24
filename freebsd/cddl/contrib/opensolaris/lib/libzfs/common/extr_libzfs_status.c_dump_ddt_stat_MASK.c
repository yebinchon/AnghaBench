#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  refcnt ;
typedef  int /*<<< orphan*/  ref_psize ;
typedef  int /*<<< orphan*/  ref_lsize ;
typedef  int /*<<< orphan*/  ref_dsize ;
typedef  int /*<<< orphan*/  ref_blocks ;
typedef  int /*<<< orphan*/  psize ;
typedef  int /*<<< orphan*/  lsize ;
typedef  int /*<<< orphan*/  dsize ;
struct TYPE_3__ {unsigned long long dds_blocks; unsigned long long dds_lsize; unsigned long long dds_psize; unsigned long long dds_dsize; unsigned long long dds_ref_blocks; unsigned long long dds_ref_lsize; unsigned long long dds_ref_psize; unsigned long long dds_ref_dsize; } ;
typedef  TYPE_1__ ddt_stat_t ;
typedef  int /*<<< orphan*/  blocks ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*,char*,char*,char*,char*,char*,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long long,char*,int) ; 

__attribute__((used)) static void
FUNC3(const ddt_stat_t *dds, int h)
{
	char refcnt[6];
	char blocks[6], lsize[6], psize[6], dsize[6];
	char ref_blocks[6], ref_lsize[6], ref_psize[6], ref_dsize[6];

	if (dds == NULL || dds->dds_blocks == 0)
		return;

	if (h == -1)
		(void) FUNC1(refcnt, "Total");
	else
		FUNC2(1ULL << h, refcnt, sizeof (refcnt));

	FUNC2(dds->dds_blocks, blocks, sizeof (blocks));
	FUNC2(dds->dds_lsize, lsize, sizeof (lsize));
	FUNC2(dds->dds_psize, psize, sizeof (psize));
	FUNC2(dds->dds_dsize, dsize, sizeof (dsize));
	FUNC2(dds->dds_ref_blocks, ref_blocks, sizeof (ref_blocks));
	FUNC2(dds->dds_ref_lsize, ref_lsize, sizeof (ref_lsize));
	FUNC2(dds->dds_ref_psize, ref_psize, sizeof (ref_psize));
	FUNC2(dds->dds_ref_dsize, ref_dsize, sizeof (ref_dsize));

	(void) FUNC0("%6s   %6s   %5s   %5s   %5s   %6s   %5s   %5s   %5s\n",
	    refcnt,
	    blocks, lsize, psize, dsize,
	    ref_blocks, ref_lsize, ref_psize, ref_dsize);
}