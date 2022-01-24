#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct sk_buff {int dummy; } ;
struct htb_sched {scalar_t__ wait_pq; int /*<<< orphan*/  now; } ;
struct TYPE_5__ {int bytes; int packets; } ;
struct TYPE_4__ {int /*<<< orphan*/  borrows; int /*<<< orphan*/  lends; } ;
struct htb_class {int level; long tokens; int cmode; struct htb_class* parent; TYPE_2__ bstats; int /*<<< orphan*/  pq_node; int /*<<< orphan*/  t_c; TYPE_1__ xstats; int /*<<< orphan*/  mbuffer; } ;
typedef  enum htb_cmode { ____Placeholder_htb_cmode } htb_cmode ;
struct TYPE_6__ {int gso_segs; } ;

/* Variables and functions */
 int HTB_CAN_SEND ; 
 int /*<<< orphan*/  FUNC0 (struct htb_class*,int,long) ; 
 int /*<<< orphan*/  FUNC1 (struct htb_class*,int,long) ; 
 int /*<<< orphan*/  FUNC2 (struct htb_sched*,struct htb_class*,long) ; 
 int /*<<< orphan*/  FUNC3 (struct htb_sched*,struct htb_class*,long*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,scalar_t__) ; 
 long FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct sk_buff*) ; 
 scalar_t__ FUNC7 (struct sk_buff*) ; 
 TYPE_3__* FUNC8 (struct sk_buff*) ; 

__attribute__((used)) static void FUNC9(struct htb_sched *q, struct htb_class *cl,
			     int level, struct sk_buff *skb)
{
	int bytes = FUNC6(skb);
	enum htb_cmode old_mode;
	long diff;

	while (cl) {
		diff = FUNC5(q->now, cl->t_c, cl->mbuffer);
		if (cl->level >= level) {
			if (cl->level == level)
				cl->xstats.lends++;
			FUNC1(cl, bytes, diff);
		} else {
			cl->xstats.borrows++;
			cl->tokens += diff;	/* we moved t_c; update tokens */
		}
		FUNC0(cl, bytes, diff);
		cl->t_c = q->now;

		old_mode = cl->cmode;
		diff = 0;
		FUNC3(q, cl, &diff);
		if (old_mode != cl->cmode) {
			if (old_mode != HTB_CAN_SEND)
				FUNC4(&cl->pq_node, q->wait_pq + cl->level);
			if (cl->cmode != HTB_CAN_SEND)
				FUNC2(q, cl, diff);
		}

		/* update byte stats except for leaves which are already updated */
		if (cl->level) {
			cl->bstats.bytes += bytes;
			cl->bstats.packets += FUNC7(skb)?
					FUNC8(skb)->gso_segs:1;
		}
		cl = cl->parent;
	}
}