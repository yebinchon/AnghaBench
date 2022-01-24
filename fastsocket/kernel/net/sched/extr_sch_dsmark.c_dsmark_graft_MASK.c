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
struct dsmark_qdisc_data {struct Qdisc* q; } ;
struct TYPE_2__ {int /*<<< orphan*/  qlen; } ;
struct Qdisc {TYPE_1__ q; int /*<<< orphan*/  handle; int /*<<< orphan*/  dev_queue; } ;

/* Variables and functions */
 struct Qdisc noop_qdisc ; 
 int /*<<< orphan*/  pfifo_qdisc_ops ; 
 int /*<<< orphan*/  FUNC0 (char*,struct Qdisc*,struct dsmark_qdisc_data*,struct Qdisc*,struct Qdisc**) ; 
 struct Qdisc* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct Qdisc*) ; 
 struct dsmark_qdisc_data* FUNC3 (struct Qdisc*) ; 
 int /*<<< orphan*/  FUNC4 (struct Qdisc*) ; 
 int /*<<< orphan*/  FUNC5 (struct Qdisc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct Qdisc*) ; 
 int /*<<< orphan*/  FUNC7 (struct Qdisc*) ; 

__attribute__((used)) static int FUNC8(struct Qdisc *sch, unsigned long arg,
			struct Qdisc *new, struct Qdisc **old)
{
	struct dsmark_qdisc_data *p = FUNC3(sch);

	FUNC0("dsmark_graft(sch %p,[qdisc %p],new %p,old %p)\n",
		sch, p, new, old);

	if (new == NULL) {
		new = FUNC1(FUNC2(sch), sch->dev_queue,
					&pfifo_qdisc_ops,
					sch->handle);
		if (new == NULL)
			new = &noop_qdisc;
	}

	FUNC6(sch);
	*old = p->q;
	p->q = new;
	FUNC5(*old, (*old)->q.qlen);
	FUNC4(*old);
	FUNC7(sch);

	return 0;
}