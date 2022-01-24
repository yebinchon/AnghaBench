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
struct tbf_sched_data {int /*<<< orphan*/  qdisc; scalar_t__ R_tab; scalar_t__ P_tab; int /*<<< orphan*/  watchdog; } ;
struct Qdisc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct tbf_sched_data* FUNC1 (struct Qdisc*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct Qdisc *sch)
{
	struct tbf_sched_data *q = FUNC1(sch);

	FUNC3(&q->watchdog);

	if (q->P_tab)
		FUNC2(q->P_tab);
	if (q->R_tab)
		FUNC2(q->R_tab);

	FUNC0(q->qdisc);
}