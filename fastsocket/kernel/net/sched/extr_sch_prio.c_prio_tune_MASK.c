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
struct tc_prio_qopt {int bands; int* priomap; } ;
struct prio_sched_data {int bands; struct Qdisc** queues; int /*<<< orphan*/  prio2band; } ;
struct nlattr {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  qlen; } ;
struct Qdisc {TYPE_1__ q; int /*<<< orphan*/  handle; int /*<<< orphan*/  dev_queue; } ;

/* Variables and functions */
 int EINVAL ; 
 int TCQ_PRIO_BANDS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int TC_PRIO_MAX ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int*,int) ; 
 struct tc_prio_qopt* FUNC2 (struct nlattr*) ; 
 int FUNC3 (struct nlattr*) ; 
 struct Qdisc noop_qdisc ; 
 int /*<<< orphan*/  pfifo_qdisc_ops ; 
 struct Qdisc* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct Qdisc*) ; 
 int /*<<< orphan*/  FUNC6 (struct Qdisc*) ; 
 struct prio_sched_data* FUNC7 (struct Qdisc*) ; 
 int /*<<< orphan*/  FUNC8 (struct Qdisc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct Qdisc*) ; 
 int /*<<< orphan*/  FUNC10 (struct Qdisc*) ; 

__attribute__((used)) static int FUNC11(struct Qdisc *sch, struct nlattr *opt)
{
	struct prio_sched_data *q = FUNC7(sch);
	struct tc_prio_qopt *qopt;
	int i;

	if (FUNC3(opt) < sizeof(*qopt))
		return -EINVAL;
	qopt = FUNC2(opt);

	if (qopt->bands > TCQ_PRIO_BANDS || qopt->bands < 2)
		return -EINVAL;

	for (i=0; i<=TC_PRIO_MAX; i++) {
		if (qopt->priomap[i] >= qopt->bands)
			return -EINVAL;
	}

	FUNC9(sch);
	q->bands = qopt->bands;
	FUNC1(q->prio2band, qopt->priomap, TC_PRIO_MAX+1);

	for (i=q->bands; i<TCQ_PRIO_BANDS; i++) {
		struct Qdisc *child = q->queues[i];
		q->queues[i] = &noop_qdisc;
		if (child != &noop_qdisc) {
			FUNC8(child, child->q.qlen);
			FUNC5(child);
		}
	}
	FUNC10(sch);

	for (i=0; i<q->bands; i++) {
		if (q->queues[i] == &noop_qdisc) {
			struct Qdisc *child, *old;
			child = FUNC4(FUNC6(sch), sch->dev_queue,
						  &pfifo_qdisc_ops,
						  FUNC0(sch->handle, i + 1));
			if (child) {
				FUNC9(sch);
				old = q->queues[i];
				q->queues[i] = child;

				if (old != &noop_qdisc) {
					FUNC8(old,
								 old->q.qlen);
					FUNC5(old);
				}
				FUNC10(sch);
			}
		}
	}
	return 0;
}