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
typedef  int /*<<< orphan*/  t ;
struct tcf_t {void* expires; void* lastuse; void* install; int /*<<< orphan*/  bindcnt; int /*<<< orphan*/  refcnt; int /*<<< orphan*/  action; int /*<<< orphan*/  index; int /*<<< orphan*/  flags; int /*<<< orphan*/  mask; int /*<<< orphan*/  new_addr; int /*<<< orphan*/  old_addr; } ;
struct TYPE_2__ {scalar_t__ expires; scalar_t__ lastuse; scalar_t__ install; } ;
struct tcf_nat {TYPE_1__ tcf_tm; int /*<<< orphan*/  tcf_bindcnt; int /*<<< orphan*/  tcf_refcnt; int /*<<< orphan*/  tcf_action; int /*<<< orphan*/  tcf_index; int /*<<< orphan*/  flags; int /*<<< orphan*/  mask; int /*<<< orphan*/  new_addr; int /*<<< orphan*/  old_addr; } ;
struct tc_nat {void* expires; void* lastuse; void* install; int /*<<< orphan*/  bindcnt; int /*<<< orphan*/  refcnt; int /*<<< orphan*/  action; int /*<<< orphan*/  index; int /*<<< orphan*/  flags; int /*<<< orphan*/  mask; int /*<<< orphan*/  new_addr; int /*<<< orphan*/  old_addr; } ;
struct tc_action {struct tcf_nat* priv; } ;
struct sk_buff {int len; } ;
typedef  int /*<<< orphan*/  opt ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,int /*<<< orphan*/ ,int,struct tcf_t*) ; 
 int /*<<< orphan*/  TCA_NAT_PARMS ; 
 int /*<<< orphan*/  TCA_NAT_TM ; 
 scalar_t__ jiffies ; 
 void* FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,unsigned char*) ; 
 unsigned char* FUNC3 (struct sk_buff*) ; 

__attribute__((used)) static int FUNC4(struct sk_buff *skb, struct tc_action *a,
			int bind, int ref)
{
	unsigned char *b = FUNC3(skb);
	struct tcf_nat *p = a->priv;
	struct tc_nat opt = {
		.old_addr = p->old_addr,
		.new_addr = p->new_addr,
		.mask     = p->mask,
		.flags    = p->flags,

		.index    = p->tcf_index,
		.action   = p->tcf_action,
		.refcnt   = p->tcf_refcnt - ref,
		.bindcnt  = p->tcf_bindcnt - bind,
	};
	struct tcf_t t;

	FUNC0(skb, TCA_NAT_PARMS, sizeof(opt), &opt);
	t.install = FUNC1(jiffies - p->tcf_tm.install);
	t.lastuse = FUNC1(jiffies - p->tcf_tm.lastuse);
	t.expires = FUNC1(p->tcf_tm.expires);
	FUNC0(skb, TCA_NAT_TM, sizeof(t), &t);

	return skb->len;

nla_put_failure:
	FUNC2(skb, b);
	return -1;
}