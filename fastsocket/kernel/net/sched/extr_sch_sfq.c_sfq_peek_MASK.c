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
struct sk_buff {int dummy; } ;
struct sfq_sched_data {size_t tail; size_t* next; int /*<<< orphan*/ * qs; } ;
struct Qdisc {int dummy; } ;
typedef  size_t sfq_index ;

/* Variables and functions */
 size_t SFQ_DEPTH ; 
 struct sfq_sched_data* FUNC0 (struct Qdisc*) ; 
 struct sk_buff* FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct sk_buff *
FUNC2(struct Qdisc *sch)
{
	struct sfq_sched_data *q = FUNC0(sch);
	sfq_index a;

	/* No active slots */
	if (q->tail == SFQ_DEPTH)
		return NULL;

	a = q->next[q->tail];
	return FUNC1(&q->qs[a]);
}