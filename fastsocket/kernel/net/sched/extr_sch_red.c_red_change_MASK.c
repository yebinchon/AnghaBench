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
struct tc_red_qopt {scalar_t__ limit; int /*<<< orphan*/  Scell_log; int /*<<< orphan*/  Plog; int /*<<< orphan*/  Wlog; int /*<<< orphan*/  qth_max; int /*<<< orphan*/  qth_min; int /*<<< orphan*/  flags; } ;
struct red_sched_data {scalar_t__ limit; int /*<<< orphan*/  parms; struct Qdisc* qdisc; int /*<<< orphan*/  flags; } ;
struct nlattr {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  qlen; } ;
struct Qdisc {TYPE_1__ q; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (struct Qdisc*) ; 
 int FUNC1 (struct Qdisc*) ; 
 int /*<<< orphan*/  TCA_RED_MAX ; 
 size_t TCA_RED_PARMS ; 
 size_t TCA_RED_STAB ; 
 int /*<<< orphan*/  bfifo_qdisc_ops ; 
 struct Qdisc* FUNC2 (struct Qdisc*,int /*<<< orphan*/ *,scalar_t__) ; 
 struct tc_red_qopt* FUNC3 (struct nlattr*) ; 
 int FUNC4 (struct nlattr**,int /*<<< orphan*/ ,struct nlattr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct Qdisc*) ; 
 struct red_sched_data* FUNC6 (struct Qdisc*) ; 
 int /*<<< orphan*/  FUNC7 (struct Qdisc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  red_policy ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct tc_red_qopt*) ; 
 int /*<<< orphan*/  FUNC10 (struct Qdisc*) ; 
 int /*<<< orphan*/  FUNC11 (struct Qdisc*) ; 
 scalar_t__ FUNC12 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC13(struct Qdisc *sch, struct nlattr *opt)
{
	struct red_sched_data *q = FUNC6(sch);
	struct nlattr *tb[TCA_RED_MAX + 1];
	struct tc_red_qopt *ctl;
	struct Qdisc *child = NULL;
	int err;

	if (opt == NULL)
		return -EINVAL;

	err = FUNC4(tb, TCA_RED_MAX, opt, red_policy);
	if (err < 0)
		return err;

	if (tb[TCA_RED_PARMS] == NULL ||
	    tb[TCA_RED_STAB] == NULL)
		return -EINVAL;

	ctl = FUNC3(tb[TCA_RED_PARMS]);

	if (ctl->limit > 0) {
		child = FUNC2(sch, &bfifo_qdisc_ops, ctl->limit);
		if (FUNC0(child))
			return FUNC1(child);
	}

	FUNC10(sch);
	q->flags = ctl->flags;
	q->limit = ctl->limit;
	if (child) {
		FUNC7(q->qdisc, q->qdisc->q.qlen);
		FUNC5(q->qdisc);
		q->qdisc = child;
	}

	FUNC9(&q->parms, ctl->qth_min, ctl->qth_max, ctl->Wlog,
				 ctl->Plog, ctl->Scell_log,
				 FUNC3(tb[TCA_RED_STAB]));

	if (FUNC12(&sch->q))
		FUNC8(&q->parms);

	FUNC11(sch);
	return 0;
}