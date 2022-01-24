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
struct tbf_sched_data {int /*<<< orphan*/  watchdog; int /*<<< orphan*/  mtu; int /*<<< orphan*/  ptokens; int /*<<< orphan*/  buffer; int /*<<< orphan*/  tokens; int /*<<< orphan*/  t_c; int /*<<< orphan*/  qdisc; } ;
struct TYPE_2__ {scalar_t__ qlen; } ;
struct Qdisc {TYPE_1__ q; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 struct tbf_sched_data* FUNC1 (struct Qdisc*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct Qdisc* sch)
{
	struct tbf_sched_data *q = FUNC1(sch);

	FUNC2(q->qdisc);
	sch->q.qlen = 0;
	q->t_c = FUNC0();
	q->tokens = q->buffer;
	q->ptokens = q->mtu;
	FUNC3(&q->watchdog);
}