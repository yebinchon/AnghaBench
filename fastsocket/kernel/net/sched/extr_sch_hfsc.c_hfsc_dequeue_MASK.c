#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u64 ;
struct sk_buff {int dummy; } ;
struct hfsc_sched {int /*<<< orphan*/  root; } ;
struct hfsc_class {int cl_flags; TYPE_4__* qdisc; int /*<<< orphan*/  cl_cumul; } ;
struct TYPE_9__ {scalar_t__ qlen; } ;
struct TYPE_7__ {int /*<<< orphan*/  overlimits; } ;
struct Qdisc {TYPE_3__ q; int /*<<< orphan*/  flags; TYPE_1__ qstats; } ;
struct TYPE_8__ {scalar_t__ qlen; } ;
struct TYPE_10__ {TYPE_2__ q; } ;

/* Variables and functions */
 int HFSC_RSC ; 
 int /*<<< orphan*/  TCQ_F_THROTTLED ; 
 struct hfsc_class* FUNC0 (struct hfsc_sched*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct Qdisc*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 struct sk_buff* FUNC3 (TYPE_4__*) ; 
 unsigned int FUNC4 (TYPE_4__*) ; 
 scalar_t__ FUNC5 (struct sk_buff*) ; 
 struct hfsc_sched* FUNC6 (struct Qdisc*) ; 
 int /*<<< orphan*/  FUNC7 (char*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC8 (struct hfsc_class*) ; 
 int /*<<< orphan*/  FUNC9 (struct hfsc_class*,unsigned int) ; 
 int /*<<< orphan*/  FUNC10 (struct hfsc_class*,unsigned int) ; 
 int /*<<< orphan*/  FUNC11 (struct hfsc_class*,scalar_t__,int /*<<< orphan*/ ) ; 
 struct hfsc_class* FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct sk_buff *
FUNC13(struct Qdisc *sch)
{
	struct hfsc_sched *q = FUNC6(sch);
	struct hfsc_class *cl;
	struct sk_buff *skb;
	u64 cur_time;
	unsigned int next_len;
	int realtime = 0;

	if (sch->q.qlen == 0)
		return NULL;

	cur_time = FUNC2();

	/*
	 * if there are eligible classes, use real-time criteria.
	 * find the class with the minimum deadline among
	 * the eligible classes.
	 */
	if ((cl = FUNC0(q, cur_time)) != NULL) {
		realtime = 1;
	} else {
		/*
		 * use link-sharing criteria
		 * get the class with the minimum vt in the hierarchy
		 */
		cl = FUNC12(&q->root, cur_time);
		if (cl == NULL) {
			sch->qstats.overlimits++;
			FUNC1(sch);
			return NULL;
		}
	}

	skb = FUNC3(cl->qdisc);
	if (skb == NULL) {
		FUNC7("HFSC", cl->qdisc);
		return NULL;
	}

	FUNC11(cl, FUNC5(skb), cur_time);
	if (realtime)
		cl->cl_cumul += FUNC5(skb);

	if (cl->qdisc->q.qlen != 0) {
		if (cl->cl_flags & HFSC_RSC) {
			/* update ed */
			next_len = FUNC4(cl->qdisc);
			if (realtime)
				FUNC10(cl, next_len);
			else
				FUNC9(cl, next_len);
		}
	} else {
		/* the class becomes passive */
		FUNC8(cl);
	}

	sch->flags &= ~TCQ_F_THROTTLED;
	sch->q.qlen--;

	return skb;
}