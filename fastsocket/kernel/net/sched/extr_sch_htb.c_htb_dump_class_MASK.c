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
struct tcmsg {int /*<<< orphan*/  tcm_info; int /*<<< orphan*/  tcm_handle; int /*<<< orphan*/  tcm_parent; } ;
struct tc_htb_opt {scalar_t__ level; int /*<<< orphan*/  prio; int /*<<< orphan*/  quantum; int /*<<< orphan*/  cbuffer; int /*<<< orphan*/  ceil; int /*<<< orphan*/  buffer; int /*<<< orphan*/  rate; } ;
struct sk_buff {int len; } ;
struct nlattr {int dummy; } ;
struct TYPE_13__ {TYPE_4__* q; } ;
struct TYPE_14__ {TYPE_5__ leaf; } ;
struct TYPE_11__ {int /*<<< orphan*/  classid; } ;
struct htb_class {scalar_t__ level; int /*<<< orphan*/  prio; int /*<<< orphan*/  quantum; int /*<<< orphan*/  cbuffer; TYPE_8__* ceil; int /*<<< orphan*/  buffer; TYPE_7__* rate; TYPE_6__ un; TYPE_3__ common; TYPE_2__* parent; } ;
struct Qdisc {int dummy; } ;
typedef  int /*<<< orphan*/  spinlock_t ;
typedef  int /*<<< orphan*/  opt ;
struct TYPE_16__ {int /*<<< orphan*/  rate; } ;
struct TYPE_15__ {int /*<<< orphan*/  rate; } ;
struct TYPE_12__ {int /*<<< orphan*/  handle; } ;
struct TYPE_9__ {int /*<<< orphan*/  classid; } ;
struct TYPE_10__ {TYPE_1__ common; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,int /*<<< orphan*/ ,int,struct tc_htb_opt*) ; 
 int /*<<< orphan*/  TCA_HTB_PARMS ; 
 int /*<<< orphan*/  TCA_OPTIONS ; 
 int /*<<< orphan*/  TC_H_ROOT ; 
 int /*<<< orphan*/  FUNC1 (struct tc_htb_opt*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,struct nlattr*) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,struct nlattr*) ; 
 struct nlattr* FUNC4 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (struct Qdisc*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct Qdisc *sch, unsigned long arg,
			  struct sk_buff *skb, struct tcmsg *tcm)
{
	struct htb_class *cl = (struct htb_class *)arg;
	spinlock_t *root_lock = FUNC5(sch);
	struct nlattr *nest;
	struct tc_htb_opt opt;

	FUNC6(root_lock);
	tcm->tcm_parent = cl->parent ? cl->parent->common.classid : TC_H_ROOT;
	tcm->tcm_handle = cl->common.classid;
	if (!cl->level && cl->un.leaf.q)
		tcm->tcm_info = cl->un.leaf.q->handle;

	nest = FUNC4(skb, TCA_OPTIONS);
	if (nest == NULL)
		goto nla_put_failure;

	FUNC1(&opt, 0, sizeof(opt));

	opt.rate = cl->rate->rate;
	opt.buffer = cl->buffer;
	opt.ceil = cl->ceil->rate;
	opt.cbuffer = cl->cbuffer;
	opt.quantum = cl->quantum;
	opt.prio = cl->prio;
	opt.level = cl->level;
	FUNC0(skb, TCA_HTB_PARMS, sizeof(opt), &opt);

	FUNC3(skb, nest);
	FUNC7(root_lock);
	return skb->len;

nla_put_failure:
	FUNC7(root_lock);
	FUNC2(skb, nest);
	return -1;
}