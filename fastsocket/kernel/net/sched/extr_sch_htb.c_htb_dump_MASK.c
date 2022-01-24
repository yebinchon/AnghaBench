#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct tc_htb_glob {scalar_t__ debug; int /*<<< orphan*/  defcls; int /*<<< orphan*/  rate2quantum; int /*<<< orphan*/  version; int /*<<< orphan*/  direct_pkts; } ;
struct sk_buff {int len; } ;
struct nlattr {int dummy; } ;
struct htb_sched {int /*<<< orphan*/  defcls; int /*<<< orphan*/  rate2quantum; int /*<<< orphan*/  direct_pkts; } ;
struct Qdisc {int dummy; } ;
typedef  int /*<<< orphan*/  spinlock_t ;
typedef  int /*<<< orphan*/  gopt ;

/* Variables and functions */
 int /*<<< orphan*/  HTB_VER ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,int /*<<< orphan*/ ,int,struct tc_htb_glob*) ; 
 int /*<<< orphan*/  TCA_HTB_INIT ; 
 int /*<<< orphan*/  TCA_OPTIONS ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,struct nlattr*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,struct nlattr*) ; 
 struct nlattr* FUNC3 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 struct htb_sched* FUNC4 (struct Qdisc*) ; 
 int /*<<< orphan*/ * FUNC5 (struct Qdisc*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct Qdisc *sch, struct sk_buff *skb)
{
	spinlock_t *root_lock = FUNC5(sch);
	struct htb_sched *q = FUNC4(sch);
	struct nlattr *nest;
	struct tc_htb_glob gopt;

	FUNC6(root_lock);

	gopt.direct_pkts = q->direct_pkts;
	gopt.version = HTB_VER;
	gopt.rate2quantum = q->rate2quantum;
	gopt.defcls = q->defcls;
	gopt.debug = 0;

	nest = FUNC3(skb, TCA_OPTIONS);
	if (nest == NULL)
		goto nla_put_failure;
	FUNC0(skb, TCA_HTB_INIT, sizeof(gopt), &gopt);
	FUNC2(skb, nest);

	FUNC7(root_lock);
	return skb->len;

nla_put_failure:
	FUNC7(root_lock);
	FUNC1(skb, nest);
	return -1;
}