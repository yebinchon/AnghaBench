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
struct sk_buff {int dummy; } ;
struct red_sched_data {struct Qdisc* qdisc; } ;
struct Qdisc {TYPE_1__* ops; } ;
struct TYPE_2__ {struct sk_buff* (* peek ) (struct Qdisc*) ;} ;

/* Variables and functions */
 struct red_sched_data* FUNC0 (struct Qdisc*) ; 
 struct sk_buff* FUNC1 (struct Qdisc*) ; 

__attribute__((used)) static struct sk_buff * FUNC2(struct Qdisc* sch)
{
	struct red_sched_data *q = FUNC0(sch);
	struct Qdisc *child = q->qdisc;

	return child->ops->peek(child);
}