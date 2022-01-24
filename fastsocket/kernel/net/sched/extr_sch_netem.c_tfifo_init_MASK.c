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
struct tc_fifo_qopt {int /*<<< orphan*/  limit; } ;
struct nlattr {int dummy; } ;
struct fifo_sched_data {int /*<<< orphan*/  oldest; int /*<<< orphan*/  limit; } ;
struct Qdisc {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  tx_queue_len; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  PSCHED_PASTPERFECT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct tc_fifo_qopt* FUNC1 (struct nlattr*) ; 
 int FUNC2 (struct nlattr*) ; 
 TYPE_1__* FUNC3 (struct Qdisc*) ; 
 struct fifo_sched_data* FUNC4 (struct Qdisc*) ; 
 int /*<<< orphan*/  u32 ; 

__attribute__((used)) static int FUNC5(struct Qdisc *sch, struct nlattr *opt)
{
	struct fifo_sched_data *q = FUNC4(sch);

	if (opt) {
		struct tc_fifo_qopt *ctl = FUNC1(opt);
		if (FUNC2(opt) < sizeof(*ctl))
			return -EINVAL;

		q->limit = ctl->limit;
	} else
		q->limit = FUNC0(u32, FUNC3(sch)->tx_queue_len, 1);

	q->oldest = PSCHED_PASTPERFECT;
	return 0;
}