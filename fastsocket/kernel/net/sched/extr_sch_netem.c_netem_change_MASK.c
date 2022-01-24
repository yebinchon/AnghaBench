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
struct tc_netem_qopt {int /*<<< orphan*/  duplicate; int /*<<< orphan*/  loss; scalar_t__ gap; int /*<<< orphan*/  limit; int /*<<< orphan*/  jitter; int /*<<< orphan*/  latency; } ;
struct nlattr {int dummy; } ;
struct netem_sched_data {int /*<<< orphan*/  reorder; scalar_t__ gap; int /*<<< orphan*/  duplicate; int /*<<< orphan*/  loss; scalar_t__ counter; int /*<<< orphan*/  limit; int /*<<< orphan*/  jitter; int /*<<< orphan*/  latency; int /*<<< orphan*/  qdisc; } ;
struct Qdisc {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 size_t TCA_NETEM_CORR ; 
 size_t TCA_NETEM_CORRUPT ; 
 size_t TCA_NETEM_DELAY_DIST ; 
 int /*<<< orphan*/  TCA_NETEM_MAX ; 
 size_t TCA_NETEM_REORDER ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct Qdisc*,struct nlattr*) ; 
 int /*<<< orphan*/  FUNC2 (struct Qdisc*,struct nlattr*) ; 
 int FUNC3 (struct Qdisc*,struct nlattr*) ; 
 int /*<<< orphan*/  FUNC4 (struct Qdisc*,struct nlattr*) ; 
 int /*<<< orphan*/  netem_policy ; 
 struct tc_netem_qopt* FUNC5 (struct nlattr*) ; 
 int FUNC6 (struct nlattr**,int /*<<< orphan*/ ,struct nlattr*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 struct netem_sched_data* FUNC8 (struct Qdisc*) ; 

__attribute__((used)) static int FUNC9(struct Qdisc *sch, struct nlattr *opt)
{
	struct netem_sched_data *q = FUNC8(sch);
	struct nlattr *tb[TCA_NETEM_MAX + 1];
	struct tc_netem_qopt *qopt;
	int ret;

	if (opt == NULL)
		return -EINVAL;

	qopt = FUNC5(opt);
	ret = FUNC6(tb, TCA_NETEM_MAX, opt, netem_policy, sizeof(*qopt));
	if (ret < 0)
		return ret;

	ret = FUNC0(q->qdisc, qopt->limit);
	if (ret) {
		FUNC7("netem: can't set fifo limit\n");
		return ret;
	}

	q->latency = qopt->latency;
	q->jitter = qopt->jitter;
	q->limit = qopt->limit;
	q->gap = qopt->gap;
	q->counter = 0;
	q->loss = qopt->loss;
	q->duplicate = qopt->duplicate;

	/* for compatibility with earlier versions.
	 * if gap is set, need to assume 100% probability
	 */
	if (q->gap)
		q->reorder = ~0;

	if (tb[TCA_NETEM_CORR])
		FUNC1(sch, tb[TCA_NETEM_CORR]);

	if (tb[TCA_NETEM_DELAY_DIST]) {
		ret = FUNC3(sch, tb[TCA_NETEM_DELAY_DIST]);
		if (ret)
			return ret;
	}

	if (tb[TCA_NETEM_REORDER])
		FUNC4(sch, tb[TCA_NETEM_REORDER]);

	if (tb[TCA_NETEM_CORRUPT])
		FUNC2(sch, tb[TCA_NETEM_CORRUPT]);

	return 0;
}