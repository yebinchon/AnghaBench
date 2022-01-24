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
struct tc_sfq_qopt {int perturb_period; scalar_t__ limit; scalar_t__ quantum; } ;
struct sfq_sched_data {int perturb_period; scalar_t__ limit; int /*<<< orphan*/  perturbation; int /*<<< orphan*/  perturb_timer; int /*<<< orphan*/  quantum; } ;
struct nlattr {scalar_t__ nla_len; } ;
struct TYPE_2__ {unsigned int qlen; } ;
struct Qdisc {TYPE_1__ q; } ;

/* Variables and functions */
 int EINVAL ; 
 int HZ ; 
 scalar_t__ SFQ_DEPTH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ jiffies ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ FUNC4 (int) ; 
 struct tc_sfq_qopt* FUNC5 (struct nlattr*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct Qdisc*) ; 
 struct sfq_sched_data* FUNC8 (struct Qdisc*) ; 
 int /*<<< orphan*/  FUNC9 (struct Qdisc*,unsigned int) ; 
 int /*<<< orphan*/  FUNC10 (struct Qdisc*) ; 
 int /*<<< orphan*/  FUNC11 (struct Qdisc*) ; 
 int /*<<< orphan*/  FUNC12 (struct Qdisc*) ; 
 int /*<<< orphan*/  u32 ; 

__attribute__((used)) static int FUNC13(struct Qdisc *sch, struct nlattr *opt)
{
	struct sfq_sched_data *q = FUNC8(sch);
	struct tc_sfq_qopt *ctl = FUNC5(opt);
	unsigned int qlen;

	if (opt->nla_len < FUNC4(sizeof(*ctl)))
		return -EINVAL;

	FUNC10(sch);
	q->quantum = ctl->quantum ? : FUNC6(FUNC7(sch));
	q->perturb_period = ctl->perturb_period * HZ;
	if (ctl->limit)
		q->limit = FUNC1(u32, ctl->limit, SFQ_DEPTH - 1);

	qlen = sch->q.qlen;
	while (sch->q.qlen > q->limit)
		FUNC12(sch);
	FUNC9(sch, qlen - sch->q.qlen);

	FUNC0(&q->perturb_timer);
	if (q->perturb_period) {
		FUNC2(&q->perturb_timer, jiffies + q->perturb_period);
		q->perturbation = FUNC3();
	}
	FUNC11(sch);
	return 0;
}