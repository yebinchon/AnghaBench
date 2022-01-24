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
struct multiq_sched_data {int bands; int /*<<< orphan*/ * queues; int /*<<< orphan*/  filter_list; } ;
struct Qdisc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct multiq_sched_data* FUNC2 (struct Qdisc*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC4(struct Qdisc *sch)
{
	int band;
	struct multiq_sched_data *q = FUNC2(sch);

	FUNC3(&q->filter_list);
	for (band = 0; band < q->bands; band++)
		FUNC1(q->queues[band]);

	FUNC0(q->queues);
}