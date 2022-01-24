#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct sk_buff {int dummy; } ;
struct sfq_sched_data {int max_depth; int* next; size_t tail; int* ht; size_t* hash; TYPE_4__* qs; scalar_t__ quantum; int /*<<< orphan*/ * allot; TYPE_1__* dep; } ;
struct TYPE_7__ {unsigned int backlog; int /*<<< orphan*/  drops; } ;
struct TYPE_6__ {int /*<<< orphan*/  qlen; } ;
struct Qdisc {TYPE_3__ qstats; TYPE_2__ q; } ;
typedef  int sfq_index ;
struct TYPE_8__ {struct sk_buff* prev; } ;
struct TYPE_5__ {int next; } ;

/* Variables and functions */
 int SFQ_DEPTH ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 unsigned int FUNC2 (struct sk_buff*) ; 
 struct sfq_sched_data* FUNC3 (struct Qdisc*) ; 
 int /*<<< orphan*/  FUNC4 (struct sfq_sched_data*,int) ; 

__attribute__((used)) static unsigned int FUNC5(struct Qdisc *sch)
{
	struct sfq_sched_data *q = FUNC3(sch);
	sfq_index d = q->max_depth;
	struct sk_buff *skb;
	unsigned int len;

	/* Queue is full! Find the longest slot and
	   drop a packet from it */

	if (d > 1) {
		sfq_index x = q->dep[d + SFQ_DEPTH].next;
		skb = q->qs[x].prev;
		len = FUNC2(skb);
		FUNC0(skb, &q->qs[x]);
		FUNC1(skb);
		FUNC4(q, x);
		sch->q.qlen--;
		sch->qstats.drops++;
		sch->qstats.backlog -= len;
		return len;
	}

	if (d == 1) {
		/* It is difficult to believe, but ALL THE SLOTS HAVE LENGTH 1. */
		d = q->next[q->tail];
		q->next[q->tail] = q->next[d];
		q->allot[q->next[d]] += q->quantum;
		skb = q->qs[d].prev;
		len = FUNC2(skb);
		FUNC0(skb, &q->qs[d]);
		FUNC1(skb);
		FUNC4(q, d);
		sch->q.qlen--;
		q->ht[q->hash[d]] = SFQ_DEPTH;
		sch->qstats.drops++;
		sch->qstats.backlog -= len;
		return len;
	}

	return 0;
}