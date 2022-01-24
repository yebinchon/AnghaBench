#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct htb_sched {scalar_t__ wait_pq; int /*<<< orphan*/  clhash; } ;
struct TYPE_10__ {TYPE_6__* q; } ;
struct TYPE_11__ {TYPE_3__ leaf; } ;
struct htb_class {scalar_t__ cmode; scalar_t__ refcnt; scalar_t__ level; int /*<<< orphan*/  pq_node; scalar_t__ prio_activity; TYPE_5__* parent; int /*<<< orphan*/  common; TYPE_4__ un; scalar_t__ filter_cnt; scalar_t__ children; } ;
struct Qdisc {int /*<<< orphan*/  dev_queue; } ;
struct TYPE_9__ {unsigned int qlen; } ;
struct TYPE_13__ {TYPE_2__ q; } ;
struct TYPE_8__ {int /*<<< orphan*/  classid; } ;
struct TYPE_12__ {int /*<<< orphan*/  children; TYPE_1__ common; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EBUSY ; 
 scalar_t__ HTB_CAN_SEND ; 
 int /*<<< orphan*/  FUNC1 (struct htb_sched*,struct htb_class*) ; 
 scalar_t__ FUNC2 (struct htb_class*) ; 
 int /*<<< orphan*/  FUNC3 (struct htb_sched*,struct htb_class*,struct Qdisc*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  pfifo_qdisc_ops ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct Qdisc* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct Qdisc*) ; 
 struct htb_sched* FUNC8 (struct Qdisc*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_6__*,unsigned int) ; 
 int /*<<< orphan*/  FUNC11 (struct Qdisc*) ; 
 int /*<<< orphan*/  FUNC12 (struct Qdisc*) ; 

__attribute__((used)) static int FUNC13(struct Qdisc *sch, unsigned long arg)
{
	struct htb_sched *q = FUNC8(sch);
	struct htb_class *cl = (struct htb_class *)arg;
	unsigned int qlen;
	struct Qdisc *new_q = NULL;
	int last_child = 0;

	// TODO: why don't allow to delete subtree ? references ? does
	// tc subsys quarantee us that in htb_destroy it holds no class
	// refs so that we can remove children safely there ?
	if (cl->children || cl->filter_cnt)
		return -EBUSY;

	if (!cl->level && FUNC2(cl)) {
		new_q = FUNC6(FUNC7(sch), sch->dev_queue,
					  &pfifo_qdisc_ops,
					  cl->parent->common.classid);
		last_child = 1;
	}

	FUNC11(sch);

	if (!cl->level) {
		qlen = cl->un.leaf.q->q.qlen;
		FUNC9(cl->un.leaf.q);
		FUNC10(cl->un.leaf.q, qlen);
	}

	/* delete from hash and active; remainder in destroy_class */
	FUNC5(&q->clhash, &cl->common);
	if (cl->parent)
		cl->parent->children--;

	if (cl->prio_activity)
		FUNC1(q, cl);

	if (cl->cmode != HTB_CAN_SEND)
		FUNC4(&cl->pq_node, q->wait_pq + cl->level);

	if (last_child)
		FUNC3(q, cl, new_q);

	FUNC0(--cl->refcnt == 0);
	/*
	 * This shouldn't happen: we "hold" one cops->get() when called
	 * from tc_ctl_tclass; the destroy method is done from cops->put().
	 */

	FUNC12(sch);
	return 0;
}