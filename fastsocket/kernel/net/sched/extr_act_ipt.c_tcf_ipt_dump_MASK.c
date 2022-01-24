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
typedef  int /*<<< orphan*/  tm ;
struct TYPE_9__ {int /*<<< orphan*/  name; } ;
struct TYPE_10__ {TYPE_1__ user; } ;
struct tcf_t {void* expires; void* lastuse; void* install; TYPE_2__ u; scalar_t__ refcnt; scalar_t__ bindcnt; } ;
struct TYPE_15__ {scalar_t__ expires; scalar_t__ lastuse; scalar_t__ install; } ;
struct tcf_ipt {TYPE_7__ tcf_tm; int /*<<< orphan*/  tcfi_tname; int /*<<< orphan*/  tcfi_hook; int /*<<< orphan*/  tcf_index; TYPE_8__* tcfi_t; scalar_t__ tcf_refcnt; scalar_t__ tcf_bindcnt; } ;
struct tc_cnt {void* expires; void* lastuse; void* install; TYPE_2__ u; scalar_t__ refcnt; scalar_t__ bindcnt; } ;
struct tc_action {struct tcf_ipt* priv; } ;
struct sk_buff {int len; } ;
struct ipt_entry_target {void* expires; void* lastuse; void* install; TYPE_2__ u; scalar_t__ refcnt; scalar_t__ bindcnt; } ;
struct TYPE_13__ {int target_size; } ;
struct TYPE_12__ {TYPE_3__* target; } ;
struct TYPE_14__ {TYPE_5__ user; TYPE_4__ kernel; } ;
struct TYPE_16__ {TYPE_6__ u; } ;
struct TYPE_11__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,int /*<<< orphan*/ ,int,struct tcf_t*) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TCA_IPT_CNT ; 
 int /*<<< orphan*/  TCA_IPT_HOOK ; 
 int /*<<< orphan*/  TCA_IPT_INDEX ; 
 int /*<<< orphan*/  TCA_IPT_TABLE ; 
 int /*<<< orphan*/  TCA_IPT_TARG ; 
 int /*<<< orphan*/  TCA_IPT_TM ; 
 scalar_t__ jiffies ; 
 void* FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct tcf_t*) ; 
 struct tcf_t* FUNC5 (TYPE_8__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*,unsigned char*) ; 
 unsigned char* FUNC7 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int) ; 

__attribute__((used)) static int FUNC10(struct sk_buff *skb, struct tc_action *a, int bind, int ref)
{
	unsigned char *b = FUNC7(skb);
	struct tcf_ipt *ipt = a->priv;
	struct ipt_entry_target *t;
	struct tcf_t tm;
	struct tc_cnt c;

	/* for simple targets kernel size == user size
	** user name = target name
	** for foolproof you need to not assume this
	*/

	t = FUNC5(ipt->tcfi_t, ipt->tcfi_t->u.user.target_size, GFP_ATOMIC);
	if (FUNC9(!t))
		goto nla_put_failure;

	c.bindcnt = ipt->tcf_bindcnt - bind;
	c.refcnt = ipt->tcf_refcnt - ref;
	FUNC8(t->u.user.name, ipt->tcfi_t->u.kernel.target->name);

	FUNC0(skb, TCA_IPT_TARG, ipt->tcfi_t->u.user.target_size, t);
	FUNC2(skb, TCA_IPT_INDEX, ipt->tcf_index);
	FUNC2(skb, TCA_IPT_HOOK, ipt->tcfi_hook);
	FUNC0(skb, TCA_IPT_CNT, sizeof(struct tc_cnt), &c);
	FUNC1(skb, TCA_IPT_TABLE, ipt->tcfi_tname);
	tm.install = FUNC3(jiffies - ipt->tcf_tm.install);
	tm.lastuse = FUNC3(jiffies - ipt->tcf_tm.lastuse);
	tm.expires = FUNC3(ipt->tcf_tm.expires);
	FUNC0(skb, TCA_IPT_TM, sizeof (tm), &tm);
	FUNC4(t);
	return skb->len;

nla_put_failure:
	FUNC6(skb, b);
	FUNC4(t);
	return -1;
}