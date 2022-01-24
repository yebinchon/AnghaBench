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
struct qfq_sched {struct qfq_group* groups; int /*<<< orphan*/  clhash; } ;
struct qfq_group {int index; int slot_shift; int /*<<< orphan*/ * slots; } ;
struct nlattr {int dummy; } ;
struct Qdisc {int dummy; } ;

/* Variables and functions */
 int FRAC_BITS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int QFQ_MAX_INDEX ; 
 int QFQ_MAX_SLOTS ; 
 int QFQ_MTU_SHIFT ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 struct qfq_sched* FUNC2 (struct Qdisc*) ; 

__attribute__((used)) static int FUNC3(struct Qdisc *sch, struct nlattr *opt)
{
	struct qfq_sched *q = FUNC2(sch);
	struct qfq_group *grp;
	int i, j, err;

	err = FUNC1(&q->clhash);
	if (err < 0)
		return err;

	for (i = 0; i <= QFQ_MAX_INDEX; i++) {
		grp = &q->groups[i];
		grp->index = i;
		grp->slot_shift = QFQ_MTU_SHIFT + FRAC_BITS
				   - (QFQ_MAX_INDEX - i);
		for (j = 0; j < QFQ_MAX_SLOTS; j++)
			FUNC0(&grp->slots[j]);
	}

	return 0;
}