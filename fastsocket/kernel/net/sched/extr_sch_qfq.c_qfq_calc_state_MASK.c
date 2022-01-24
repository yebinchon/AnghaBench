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
struct qfq_sched {int /*<<< orphan*/ * bitmaps; int /*<<< orphan*/  V; } ;
struct qfq_group {int /*<<< orphan*/  F; int /*<<< orphan*/  index; int /*<<< orphan*/  S; } ;

/* Variables and functions */
 unsigned int EB ; 
 size_t ER ; 
 unsigned long FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct qfq_group* FUNC1 (struct qfq_sched*,unsigned long) ; 
 unsigned int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct qfq_sched *q, const struct qfq_group *grp)
{
	/* if S > V we are not eligible */
	unsigned int state = FUNC2(grp->S, q->V);
	unsigned long mask = FUNC0(q->bitmaps[ER], grp->index);
	struct qfq_group *next;

	if (mask) {
		next = FUNC1(q, mask);
		if (FUNC2(grp->F, next->F))
			state |= EB;
	}

	return state;
}