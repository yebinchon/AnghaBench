#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_6__ {int /*<<< orphan*/  rate; } ;
struct qdisc_rate_table {TYPE_1__ rate; } ;
struct nlattr {int dummy; } ;
struct TYPE_7__ {int classid; } ;
struct cbq_class {int refcnt; int minidle; scalar_t__ ewma_log; scalar_t__ maxidle; scalar_t__ avpkt; int /*<<< orphan*/  overlimit; struct cbq_class* tparent; struct cbq_class* share; struct cbq_class* borrow; struct qdisc_rate_table* R_tab; int /*<<< orphan*/  weight; int /*<<< orphan*/  allot; int /*<<< orphan*/  quantum; struct Qdisc* qdisc; TYPE_2__ common; TYPE_4__* q; int /*<<< orphan*/  rate_est; int /*<<< orphan*/  bstats; int /*<<< orphan*/ * next_alive; } ;
struct cbq_sched_data {int hgenerator; int /*<<< orphan*/  clhash; struct cbq_class link; } ;
struct Qdisc {int handle; int /*<<< orphan*/  dev_queue; } ;
struct TYPE_8__ {scalar_t__ qlen; } ;
struct TYPE_9__ {TYPE_3__ q; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOBUFS ; 
 int ENOSR ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 size_t TCA_CBQ_FOPT ; 
 size_t TCA_CBQ_LSSOPT ; 
 int /*<<< orphan*/  TCA_CBQ_MAX ; 
 size_t TCA_CBQ_OVL_STRATEGY ; 
 size_t TCA_CBQ_POLICE ; 
 size_t TCA_CBQ_RATE ; 
 size_t TCA_CBQ_RTAB ; 
 size_t TCA_CBQ_WRROPT ; 
 size_t TCA_OPTIONS ; 
 size_t TCA_RATE ; 
 scalar_t__ FUNC0 (int) ; 
 int FUNC1 (int,int) ; 
 int TC_H_ROOT ; 
 int /*<<< orphan*/  FUNC2 (struct cbq_class*) ; 
 int /*<<< orphan*/  FUNC3 (struct cbq_class*) ; 
 struct cbq_class* FUNC4 (struct cbq_sched_data*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct cbq_class*) ; 
 int /*<<< orphan*/  FUNC6 (struct cbq_class*) ; 
 int /*<<< orphan*/  cbq_ovl_classic ; 
 int /*<<< orphan*/  cbq_policy ; 
 int /*<<< orphan*/  FUNC7 (struct cbq_sched_data*,struct cbq_class*) ; 
 int /*<<< orphan*/  FUNC8 (struct cbq_class*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct cbq_class*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct cbq_class*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct cbq_class*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct cbq_class*,int /*<<< orphan*/ ) ; 
 int FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct nlattr*) ; 
 int FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct nlattr*) ; 
 int /*<<< orphan*/  FUNC15 (struct cbq_class*) ; 
 struct cbq_class* FUNC16 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (struct nlattr*) ; 
 int FUNC18 (struct nlattr**,int /*<<< orphan*/ ,struct nlattr*,int /*<<< orphan*/ ) ; 
 TYPE_4__ noop_qdisc ; 
 int /*<<< orphan*/  pfifo_qdisc_ops ; 
 int /*<<< orphan*/  FUNC19 (struct Qdisc*,int /*<<< orphan*/ *) ; 
 TYPE_4__* FUNC20 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC21 (struct Qdisc*) ; 
 struct qdisc_rate_table* FUNC22 (int /*<<< orphan*/ ,struct nlattr*) ; 
 struct cbq_sched_data* FUNC23 (struct Qdisc*) ; 
 int /*<<< orphan*/  FUNC24 (struct qdisc_rate_table*) ; 
 int /*<<< orphan*/  FUNC25 (struct Qdisc*) ; 
 int /*<<< orphan*/  FUNC26 (struct Qdisc*) ; 
 int /*<<< orphan*/  FUNC27 (struct Qdisc*) ; 

__attribute__((used)) static int
FUNC28(struct Qdisc *sch, u32 classid, u32 parentid, struct nlattr **tca,
		 unsigned long *arg)
{
	int err;
	struct cbq_sched_data *q = FUNC23(sch);
	struct cbq_class *cl = (struct cbq_class*)*arg;
	struct nlattr *opt = tca[TCA_OPTIONS];
	struct nlattr *tb[TCA_CBQ_MAX + 1];
	struct cbq_class *parent;
	struct qdisc_rate_table *rtab = NULL;

	if (opt == NULL)
		return -EINVAL;

	err = FUNC18(tb, TCA_CBQ_MAX, opt, cbq_policy);
	if (err < 0)
		return err;

	if (cl) {
		/* Check parent */
		if (parentid) {
			if (cl->tparent &&
			    cl->tparent->common.classid != parentid)
				return -EINVAL;
			if (!cl->tparent && parentid != TC_H_ROOT)
				return -EINVAL;
		}

		if (tb[TCA_CBQ_RATE]) {
			rtab = FUNC22(FUNC17(tb[TCA_CBQ_RATE]),
					      tb[TCA_CBQ_RTAB]);
			if (rtab == NULL)
				return -EINVAL;
		}

		if (tca[TCA_RATE]) {
			err = FUNC14(&cl->bstats, &cl->rate_est,
						    FUNC25(sch),
						    tca[TCA_RATE]);
			if (err) {
				if (rtab)
					FUNC24(rtab);
				return err;
			}
		}

		/* Change class parameters */
		FUNC26(sch);

		if (cl->next_alive != NULL)
			FUNC5(cl);

		if (rtab) {
			FUNC24(cl->R_tab);
			cl->R_tab = rtab;
		}

		if (tb[TCA_CBQ_LSSOPT])
			FUNC9(cl, FUNC17(tb[TCA_CBQ_LSSOPT]));

		if (tb[TCA_CBQ_WRROPT]) {
			FUNC7(q, cl);
			FUNC12(cl, FUNC17(tb[TCA_CBQ_WRROPT]));
		}

		if (tb[TCA_CBQ_OVL_STRATEGY])
			FUNC10(cl, FUNC17(tb[TCA_CBQ_OVL_STRATEGY]));

#ifdef CONFIG_NET_CLS_ACT
		if (tb[TCA_CBQ_POLICE])
			cbq_set_police(cl, nla_data(tb[TCA_CBQ_POLICE]));
#endif

		if (tb[TCA_CBQ_FOPT])
			FUNC8(cl, FUNC17(tb[TCA_CBQ_FOPT]));

		if (cl->q->q.qlen)
			FUNC2(cl);

		FUNC27(sch);

		return 0;
	}

	if (parentid == TC_H_ROOT)
		return -EINVAL;

	if (tb[TCA_CBQ_WRROPT] == NULL || tb[TCA_CBQ_RATE] == NULL ||
	    tb[TCA_CBQ_LSSOPT] == NULL)
		return -EINVAL;

	rtab = FUNC22(FUNC17(tb[TCA_CBQ_RATE]), tb[TCA_CBQ_RTAB]);
	if (rtab == NULL)
		return -EINVAL;

	if (classid) {
		err = -EINVAL;
		if (FUNC0(classid^sch->handle) || FUNC4(q, classid))
			goto failure;
	} else {
		int i;
		classid = FUNC1(sch->handle,0x8000);

		for (i=0; i<0x8000; i++) {
			if (++q->hgenerator >= 0x8000)
				q->hgenerator = 1;
			if (FUNC4(q, classid|q->hgenerator) == NULL)
				break;
		}
		err = -ENOSR;
		if (i >= 0x8000)
			goto failure;
		classid = classid|q->hgenerator;
	}

	parent = &q->link;
	if (parentid) {
		parent = FUNC4(q, parentid);
		err = -EINVAL;
		if (parent == NULL)
			goto failure;
	}

	err = -ENOBUFS;
	cl = FUNC16(sizeof(*cl), GFP_KERNEL);
	if (cl == NULL)
		goto failure;

	if (tca[TCA_RATE]) {
		err = FUNC13(&cl->bstats, &cl->rate_est,
					FUNC25(sch),
					tca[TCA_RATE]);
		if (err) {
			FUNC15(cl);
			goto failure;
		}
	}

	cl->R_tab = rtab;
	rtab = NULL;
	cl->refcnt = 1;
	if (!(cl->q = FUNC20(FUNC21(sch), sch->dev_queue,
					&pfifo_qdisc_ops, classid)))
		cl->q = &noop_qdisc;
	cl->common.classid = classid;
	cl->tparent = parent;
	cl->qdisc = sch;
	cl->allot = parent->allot;
	cl->quantum = cl->allot;
	cl->weight = cl->R_tab->rate.rate;

	FUNC26(sch);
	FUNC6(cl);
	cl->borrow = cl->tparent;
	if (cl->tparent != &q->link)
		cl->share = cl->tparent;
	FUNC3(parent);
	cl->minidle = -0x7FFFFFFF;
	FUNC9(cl, FUNC17(tb[TCA_CBQ_LSSOPT]));
	FUNC12(cl, FUNC17(tb[TCA_CBQ_WRROPT]));
	if (cl->ewma_log==0)
		cl->ewma_log = q->link.ewma_log;
	if (cl->maxidle==0)
		cl->maxidle = q->link.maxidle;
	if (cl->avpkt==0)
		cl->avpkt = q->link.avpkt;
	cl->overlimit = cbq_ovl_classic;
	if (tb[TCA_CBQ_OVL_STRATEGY])
		FUNC10(cl, FUNC17(tb[TCA_CBQ_OVL_STRATEGY]));
#ifdef CONFIG_NET_CLS_ACT
	if (tb[TCA_CBQ_POLICE])
		cbq_set_police(cl, nla_data(tb[TCA_CBQ_POLICE]));
#endif
	if (tb[TCA_CBQ_FOPT])
		FUNC8(cl, FUNC17(tb[TCA_CBQ_FOPT]));
	FUNC27(sch);

	FUNC19(sch, &q->clhash);

	*arg = (unsigned long)cl;
	return 0;

failure:
	FUNC24(rtab);
	return err;
}