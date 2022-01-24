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
typedef  scalar_t__ u32 ;
struct nlattr {int dummy; } ;
struct drr_sched {int /*<<< orphan*/  clhash; } ;
struct TYPE_2__ {scalar_t__ classid; } ;
struct drr_class {int refcnt; TYPE_1__ common; int /*<<< orphan*/ * qdisc; int /*<<< orphan*/  rate_est; int /*<<< orphan*/  bstats; scalar_t__ quantum; } ;
struct Qdisc {int /*<<< orphan*/  dev_queue; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOBUFS ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  TCA_DRR_MAX ; 
 size_t TCA_DRR_QUANTUM ; 
 size_t TCA_OPTIONS ; 
 size_t TCA_RATE ; 
 int /*<<< orphan*/  drr_policy ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct nlattr*) ; 
 int /*<<< orphan*/  FUNC1 (struct drr_class*) ; 
 struct drr_class* FUNC2 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct nlattr*) ; 
 int FUNC4 (struct nlattr**,int /*<<< orphan*/ ,struct nlattr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  noop_qdisc ; 
 int /*<<< orphan*/  pfifo_qdisc_ops ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct Qdisc*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct Qdisc*) ; 
 struct drr_sched* FUNC11 (struct Qdisc*) ; 
 int /*<<< orphan*/  FUNC12 (struct Qdisc*) ; 
 int /*<<< orphan*/  FUNC13 (struct Qdisc*) ; 
 int /*<<< orphan*/  FUNC14 (struct Qdisc*) ; 

__attribute__((used)) static int FUNC15(struct Qdisc *sch, u32 classid, u32 parentid,
			    struct nlattr **tca, unsigned long *arg)
{
	struct drr_sched *q = FUNC11(sch);
	struct drr_class *cl = (struct drr_class *)*arg;
	struct nlattr *opt = tca[TCA_OPTIONS];
	struct nlattr *tb[TCA_DRR_MAX + 1];
	u32 quantum;
	int err;

	if (!opt)
		return -EINVAL;

	err = FUNC4(tb, TCA_DRR_MAX, opt, drr_policy);
	if (err < 0)
		return err;

	if (tb[TCA_DRR_QUANTUM]) {
		quantum = FUNC3(tb[TCA_DRR_QUANTUM]);
		if (quantum == 0)
			return -EINVAL;
	} else
		quantum = FUNC5(FUNC10(sch));

	if (cl != NULL) {
		if (tca[TCA_RATE]) {
			err = FUNC0(&cl->bstats, &cl->rate_est,
						    FUNC12(sch),
						    tca[TCA_RATE]);
			if (err)
				return err;
		}

		FUNC13(sch);
		if (tb[TCA_DRR_QUANTUM])
			cl->quantum = quantum;
		FUNC14(sch);

		return 0;
	}

	cl = FUNC2(sizeof(struct drr_class), GFP_KERNEL);
	if (cl == NULL)
		return -ENOBUFS;

	cl->refcnt	   = 1;
	cl->common.classid = classid;
	cl->quantum	   = quantum;
	cl->qdisc	   = FUNC8(FUNC10(sch), sch->dev_queue,
					       &pfifo_qdisc_ops, classid);
	if (cl->qdisc == NULL)
		cl->qdisc = &noop_qdisc;

	if (tca[TCA_RATE]) {
		err = FUNC0(&cl->bstats, &cl->rate_est,
					    FUNC12(sch),
					    tca[TCA_RATE]);
		if (err) {
			FUNC9(cl->qdisc);
			FUNC1(cl);
			return err;
		}
	}

	FUNC13(sch);
	FUNC7(&q->clhash, &cl->common);
	FUNC14(sch);

	FUNC6(sch, &q->clhash);

	*arg = (unsigned long)cl;
	return 0;
}