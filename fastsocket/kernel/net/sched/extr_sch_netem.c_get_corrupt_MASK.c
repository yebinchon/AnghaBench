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
struct tc_netem_corrupt {int /*<<< orphan*/  correlation; int /*<<< orphan*/  probability; } ;
struct nlattr {int dummy; } ;
struct netem_sched_data {int /*<<< orphan*/  corrupt_cor; int /*<<< orphan*/  corrupt; } ;
struct Qdisc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct tc_netem_corrupt* FUNC1 (struct nlattr const*) ; 
 struct netem_sched_data* FUNC2 (struct Qdisc*) ; 

__attribute__((used)) static void FUNC3(struct Qdisc *sch, const struct nlattr *attr)
{
	struct netem_sched_data *q = FUNC2(sch);
	const struct tc_netem_corrupt *r = FUNC1(attr);

	q->corrupt = r->probability;
	FUNC0(&q->corrupt_cor, r->correlation);
}