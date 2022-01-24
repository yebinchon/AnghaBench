#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct tc_multiq_qopt {int bands; } ;
struct nlattr {int dummy; } ;
struct multiq_sched_data {int bands; int max_bands; struct Qdisc** queues; } ;
struct TYPE_5__ {int /*<<< orphan*/  qlen; } ;
struct Qdisc {TYPE_1__ q; int /*<<< orphan*/  handle; int /*<<< orphan*/  dev_queue; } ;
struct TYPE_6__ {int real_num_tx_queues; } ;

/* Variables and functions */
 int EINVAL ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 struct tc_multiq_qopt* FUNC2 (struct nlattr*) ; 
 int FUNC3 (struct nlattr*) ; 
 struct Qdisc noop_qdisc ; 
 int /*<<< orphan*/  pfifo_qdisc_ops ; 
 struct Qdisc* FUNC4 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct Qdisc*) ; 
 TYPE_2__* FUNC6 (struct Qdisc*) ; 
 struct multiq_sched_data* FUNC7 (struct Qdisc*) ; 
 int /*<<< orphan*/  FUNC8 (struct Qdisc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct Qdisc*) ; 
 int /*<<< orphan*/  FUNC10 (struct Qdisc*) ; 

__attribute__((used)) static int FUNC11(struct Qdisc *sch, struct nlattr *opt)
{
	struct multiq_sched_data *q = FUNC7(sch);
	struct tc_multiq_qopt *qopt;
	int i;

	if (!FUNC1(FUNC6(sch)))
		return -EOPNOTSUPP;
	if (FUNC3(opt) < sizeof(*qopt))
		return -EINVAL;

	qopt = FUNC2(opt);

	qopt->bands = FUNC6(sch)->real_num_tx_queues;

	FUNC9(sch);
	q->bands = qopt->bands;
	for (i = q->bands; i < q->max_bands; i++) {
		if (q->queues[i] != &noop_qdisc) {
			struct Qdisc *child = q->queues[i];
			q->queues[i] = &noop_qdisc;
			FUNC8(child, child->q.qlen);
			FUNC5(child);
		}
	}

	FUNC10(sch);

	for (i = 0; i < q->bands; i++) {
		if (q->queues[i] == &noop_qdisc) {
			struct Qdisc *child, *old;
			child = FUNC4(FUNC6(sch),
						  sch->dev_queue,
						  &pfifo_qdisc_ops,
						  FUNC0(sch->handle,
							    i + 1));
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