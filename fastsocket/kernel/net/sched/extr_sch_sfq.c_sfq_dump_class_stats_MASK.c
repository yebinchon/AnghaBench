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
typedef  int /*<<< orphan*/  xstats ;
struct tc_sfq_xstats {int /*<<< orphan*/  allot; } ;
struct sfq_sched_data {size_t* ht; int /*<<< orphan*/ * allot; TYPE_1__* qs; } ;
struct gnet_stats_queue {int /*<<< orphan*/  qlen; } ;
struct gnet_dump {int dummy; } ;
struct Qdisc {int dummy; } ;
typedef  size_t sfq_index ;
struct TYPE_2__ {int /*<<< orphan*/  qlen; } ;

/* Variables and functions */
 int FUNC0 (struct gnet_dump*,struct tc_sfq_xstats*,int) ; 
 scalar_t__ FUNC1 (struct gnet_dump*,struct gnet_stats_queue*) ; 
 struct sfq_sched_data* FUNC2 (struct Qdisc*) ; 

__attribute__((used)) static int FUNC3(struct Qdisc *sch, unsigned long cl,
				struct gnet_dump *d)
{
	struct sfq_sched_data *q = FUNC2(sch);
	sfq_index idx = q->ht[cl-1];
	struct gnet_stats_queue qs = { .qlen = q->qs[idx].qlen };
	struct tc_sfq_xstats xstats = { .allot = q->allot[idx] };

	if (FUNC1(d, &qs) < 0)
		return -1;
	return FUNC0(d, &xstats, sizeof(xstats));
}