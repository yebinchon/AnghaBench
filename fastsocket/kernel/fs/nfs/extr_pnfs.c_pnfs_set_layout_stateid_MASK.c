#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_8__ {int /*<<< orphan*/  seqid; } ;
struct TYPE_10__ {TYPE_2__ stateid; } ;
struct pnfs_layout_hdr {int plh_barrier; TYPE_5__ plh_stateid; } ;
struct TYPE_7__ {int /*<<< orphan*/  seqid; } ;
struct TYPE_9__ {TYPE_1__ stateid; } ;
typedef  TYPE_3__ nfs4_stateid ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_5__*,TYPE_3__ const*) ; 
 scalar_t__ FUNC2 (int) ; 

void
FUNC3(struct pnfs_layout_hdr *lo, const nfs4_stateid *new,
			bool update_barrier)
{
	u32 oldseq, newseq;

	oldseq = FUNC0(lo->plh_stateid.stateid.seqid);
	newseq = FUNC0(new->stateid.seqid);
	if ((int)(newseq - oldseq) > 0) {
		FUNC1(&lo->plh_stateid, new);
		if (update_barrier) {
			u32 new_barrier = FUNC0(new->stateid.seqid);

			if ((int)(new_barrier - lo->plh_barrier))
				lo->plh_barrier = new_barrier;
		} else {
			/* Because of wraparound, we want to keep the barrier
			 * "close" to the current seqids.  It needs to be
			 * within 2**31 to count as "behind", so if it
			 * gets too near that limit, give us a litle leeway
			 * and bring it to within 2**30.
			 * NOTE - and yes, this is all unsigned arithmetic.
			 */
			if (FUNC2((newseq - lo->plh_barrier) > (3 << 29)))
				lo->plh_barrier = newseq - (1 << 30);
		}
	}
}