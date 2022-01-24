#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_8__ ;
typedef  struct TYPE_15__   TYPE_7__ ;
typedef  struct TYPE_14__   TYPE_6__ ;
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct sk_buff {int dummy; } ;
struct qfq_sched {int dummy; } ;
struct TYPE_12__ {int /*<<< orphan*/  packets; int /*<<< orphan*/  bytes; } ;
struct TYPE_10__ {int /*<<< orphan*/  drops; } ;
struct TYPE_9__ {int classid; } ;
struct qfq_class {scalar_t__ lmax; TYPE_8__* qdisc; TYPE_4__ bstats; TYPE_2__ qstats; int /*<<< orphan*/  inv_w; TYPE_1__ common; } ;
struct TYPE_14__ {int /*<<< orphan*/  qlen; } ;
struct TYPE_13__ {int /*<<< orphan*/  packets; int /*<<< orphan*/  bytes; } ;
struct TYPE_11__ {int /*<<< orphan*/  drops; } ;
struct Qdisc {TYPE_6__ q; TYPE_5__ bstats; TYPE_3__ qstats; } ;
struct TYPE_15__ {int qlen; } ;
struct TYPE_16__ {TYPE_7__ q; } ;

/* Variables and functions */
 int NET_XMIT_SUCCESS ; 
 int __NET_XMIT_BYPASS ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,...) ; 
 int FUNC3 (struct sk_buff*,TYPE_8__*) ; 
 scalar_t__ FUNC4 (struct sk_buff*) ; 
 struct qfq_sched* FUNC5 (struct Qdisc*) ; 
 int /*<<< orphan*/  FUNC6 (struct qfq_sched*,struct qfq_class*,scalar_t__) ; 
 struct qfq_class* FUNC7 (struct sk_buff*,struct Qdisc*,int*) ; 
 int /*<<< orphan*/  FUNC8 (struct qfq_sched*,struct qfq_class*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int) ; 

__attribute__((used)) static int FUNC10(struct sk_buff *skb, struct Qdisc *sch)
{
	struct qfq_sched *q = FUNC5(sch);
	struct qfq_class *cl;
	int err;

	cl = FUNC7(skb, sch, &err);
	if (cl == NULL) {
		if (err & __NET_XMIT_BYPASS)
			sch->qstats.drops++;
		FUNC0(skb);
		return err;
	}
	FUNC2("qfq_enqueue: cl = %x\n", cl->common.classid);

	if (FUNC9(cl->lmax < FUNC4(skb))) {
		FUNC2("qfq: increasing maxpkt from %u to %u for class %u",
			  cl->lmax, FUNC4(skb), cl->common.classid);
		FUNC8(q, cl, cl->inv_w,
					    FUNC4(skb), 0);
	}

	err = FUNC3(skb, cl->qdisc);
	if (FUNC9(err != NET_XMIT_SUCCESS)) {
		FUNC2("qfq_enqueue: enqueue failed %d\n", err);
		if (FUNC1(err)) {
			cl->qstats.drops++;
			sch->qstats.drops++;
		}
		return err;
	}

	cl->bstats.bytes += FUNC4(skb);
	cl->bstats.packets++;
	sch->bstats.bytes += FUNC4(skb);
	sch->bstats.packets++;
	++sch->q.qlen;

	/* If the new skb is not the head of queue, then done here. */
	if (cl->qdisc->q.qlen != 1)
		return err;

	/* If reach this point, queue q was idle */
	FUNC6(q, cl, FUNC4(skb));

	return err;
}