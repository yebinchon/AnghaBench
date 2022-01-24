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
struct tcf_t {int nkeys; void* expires; void* lastuse; void* install; scalar_t__ bindcnt; scalar_t__ refcnt; int /*<<< orphan*/  action; int /*<<< orphan*/  flags; int /*<<< orphan*/  index; int /*<<< orphan*/  keys; } ;
struct TYPE_2__ {scalar_t__ expires; scalar_t__ lastuse; scalar_t__ install; } ;
struct tcf_pedit {int tcfp_nkeys; TYPE_1__ tcf_tm; scalar_t__ tcf_bindcnt; scalar_t__ tcf_refcnt; int /*<<< orphan*/  tcf_action; int /*<<< orphan*/  tcfp_flags; int /*<<< orphan*/  tcf_index; int /*<<< orphan*/  tcfp_keys; } ;
struct tc_pedit_key {int dummy; } ;
struct tc_pedit {int nkeys; void* expires; void* lastuse; void* install; scalar_t__ bindcnt; scalar_t__ refcnt; int /*<<< orphan*/  action; int /*<<< orphan*/  flags; int /*<<< orphan*/  index; int /*<<< orphan*/  keys; } ;
struct tc_action {struct tcf_pedit* priv; } ;
struct sk_buff {int len; } ;

/* Variables and functions */
 int ENOBUFS ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,int /*<<< orphan*/ ,int,struct tcf_t*) ; 
 int /*<<< orphan*/  TCA_PEDIT_PARMS ; 
 int /*<<< orphan*/  TCA_PEDIT_TM ; 
 scalar_t__ jiffies ; 
 void* FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct tcf_t*) ; 
 struct tcf_t* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*,unsigned char*) ; 
 unsigned char* FUNC6 (struct sk_buff*) ; 
 scalar_t__ FUNC7 (int) ; 

__attribute__((used)) static int FUNC8(struct sk_buff *skb, struct tc_action *a,
			  int bind, int ref)
{
	unsigned char *b = FUNC6(skb);
	struct tcf_pedit *p = a->priv;
	struct tc_pedit *opt;
	struct tcf_t t;
	int s;

	s = sizeof(*opt) + p->tcfp_nkeys * sizeof(struct tc_pedit_key);

	/* netlink spinlocks held above us - must use ATOMIC */
	opt = FUNC3(s, GFP_ATOMIC);
	if (FUNC7(!opt))
		return -ENOBUFS;

	FUNC4(opt->keys, p->tcfp_keys,
	       p->tcfp_nkeys * sizeof(struct tc_pedit_key));
	opt->index = p->tcf_index;
	opt->nkeys = p->tcfp_nkeys;
	opt->flags = p->tcfp_flags;
	opt->action = p->tcf_action;
	opt->refcnt = p->tcf_refcnt - ref;
	opt->bindcnt = p->tcf_bindcnt - bind;

	FUNC0(skb, TCA_PEDIT_PARMS, s, opt);
	t.install = FUNC1(jiffies - p->tcf_tm.install);
	t.lastuse = FUNC1(jiffies - p->tcf_tm.lastuse);
	t.expires = FUNC1(p->tcf_tm.expires);
	FUNC0(skb, TCA_PEDIT_TM, sizeof(t), &t);
	FUNC2(opt);
	return skb->len;

nla_put_failure:
	FUNC5(skb, b);
	FUNC2(opt);
	return -1;
}