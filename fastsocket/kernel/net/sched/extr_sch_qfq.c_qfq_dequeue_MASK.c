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
typedef  scalar_t__ u64 ;
struct sk_buff {int dummy; } ;
struct qfq_sched {scalar_t__ V; int /*<<< orphan*/ * bitmaps; } ;
struct qfq_group {scalar_t__ F; unsigned long long slot_shift; scalar_t__ S; int /*<<< orphan*/  index; } ;
struct qfq_class {int /*<<< orphan*/  S; scalar_t__ F; int /*<<< orphan*/  qdisc; } ;
struct TYPE_2__ {int /*<<< orphan*/  qlen; } ;
struct Qdisc {TYPE_1__ q; } ;

/* Variables and functions */
 size_t ER ; 
 scalar_t__ IWSUM ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,unsigned int,unsigned long long,unsigned long long) ; 
 struct sk_buff* FUNC4 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC5 (struct sk_buff*) ; 
 struct qfq_sched* FUNC6 (struct Qdisc*) ; 
 unsigned int FUNC7 (struct qfq_sched*,struct qfq_group*) ; 
 struct qfq_group* FUNC8 (struct qfq_sched*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,unsigned long long) ; 
 struct qfq_class* FUNC10 (struct qfq_group*) ; 
 struct qfq_class* FUNC11 (struct qfq_group*) ; 
 int /*<<< orphan*/  FUNC12 (struct qfq_sched*,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC13 (struct qfq_group*,struct qfq_class*) ; 
 int /*<<< orphan*/  FUNC14 (struct qfq_sched*,scalar_t__) ; 

__attribute__((used)) static struct sk_buff *FUNC15(struct Qdisc *sch)
{
	struct qfq_sched *q = FUNC6(sch);
	struct qfq_group *grp;
	struct qfq_class *cl;
	struct sk_buff *skb;
	unsigned int len;
	u64 old_V;

	if (!q->bitmaps[ER])
		return NULL;

	grp = FUNC8(q, q->bitmaps[ER]);

	cl = FUNC10(grp);
	skb = FUNC4(cl->qdisc);
	if (!skb) {
		FUNC0(1, "qfq_dequeue: non-workconserving leaf\n");
		return NULL;
	}

	sch->q.qlen--;

	old_V = q->V;
	len = FUNC5(skb);
	q->V += (u64)len * IWSUM;
	FUNC3("qfq dequeue: len %u F %lld now %lld\n",
		 len, (unsigned long long) cl->F, (unsigned long long) q->V);

	if (FUNC13(grp, cl)) {
		u64 old_F = grp->F;

		cl = FUNC11(grp);
		if (!cl)
			FUNC1(grp->index, &q->bitmaps[ER]);
		else {
			u64 roundedS = FUNC9(cl->S, grp->slot_shift);
			unsigned int s;

			if (grp->S == roundedS)
				goto skip_unblock;
			grp->S = roundedS;
			grp->F = roundedS + (2ULL << grp->slot_shift);
			FUNC1(grp->index, &q->bitmaps[ER]);
			s = FUNC7(q, grp);
			FUNC2(grp->index, &q->bitmaps[s]);
		}

		FUNC12(q, grp->index, old_F);
	}

skip_unblock:
	FUNC14(q, old_V);

	return skb;
}