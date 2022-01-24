#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u64 ;
typedef  scalar_t__ u32 ;
struct tc_service_curve {scalar_t__ m1; scalar_t__ m2; } ;
struct nlattr {int dummy; } ;
struct TYPE_8__ {scalar_t__ classid; } ;
struct hfsc_class {int cl_flags; int refcnt; scalar_t__ level; int /*<<< orphan*/  cl_cvtoff; int /*<<< orphan*/  cl_pcvtoff; int /*<<< orphan*/  children; int /*<<< orphan*/  siblings; TYPE_4__ cl_common; void* cf_tree; void* vt_tree; TYPE_2__* qdisc; struct hfsc_class* cl_parent; struct hfsc_sched* sched; int /*<<< orphan*/  rate_est; int /*<<< orphan*/  bstats; } ;
struct hfsc_sched {int /*<<< orphan*/  clhash; struct hfsc_class root; } ;
struct Qdisc {scalar_t__ handle; int /*<<< orphan*/  dev_queue; } ;
struct TYPE_6__ {scalar_t__ qlen; } ;
struct TYPE_7__ {TYPE_1__ q; } ;

/* Variables and functions */
 int EEXIST ; 
 int EINVAL ; 
 int ENOBUFS ; 
 int ENOENT ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int HFSC_FSC ; 
 int HFSC_RSC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 void* RB_ROOT ; 
 size_t TCA_HFSC_FSC ; 
 int /*<<< orphan*/  TCA_HFSC_MAX ; 
 size_t TCA_HFSC_RSC ; 
 size_t TCA_HFSC_USC ; 
 size_t TCA_OPTIONS ; 
 size_t TCA_RATE ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ TC_H_ROOT ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct nlattr*) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct nlattr*) ; 
 int /*<<< orphan*/  FUNC4 (struct hfsc_class*) ; 
 int /*<<< orphan*/  FUNC5 (struct hfsc_class*,struct tc_service_curve*) ; 
 int /*<<< orphan*/  FUNC6 (struct hfsc_class*,struct tc_service_curve*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct hfsc_class*,struct tc_service_curve*,int /*<<< orphan*/ ) ; 
 struct hfsc_class* FUNC8 (scalar_t__,struct Qdisc*) ; 
 int /*<<< orphan*/  hfsc_policy ; 
 int /*<<< orphan*/  FUNC9 (struct Qdisc*,struct hfsc_class*) ; 
 int /*<<< orphan*/  FUNC10 (struct hfsc_class*) ; 
 struct hfsc_class* FUNC11 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct tc_service_curve* FUNC13 (struct nlattr*) ; 
 int FUNC14 (struct nlattr**,int /*<<< orphan*/ ,struct nlattr*,int /*<<< orphan*/ ) ; 
 TYPE_2__ noop_qdisc ; 
 int /*<<< orphan*/  pfifo_qdisc_ops ; 
 int /*<<< orphan*/  FUNC15 () ; 
 int /*<<< orphan*/  FUNC16 (struct Qdisc*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,TYPE_4__*) ; 
 TYPE_2__* FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC19 (struct Qdisc*) ; 
 int /*<<< orphan*/  FUNC20 (TYPE_2__*) ; 
 struct hfsc_sched* FUNC21 (struct Qdisc*) ; 
 int /*<<< orphan*/  FUNC22 (struct Qdisc*) ; 
 int /*<<< orphan*/  FUNC23 (struct Qdisc*) ; 
 int /*<<< orphan*/  FUNC24 (struct Qdisc*) ; 
 int /*<<< orphan*/  FUNC25 (struct hfsc_class*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC26 (struct hfsc_class*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC27(struct Qdisc *sch, u32 classid, u32 parentid,
		  struct nlattr **tca, unsigned long *arg)
{
	struct hfsc_sched *q = FUNC21(sch);
	struct hfsc_class *cl = (struct hfsc_class *)*arg;
	struct hfsc_class *parent = NULL;
	struct nlattr *opt = tca[TCA_OPTIONS];
	struct nlattr *tb[TCA_HFSC_MAX + 1];
	struct tc_service_curve *rsc = NULL, *fsc = NULL, *usc = NULL;
	u64 cur_time;
	int err;

	if (opt == NULL)
		return -EINVAL;

	err = FUNC14(tb, TCA_HFSC_MAX, opt, hfsc_policy);
	if (err < 0)
		return err;

	if (tb[TCA_HFSC_RSC]) {
		rsc = FUNC13(tb[TCA_HFSC_RSC]);
		if (rsc->m1 == 0 && rsc->m2 == 0)
			rsc = NULL;
	}

	if (tb[TCA_HFSC_FSC]) {
		fsc = FUNC13(tb[TCA_HFSC_FSC]);
		if (fsc->m1 == 0 && fsc->m2 == 0)
			fsc = NULL;
	}

	if (tb[TCA_HFSC_USC]) {
		usc = FUNC13(tb[TCA_HFSC_USC]);
		if (usc->m1 == 0 && usc->m2 == 0)
			usc = NULL;
	}

	if (cl != NULL) {
		if (parentid) {
			if (cl->cl_parent &&
			    cl->cl_parent->cl_common.classid != parentid)
				return -EINVAL;
			if (cl->cl_parent == NULL && parentid != TC_H_ROOT)
				return -EINVAL;
		}
		cur_time = FUNC15();

		if (tca[TCA_RATE]) {
			err = FUNC3(&cl->bstats, &cl->rate_est,
					      FUNC22(sch),
					      tca[TCA_RATE]);
			if (err)
				return err;
		}

		FUNC23(sch);
		if (rsc != NULL)
			FUNC6(cl, rsc, cur_time);
		if (fsc != NULL)
			FUNC5(cl, fsc);
		if (usc != NULL)
			FUNC7(cl, usc, cur_time);

		if (cl->qdisc->q.qlen != 0) {
			if (cl->cl_flags & HFSC_RSC)
				FUNC25(cl, FUNC20(cl->qdisc));
			if (cl->cl_flags & HFSC_FSC)
				FUNC26(cl, 0, cur_time);
		}
		FUNC24(sch);

		return 0;
	}

	if (parentid == TC_H_ROOT)
		return -EEXIST;

	parent = &q->root;
	if (parentid) {
		parent = FUNC8(parentid, sch);
		if (parent == NULL)
			return -ENOENT;
	}

	if (classid == 0 || FUNC1(classid ^ sch->handle) != 0)
		return -EINVAL;
	if (FUNC8(classid, sch))
		return -EEXIST;

	if (rsc == NULL && fsc == NULL)
		return -EINVAL;

	cl = FUNC11(sizeof(struct hfsc_class), GFP_KERNEL);
	if (cl == NULL)
		return -ENOBUFS;

	if (tca[TCA_RATE]) {
		err = FUNC2(&cl->bstats, &cl->rate_est,
					FUNC22(sch),
					tca[TCA_RATE]);
		if (err) {
			FUNC10(cl);
			return err;
		}
	}

	if (rsc != NULL)
		FUNC6(cl, rsc, 0);
	if (fsc != NULL)
		FUNC5(cl, fsc);
	if (usc != NULL)
		FUNC7(cl, usc, 0);

	cl->cl_common.classid = classid;
	cl->refcnt    = 1;
	cl->sched     = q;
	cl->cl_parent = parent;
	cl->qdisc = FUNC18(FUNC19(sch), sch->dev_queue,
				      &pfifo_qdisc_ops, classid);
	if (cl->qdisc == NULL)
		cl->qdisc = &noop_qdisc;
	FUNC0(&cl->children);
	cl->vt_tree = RB_ROOT;
	cl->cf_tree = RB_ROOT;

	FUNC23(sch);
	FUNC17(&q->clhash, &cl->cl_common);
	FUNC12(&cl->siblings, &parent->children);
	if (parent->level == 0)
		FUNC9(sch, parent);
	FUNC4(parent);
	cl->cl_pcvtoff = parent->cl_cvtoff;
	FUNC24(sch);

	FUNC16(sch, &q->clhash);

	*arg = (unsigned long)cl;
	return 0;
}