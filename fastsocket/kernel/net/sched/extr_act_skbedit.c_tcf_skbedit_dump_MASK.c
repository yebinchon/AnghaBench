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
struct tcf_t {void* expires; void* lastuse; void* install; int /*<<< orphan*/  action; int /*<<< orphan*/  bindcnt; int /*<<< orphan*/  refcnt; int /*<<< orphan*/  index; } ;
struct TYPE_2__ {scalar_t__ expires; scalar_t__ lastuse; scalar_t__ install; } ;
struct tcf_skbedit {int flags; TYPE_1__ tcf_tm; struct tcf_t queue_mapping; struct tcf_t priority; int /*<<< orphan*/  tcf_action; int /*<<< orphan*/  tcf_bindcnt; int /*<<< orphan*/  tcf_refcnt; int /*<<< orphan*/  tcf_index; } ;
struct tc_skbedit {void* expires; void* lastuse; void* install; int /*<<< orphan*/  action; int /*<<< orphan*/  bindcnt; int /*<<< orphan*/  refcnt; int /*<<< orphan*/  index; } ;
struct tc_action {struct tcf_skbedit* priv; } ;
struct sk_buff {int len; } ;
typedef  int /*<<< orphan*/  opt ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,int /*<<< orphan*/ ,int,struct tcf_t*) ; 
 int SKBEDIT_F_PRIORITY ; 
 int SKBEDIT_F_QUEUE_MAPPING ; 
 int /*<<< orphan*/  TCA_SKBEDIT_PARMS ; 
 int /*<<< orphan*/  TCA_SKBEDIT_PRIORITY ; 
 int /*<<< orphan*/  TCA_SKBEDIT_QUEUE_MAPPING ; 
 int /*<<< orphan*/  TCA_SKBEDIT_TM ; 
 scalar_t__ jiffies ; 
 void* FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,unsigned char*) ; 
 unsigned char* FUNC3 (struct sk_buff*) ; 

__attribute__((used)) static inline int FUNC4(struct sk_buff *skb, struct tc_action *a,
				int bind, int ref)
{
	unsigned char *b = FUNC3(skb);
	struct tcf_skbedit *d = a->priv;
	struct tc_skbedit opt = {
		.index   = d->tcf_index,
		.refcnt  = d->tcf_refcnt - ref,
		.bindcnt = d->tcf_bindcnt - bind,
		.action  = d->tcf_action,
	};
	struct tcf_t t;

	FUNC0(skb, TCA_SKBEDIT_PARMS, sizeof(opt), &opt);
	if (d->flags & SKBEDIT_F_PRIORITY)
		FUNC0(skb, TCA_SKBEDIT_PRIORITY, sizeof(d->priority),
			&d->priority);
	if (d->flags & SKBEDIT_F_QUEUE_MAPPING)
		FUNC0(skb, TCA_SKBEDIT_QUEUE_MAPPING,
			sizeof(d->queue_mapping), &d->queue_mapping);
	t.install = FUNC1(jiffies - d->tcf_tm.install);
	t.lastuse = FUNC1(jiffies - d->tcf_tm.lastuse);
	t.expires = FUNC1(d->tcf_tm.expires);
	FUNC0(skb, TCA_SKBEDIT_TM, sizeof(t), &t);
	return skb->len;

nla_put_failure:
	FUNC2(skb, b);
	return -1;
}