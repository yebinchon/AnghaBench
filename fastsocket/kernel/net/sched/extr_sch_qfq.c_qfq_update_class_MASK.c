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
struct qfq_group {scalar_t__ S; int /*<<< orphan*/  slot_shift; } ;
struct qfq_class {scalar_t__ inv_w; scalar_t__ S; scalar_t__ F; int /*<<< orphan*/  qdisc; } ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct qfq_group*) ; 
 scalar_t__ FUNC2 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct qfq_group*,struct qfq_class*,scalar_t__) ; 

__attribute__((used)) static bool FUNC4(struct qfq_group *grp, struct qfq_class *cl)
{
	unsigned int len = FUNC0(cl->qdisc);

	cl->S = cl->F;
	if (!len)
		FUNC1(grp);	/* queue is empty */
	else {
		u64 roundedS;

		cl->F = cl->S + (u64)len * cl->inv_w;
		roundedS = FUNC2(cl->S, grp->slot_shift);
		if (roundedS == grp->S)
			return false;

		FUNC1(grp);
		FUNC3(grp, cl, roundedS);
	}

	return true;
}