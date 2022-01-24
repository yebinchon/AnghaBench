#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct tcf_result {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  lastuse; } ;
struct TYPE_5__ {int /*<<< orphan*/  drops; } ;
struct TYPE_4__ {int /*<<< orphan*/  packets; int /*<<< orphan*/  bytes; } ;
struct tcf_gact {int tcfg_ptype; int tcf_action; int /*<<< orphan*/  tcf_lock; TYPE_3__ tcf_tm; TYPE_2__ tcf_qstats; TYPE_1__ tcf_bstats; } ;
struct tc_action {struct tcf_gact* priv; } ;
struct sk_buff {int dummy; } ;

/* Variables and functions */
 int TC_ACT_SHOT ; 
 int FUNC0 (struct tcf_gact*) ; 
 int /*<<< orphan*/  jiffies ; 
 scalar_t__ FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (struct tcf_gact*) ; 

__attribute__((used)) static int FUNC5(struct sk_buff *skb, struct tc_action *a, struct tcf_result *res)
{
	struct tcf_gact *gact = a->priv;
	int action = TC_ACT_SHOT;

	FUNC2(&gact->tcf_lock);
#ifdef CONFIG_GACT_PROB
	if (gact->tcfg_ptype)
		action = gact_rand[gact->tcfg_ptype](gact);
	else
		action = gact->tcf_action;
#else
	action = gact->tcf_action;
#endif
	gact->tcf_bstats.bytes += FUNC1(skb);
	gact->tcf_bstats.packets++;
	if (action == TC_ACT_SHOT)
		gact->tcf_qstats.drops++;
	gact->tcf_tm.lastuse = jiffies;
	FUNC3(&gact->tcf_lock);

	return action;
}