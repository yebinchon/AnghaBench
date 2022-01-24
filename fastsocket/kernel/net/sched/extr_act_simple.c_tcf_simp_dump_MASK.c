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
struct tcf_defact {TYPE_1__ tcf_tm; int /*<<< orphan*/  tcfd_defdata; int /*<<< orphan*/  tcf_action; int /*<<< orphan*/  tcf_bindcnt; int /*<<< orphan*/  tcf_refcnt; int /*<<< orphan*/  tcf_index; } ;
struct tc_defact {void* expires; void* lastuse; void* install; int /*<<< orphan*/  action; int /*<<< orphan*/  bindcnt; int /*<<< orphan*/  refcnt; int /*<<< orphan*/  index; } ;
struct tc_action {struct tcf_defact* priv; } ;
struct sk_buff {int len; } ;
typedef  int /*<<< orphan*/  opt ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,int /*<<< orphan*/ ,int,struct tcf_t*) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TCA_DEF_DATA ; 
 int /*<<< orphan*/  TCA_DEF_PARMS ; 
 int /*<<< orphan*/  TCA_DEF_TM ; 
 scalar_t__ jiffies ; 
 void* FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,unsigned char*) ; 
 unsigned char* FUNC4 (struct sk_buff*) ; 

__attribute__((used)) static inline int FUNC5(struct sk_buff *skb, struct tc_action *a,
				int bind, int ref)
{
	unsigned char *b = FUNC4(skb);
	struct tcf_defact *d = a->priv;
	struct tc_defact opt = {
		.index   = d->tcf_index,
		.refcnt  = d->tcf_refcnt - ref,
		.bindcnt = d->tcf_bindcnt - bind,
		.action  = d->tcf_action,
	};
	struct tcf_t t;

	FUNC0(skb, TCA_DEF_PARMS, sizeof(opt), &opt);
	FUNC1(skb, TCA_DEF_DATA, d->tcfd_defdata);
	t.install = FUNC2(jiffies - d->tcf_tm.install);
	t.lastuse = FUNC2(jiffies - d->tcf_tm.lastuse);
	t.expires = FUNC2(d->tcf_tm.expires);
	FUNC0(skb, TCA_DEF_TM, sizeof(t), &t);
	return skb->len;

nla_put_failure:
	FUNC3(skb, b);
	return -1;
}