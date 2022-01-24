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
struct qfq_sched {int wsum; } ;
struct qfq_class {int inv_w; int /*<<< orphan*/  qdisc; int /*<<< orphan*/  rate_est; int /*<<< orphan*/  bstats; } ;
struct Qdisc {int dummy; } ;

/* Variables and functions */
 int ONE_FP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct qfq_class*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct qfq_sched* FUNC3 (struct Qdisc*) ; 

__attribute__((used)) static void FUNC4(struct Qdisc *sch, struct qfq_class *cl)
{
	struct qfq_sched *q = FUNC3(sch);

	if (cl->inv_w) {
		q->wsum -= ONE_FP / cl->inv_w;
		cl->inv_w = 0;
	}

	FUNC0(&cl->bstats, &cl->rate_est);
	FUNC2(cl->qdisc);
	FUNC1(cl);
}