#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct sk_buff {int dummy; } ;
struct TYPE_11__ {int /*<<< orphan*/  pdrop; int /*<<< orphan*/  forced_mark; int /*<<< orphan*/  forced_drop; int /*<<< orphan*/  prob_mark; int /*<<< orphan*/  prob_drop; } ;
struct TYPE_13__ {int /*<<< orphan*/  qavg; } ;
struct red_sched_data {TYPE_3__ stats; TYPE_5__ parms; struct Qdisc* qdisc; } ;
struct TYPE_12__ {int /*<<< orphan*/  drops; int /*<<< orphan*/  overlimits; int /*<<< orphan*/  backlog; } ;
struct TYPE_10__ {int /*<<< orphan*/  qlen; } ;
struct TYPE_9__ {int /*<<< orphan*/  packets; int /*<<< orphan*/  bytes; } ;
struct Qdisc {TYPE_4__ qstats; TYPE_2__ q; TYPE_1__ bstats; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 int NET_XMIT_CN ; 
 int NET_XMIT_SUCCESS ; 
#define  RED_DONT_MARK 130 
#define  RED_HARD_MARK 129 
#define  RED_PROB_MARK 128 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,struct Qdisc*) ; 
 int FUNC4 (struct sk_buff*,struct Qdisc*) ; 
 scalar_t__ FUNC5 (struct sk_buff*) ; 
 struct red_sched_data* FUNC6 (struct Qdisc*) ; 
 int FUNC7 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_5__*) ; 
 scalar_t__ FUNC10 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC11 (struct red_sched_data*) ; 
 int /*<<< orphan*/  FUNC12 (struct red_sched_data*) ; 

__attribute__((used)) static int FUNC13(struct sk_buff *skb, struct Qdisc* sch)
{
	struct red_sched_data *q = FUNC6(sch);
	struct Qdisc *child = q->qdisc;
	int ret;

	q->parms.qavg = FUNC8(&q->parms, child->qstats.backlog);

	if (FUNC10(&q->parms))
		FUNC9(&q->parms);

	switch (FUNC7(&q->parms, q->parms.qavg)) {
		case RED_DONT_MARK:
			break;

		case RED_PROB_MARK:
			sch->qstats.overlimits++;
			if (!FUNC11(q) || !FUNC0(skb)) {
				q->stats.prob_drop++;
				goto congestion_drop;
			}

			q->stats.prob_mark++;
			break;

		case RED_HARD_MARK:
			sch->qstats.overlimits++;
			if (FUNC12(q) || !FUNC11(q) ||
			    !FUNC0(skb)) {
				q->stats.forced_drop++;
				goto congestion_drop;
			}

			q->stats.forced_mark++;
			break;
	}

	ret = FUNC4(skb, child);
	if (FUNC1(ret == NET_XMIT_SUCCESS)) {
		sch->bstats.bytes += FUNC5(skb);
		sch->bstats.packets++;
		sch->q.qlen++;
	} else if (FUNC2(ret)) {
		q->stats.pdrop++;
		sch->qstats.drops++;
	}
	return ret;

congestion_drop:
	FUNC3(skb, sch);
	return NET_XMIT_CN;
}