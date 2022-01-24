#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ rate; int cell_log; } ;
struct tc_tbf_qopt {scalar_t__ buffer; scalar_t__ mtu; scalar_t__ limit; TYPE_2__ peakrate; TYPE_2__ rate; } ;
struct tbf_sched_data {scalar_t__ limit; scalar_t__ mtu; int max_size; scalar_t__ buffer; scalar_t__ tokens; scalar_t__ ptokens; int /*<<< orphan*/  P_tab; int /*<<< orphan*/  R_tab; struct Qdisc* qdisc; } ;
struct qdisc_rate_table {scalar_t__* data; } ;
struct nlattr {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  qlen; } ;
struct Qdisc {TYPE_1__ q; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (struct Qdisc*) ; 
 int FUNC1 (struct Qdisc*) ; 
 size_t TCA_TBF_PARMS ; 
 int TCA_TBF_PTAB ; 
 size_t TCA_TBF_RTAB ; 
 int /*<<< orphan*/  bfifo_qdisc_ops ; 
 struct Qdisc* FUNC2 (struct Qdisc*,int /*<<< orphan*/ *,scalar_t__) ; 
 struct tc_tbf_qopt* FUNC3 (struct nlattr*) ; 
 int FUNC4 (struct nlattr**,int,struct nlattr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct Qdisc*) ; 
 struct qdisc_rate_table* FUNC6 (TYPE_2__*,struct nlattr*) ; 
 struct tbf_sched_data* FUNC7 (struct Qdisc*) ; 
 int /*<<< orphan*/  FUNC8 (struct qdisc_rate_table*) ; 
 int /*<<< orphan*/  FUNC9 (struct Qdisc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct Qdisc*) ; 
 int /*<<< orphan*/  FUNC11 (struct Qdisc*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,struct qdisc_rate_table*) ; 
 int /*<<< orphan*/  tbf_policy ; 

__attribute__((used)) static int FUNC13(struct Qdisc* sch, struct nlattr *opt)
{
	int err;
	struct tbf_sched_data *q = FUNC7(sch);
	struct nlattr *tb[TCA_TBF_PTAB + 1];
	struct tc_tbf_qopt *qopt;
	struct qdisc_rate_table *rtab = NULL;
	struct qdisc_rate_table *ptab = NULL;
	struct Qdisc *child = NULL;
	int max_size,n;

	err = FUNC4(tb, TCA_TBF_PTAB, opt, tbf_policy);
	if (err < 0)
		return err;

	err = -EINVAL;
	if (tb[TCA_TBF_PARMS] == NULL)
		goto done;

	qopt = FUNC3(tb[TCA_TBF_PARMS]);
	rtab = FUNC6(&qopt->rate, tb[TCA_TBF_RTAB]);
	if (rtab == NULL)
		goto done;

	if (qopt->peakrate.rate) {
		if (qopt->peakrate.rate > qopt->rate.rate)
			ptab = FUNC6(&qopt->peakrate, tb[TCA_TBF_PTAB]);
		if (ptab == NULL)
			goto done;
	}

	for (n = 0; n < 256; n++)
		if (rtab->data[n] > qopt->buffer) break;
	max_size = (n << qopt->rate.cell_log)-1;
	if (ptab) {
		int size;

		for (n = 0; n < 256; n++)
			if (ptab->data[n] > qopt->mtu) break;
		size = (n << qopt->peakrate.cell_log)-1;
		if (size < max_size) max_size = size;
	}
	if (max_size < 0)
		goto done;

	if (qopt->limit > 0) {
		child = FUNC2(sch, &bfifo_qdisc_ops, qopt->limit);
		if (FUNC0(child)) {
			err = FUNC1(child);
			goto done;
		}
	}

	FUNC10(sch);
	if (child) {
		FUNC9(q->qdisc, q->qdisc->q.qlen);
		FUNC5(q->qdisc);
		q->qdisc = child;
	}
	q->limit = qopt->limit;
	q->mtu = qopt->mtu;
	q->max_size = max_size;
	q->buffer = qopt->buffer;
	q->tokens = q->buffer;
	q->ptokens = q->mtu;

	FUNC12(q->R_tab, rtab);
	FUNC12(q->P_tab, ptab);

	FUNC11(sch);
	err = 0;
done:
	if (rtab)
		FUNC8(rtab);
	if (ptab)
		FUNC8(ptab);
	return err;
}