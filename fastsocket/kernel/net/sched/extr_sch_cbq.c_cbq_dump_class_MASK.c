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
struct tcmsg {int /*<<< orphan*/  tcm_info; int /*<<< orphan*/  tcm_handle; int /*<<< orphan*/  tcm_parent; } ;
struct sk_buff {int len; } ;
struct nlattr {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  classid; } ;
struct cbq_class {TYPE_3__* q; TYPE_2__ common; TYPE_4__* tparent; } ;
struct Qdisc {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  classid; } ;
struct TYPE_8__ {TYPE_1__ common; } ;
struct TYPE_7__ {int /*<<< orphan*/  handle; } ;

/* Variables and functions */
 int /*<<< orphan*/  TCA_OPTIONS ; 
 int /*<<< orphan*/  TC_H_ROOT ; 
 scalar_t__ FUNC0 (struct sk_buff*,struct cbq_class*) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,struct nlattr*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,struct nlattr*) ; 
 struct nlattr* FUNC3 (struct sk_buff*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(struct Qdisc *sch, unsigned long arg,
	       struct sk_buff *skb, struct tcmsg *tcm)
{
	struct cbq_class *cl = (struct cbq_class*)arg;
	struct nlattr *nest;

	if (cl->tparent)
		tcm->tcm_parent = cl->tparent->common.classid;
	else
		tcm->tcm_parent = TC_H_ROOT;
	tcm->tcm_handle = cl->common.classid;
	tcm->tcm_info = cl->q->handle;

	nest = FUNC3(skb, TCA_OPTIONS);
	if (nest == NULL)
		goto nla_put_failure;
	if (FUNC0(skb, cl) < 0)
		goto nla_put_failure;
	FUNC2(skb, nest);
	return skb->len;

nla_put_failure:
	FUNC1(skb, nest);
	return -1;
}