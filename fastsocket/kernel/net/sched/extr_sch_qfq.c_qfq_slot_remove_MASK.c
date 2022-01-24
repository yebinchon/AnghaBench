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
typedef  unsigned int u64 ;
struct qfq_sched {int dummy; } ;
struct qfq_group {unsigned int slot_shift; unsigned int S; unsigned int front; int /*<<< orphan*/  full_slots; int /*<<< orphan*/ * slots; } ;
struct qfq_class {int /*<<< orphan*/  next; int /*<<< orphan*/  S; } ;

/* Variables and functions */
 unsigned int QFQ_MAX_SLOTS ; 
 int /*<<< orphan*/  FUNC0 (unsigned int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 unsigned int FUNC3 (int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static void FUNC4(struct qfq_sched *q, struct qfq_group *grp,
			    struct qfq_class *cl)
{
	unsigned int i, offset;
	u64 roundedS;

	roundedS = FUNC3(cl->S, grp->slot_shift);
	offset = (roundedS - grp->S) >> grp->slot_shift;
	i = (grp->front + offset) % QFQ_MAX_SLOTS;

	FUNC1(&cl->next);
	if (FUNC2(&grp->slots[i]))
		FUNC0(offset, &grp->full_slots);
}