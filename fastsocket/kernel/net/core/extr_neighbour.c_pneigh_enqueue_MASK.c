#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct sk_buff {int /*<<< orphan*/  dev; } ;
struct TYPE_6__ {scalar_t__ qlen; int /*<<< orphan*/  lock; } ;
struct TYPE_5__ {unsigned long expires; } ;
struct neigh_table {TYPE_3__ proxy_queue; TYPE_1__ proxy_timer; } ;
struct neigh_parms {unsigned long proxy_delay; scalar_t__ proxy_qlen; } ;
struct TYPE_7__ {unsigned long sched_next; int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  LOCALLY_ENQUEUED ; 
 TYPE_4__* FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,struct sk_buff*) ; 
 scalar_t__ FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 unsigned long jiffies ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,unsigned long) ; 
 unsigned long FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (unsigned long,unsigned long) ; 

void FUNC11(struct neigh_table *tbl, struct neigh_parms *p,
		    struct sk_buff *skb)
{
	unsigned long now = jiffies;
	unsigned long sched_next = now + (FUNC6() % p->proxy_delay);

	if (tbl->proxy_queue.qlen > p->proxy_qlen) {
		FUNC4(skb);
		return;
	}

	FUNC0(skb)->sched_next = sched_next;
	FUNC0(skb)->flags |= LOCALLY_ENQUEUED;

	FUNC8(&tbl->proxy_queue.lock);
	if (FUNC2(&tbl->proxy_timer)) {
		if (FUNC10(tbl->proxy_timer.expires, sched_next))
			sched_next = tbl->proxy_timer.expires;
	}
	FUNC7(skb);
	FUNC3(skb->dev);
	FUNC1(&tbl->proxy_queue, skb);
	FUNC5(&tbl->proxy_timer, sched_next);
	FUNC9(&tbl->proxy_queue.lock);
}