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
struct qdisc_size_table {int dummy; } ;
struct nlattr {int dummy; } ;
struct Qdisc {int flags; int /*<<< orphan*/  rate_est; int /*<<< orphan*/  bstats; struct qdisc_size_table* stab; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* change ) (struct Qdisc*,struct nlattr*) ;} ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (struct qdisc_size_table*) ; 
 int FUNC1 (struct qdisc_size_table*) ; 
 size_t TCA_OPTIONS ; 
 size_t TCA_RATE ; 
 size_t TCA_STAB ; 
 int TCQ_F_MQROOT ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct nlattr*) ; 
 struct qdisc_size_table* FUNC3 (struct nlattr*) ; 
 int /*<<< orphan*/  FUNC4 (struct qdisc_size_table*) ; 
 int /*<<< orphan*/  FUNC5 (struct Qdisc*) ; 
 int FUNC6 (struct Qdisc*,struct nlattr*) ; 

__attribute__((used)) static int FUNC7(struct Qdisc *sch, struct nlattr **tca)
{
	struct qdisc_size_table *stab = NULL;
	int err = 0;

	if (tca[TCA_OPTIONS]) {
		if (sch->ops->change == NULL)
			return -EINVAL;
		err = sch->ops->change(sch, tca[TCA_OPTIONS]);
		if (err)
			return err;
	}

	if (tca[TCA_STAB]) {
		stab = FUNC3(tca[TCA_STAB]);
		if (FUNC0(stab))
			return FUNC1(stab);
	}

	FUNC4(sch->stab);
	sch->stab = stab;

	if (tca[TCA_RATE]) {
		/* NB: ignores errors from replace_estimator
		   because change can't be undone. */
		if (sch->flags & TCQ_F_MQROOT)
			goto out;
		FUNC2(&sch->bstats, &sch->rate_est,
					    FUNC5(sch),
					    tca[TCA_RATE]);
	}
out:
	return 0;
}