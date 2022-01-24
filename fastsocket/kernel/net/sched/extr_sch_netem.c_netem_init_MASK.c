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
struct nlattr {int dummy; } ;
struct netem_sched_data {int /*<<< orphan*/  qdisc; int /*<<< orphan*/  watchdog; } ;
struct Qdisc {int /*<<< orphan*/  handle; int /*<<< orphan*/  dev_queue; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int FUNC1 (struct Qdisc*,struct nlattr*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct Qdisc*) ; 
 struct netem_sched_data* FUNC6 (struct Qdisc*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,struct Qdisc*) ; 
 int /*<<< orphan*/  tfifo_qdisc_ops ; 

__attribute__((used)) static int FUNC8(struct Qdisc *sch, struct nlattr *opt)
{
	struct netem_sched_data *q = FUNC6(sch);
	int ret;

	if (!opt)
		return -EINVAL;

	FUNC7(&q->watchdog, sch);

	q->qdisc = FUNC3(FUNC5(sch), sch->dev_queue,
				     &tfifo_qdisc_ops,
				     FUNC0(sch->handle, 1));
	if (!q->qdisc) {
		FUNC2("netem: qdisc create failed\n");
		return -ENOMEM;
	}

	ret = FUNC1(sch, opt);
	if (ret) {
		FUNC2("netem: change failed\n");
		FUNC4(q->qdisc);
	}
	return ret;
}