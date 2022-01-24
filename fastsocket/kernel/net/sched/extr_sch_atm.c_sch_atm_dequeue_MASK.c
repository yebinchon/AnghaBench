#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_9__ ;
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct sk_buff {int /*<<< orphan*/  truesize; struct atm_qdisc_data* data; } ;
struct TYPE_10__ {struct atm_flow_data* next; } ;
struct atm_qdisc_data {TYPE_1__ link; } ;
struct atm_flow_data {scalar_t__ hdr_len; TYPE_3__* vcc; int /*<<< orphan*/  hdr; TYPE_4__* q; struct atm_flow_data* next; } ;
struct Qdisc {int dummy; } ;
struct TYPE_15__ {TYPE_3__* vcc; } ;
struct TYPE_14__ {int /*<<< orphan*/  sk_wmem_alloc; } ;
struct TYPE_13__ {TYPE_2__* ops; } ;
struct TYPE_12__ {int /*<<< orphan*/  (* send ) (TYPE_3__*,struct sk_buff*) ;} ;
struct TYPE_11__ {struct sk_buff* (* peek ) (TYPE_4__*) ;} ;

/* Variables and functions */
 TYPE_9__* FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (char*,struct atm_flow_data*,...) ; 
 struct sk_buff* FUNC6 (TYPE_4__*) ; 
 struct atm_qdisc_data* FUNC7 (struct Qdisc*) ; 
 TYPE_5__* FUNC8 (TYPE_3__*) ; 
 scalar_t__ FUNC9 (struct sk_buff*) ; 
 struct Qdisc* FUNC10 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC11 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC12 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct sk_buff*,scalar_t__) ; 
 struct sk_buff* FUNC14 (struct sk_buff*,scalar_t__) ; 
 struct sk_buff* FUNC15 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_3__*,struct sk_buff*) ; 
 scalar_t__ FUNC17 (int) ; 

__attribute__((used)) static void FUNC18(unsigned long data)
{
	struct Qdisc *sch = (struct Qdisc *)data;
	struct atm_qdisc_data *p = FUNC7(sch);
	struct atm_flow_data *flow;
	struct sk_buff *skb;

	FUNC5("sch_atm_dequeue(sch %p,[qdisc %p])\n", sch, p);
	for (flow = p->link.next; flow; flow = flow->next)
		/*
		 * If traffic is properly shaped, this won't generate nasty
		 * little bursts. Otherwise, it may ... (but that's okay)
		 */
		while ((skb = flow->q->ops->peek(flow->q))) {
			if (!FUNC1(flow->vcc, skb->truesize))
				break;

			skb = FUNC6(flow->q);
			if (FUNC17(!skb))
				break;

			FUNC5("atm_tc_dequeue: sending on class %p\n", flow);
			/* remove any LL header somebody else has attached */
			FUNC12(skb, FUNC11(skb));
			if (FUNC9(skb) < flow->hdr_len) {
				struct sk_buff *new;

				new = FUNC14(skb, flow->hdr_len);
				FUNC3(skb);
				if (!new)
					continue;
				skb = new;
			}
			FUNC5("sch_atm_dequeue: ip %p, data %p\n",
				 FUNC10(skb), skb->data);
			FUNC0(skb)->vcc = flow->vcc;
			FUNC4(FUNC13(skb, flow->hdr_len), flow->hdr,
			       flow->hdr_len);
			FUNC2(skb->truesize,
				   &FUNC8(flow->vcc)->sk_wmem_alloc);
			/* atm.atm_options are already set by atm_tc_enqueue */
			flow->vcc->send(flow->vcc, skb);
		}
}