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
typedef  scalar_t__ u64 ;
struct qfq_sched {unsigned long* bitmaps; int /*<<< orphan*/  V; } ;
struct qfq_group {unsigned long index; size_t front; unsigned long long slot_shift; scalar_t__ S; scalar_t__ F; int /*<<< orphan*/ * slots; int /*<<< orphan*/  full_slots; } ;
struct qfq_class {int /*<<< orphan*/  S; int /*<<< orphan*/  F; struct qfq_group* grp; } ;

/* Variables and functions */
 size_t EB ; 
 size_t ER ; 
 size_t IB ; 
 size_t IR ; 
 int /*<<< orphan*/  FUNC0 (unsigned long,unsigned long*) ; 
 unsigned long FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long,unsigned long*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (struct qfq_sched*,struct qfq_group*) ; 
 int /*<<< orphan*/  FUNC5 (struct qfq_sched*,unsigned long,size_t,size_t) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,unsigned long long) ; 
 int /*<<< orphan*/  FUNC7 (struct qfq_sched*,struct qfq_group*,struct qfq_class*) ; 
 struct qfq_class* FUNC8 (struct qfq_group*) ; 
 int /*<<< orphan*/  FUNC9 (struct qfq_sched*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (unsigned long,unsigned long*) ; 

__attribute__((used)) static void FUNC11(struct qfq_sched *q, struct qfq_class *cl)
{
	struct qfq_group *grp = cl->grp;
	unsigned long mask;
	u64 roundedS;
	int s;

	cl->F = cl->S;
	FUNC7(q, grp, cl);

	if (!grp->full_slots) {
		FUNC0(grp->index, &q->bitmaps[IR]);
		FUNC0(grp->index, &q->bitmaps[EB]);
		FUNC0(grp->index, &q->bitmaps[IB]);

		if (FUNC10(grp->index, &q->bitmaps[ER]) &&
		    !(q->bitmaps[ER] & ~((1UL << grp->index) - 1))) {
			mask = q->bitmaps[ER] & ((1UL << grp->index) - 1);
			if (mask)
				mask = ~((1UL << FUNC1(mask)) - 1);
			else
				mask = ~0UL;
			FUNC5(q, mask, EB, ER);
			FUNC5(q, mask, IB, IR);
		}
		FUNC0(grp->index, &q->bitmaps[ER]);
	} else if (FUNC3(&grp->slots[grp->front])) {
		cl = FUNC8(grp);
		roundedS = FUNC6(cl->S, grp->slot_shift);
		if (grp->S != roundedS) {
			FUNC0(grp->index, &q->bitmaps[ER]);
			FUNC0(grp->index, &q->bitmaps[IR]);
			FUNC0(grp->index, &q->bitmaps[EB]);
			FUNC0(grp->index, &q->bitmaps[IB]);
			grp->S = roundedS;
			grp->F = roundedS + (2ULL << grp->slot_shift);
			s = FUNC4(q, grp);
			FUNC2(grp->index, &q->bitmaps[s]);
		}
	}

	FUNC9(q, q->V);
}