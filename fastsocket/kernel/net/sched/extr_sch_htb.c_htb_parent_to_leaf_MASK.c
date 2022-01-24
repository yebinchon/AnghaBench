#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct htb_sched {scalar_t__ wait_pq; } ;
struct TYPE_3__ {struct Qdisc* q; int /*<<< orphan*/  drop_list; } ;
struct TYPE_4__ {TYPE_1__ leaf; int /*<<< orphan*/  inner; } ;
struct htb_class {scalar_t__ cmode; int /*<<< orphan*/  t_c; int /*<<< orphan*/  cbuffer; int /*<<< orphan*/  ctokens; int /*<<< orphan*/  buffer; int /*<<< orphan*/  tokens; TYPE_2__ un; scalar_t__ level; int /*<<< orphan*/  pq_node; scalar_t__ prio_activity; struct htb_class* parent; } ;
struct Qdisc {int dummy; } ;

/* Variables and functions */
 scalar_t__ HTB_CAN_SEND ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 struct Qdisc noop_qdisc ; 
 int /*<<< orphan*/  FUNC4 () ; 

__attribute__((used)) static void FUNC5(struct htb_sched *q, struct htb_class *cl,
			       struct Qdisc *new_q)
{
	struct htb_class *parent = cl->parent;

	FUNC1(cl->level || !cl->un.leaf.q || cl->prio_activity);

	if (parent->cmode != HTB_CAN_SEND)
		FUNC2(&parent->pq_node, q->wait_pq + parent->level);

	parent->level = 0;
	FUNC3(&parent->un.inner, 0, sizeof(parent->un.inner));
	FUNC0(&parent->un.leaf.drop_list);
	parent->un.leaf.q = new_q ? new_q : &noop_qdisc;
	parent->tokens = parent->buffer;
	parent->ctokens = parent->cbuffer;
	parent->t_c = FUNC4();
	parent->cmode = HTB_CAN_SEND;
}