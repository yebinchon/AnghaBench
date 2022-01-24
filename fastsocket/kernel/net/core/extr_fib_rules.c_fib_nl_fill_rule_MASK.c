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
typedef  int /*<<< orphan*/  u32 ;
struct sk_buff {int dummy; } ;
struct nlmsghdr {int dummy; } ;
struct fib_rules_ops {scalar_t__ (* fill ) (struct fib_rule*,struct sk_buff*,struct fib_rule_hdr*) ;int /*<<< orphan*/  family; } ;
struct fib_rule_hdr {scalar_t__ action; int /*<<< orphan*/  flags; scalar_t__ res2; scalar_t__ res1; scalar_t__ table; int /*<<< orphan*/  family; } ;
struct fib_rule {scalar_t__ action; int ifindex; scalar_t__ target; scalar_t__ mark_mask; scalar_t__ mark; scalar_t__ pref; scalar_t__* ifname; int /*<<< orphan*/ * ctarget; int /*<<< orphan*/  flags; scalar_t__ table; } ;

/* Variables and functions */
 int EMSGSIZE ; 
 int /*<<< orphan*/  FIB_RULE_DEV_DETACHED ; 
 int /*<<< orphan*/  FIB_RULE_UNRESOLVED ; 
 int /*<<< orphan*/  FRA_FWMARK ; 
 int /*<<< orphan*/  FRA_FWMASK ; 
 int /*<<< orphan*/  FRA_GOTO ; 
 int /*<<< orphan*/  FRA_IFNAME ; 
 int /*<<< orphan*/  FRA_PRIORITY ; 
 int /*<<< orphan*/  FRA_TABLE ; 
 scalar_t__ FR_ACT_GOTO ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,struct nlmsghdr*) ; 
 struct fib_rule_hdr* FUNC3 (struct nlmsghdr*) ; 
 int FUNC4 (struct sk_buff*,struct nlmsghdr*) ; 
 struct nlmsghdr* FUNC5 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int) ; 
 scalar_t__ FUNC6 (struct fib_rule*,struct sk_buff*,struct fib_rule_hdr*) ; 

__attribute__((used)) static int FUNC7(struct sk_buff *skb, struct fib_rule *rule,
			    u32 pid, u32 seq, int type, int flags,
			    struct fib_rules_ops *ops)
{
	struct nlmsghdr *nlh;
	struct fib_rule_hdr *frh;

	nlh = FUNC5(skb, pid, seq, type, sizeof(*frh), flags);
	if (nlh == NULL)
		return -EMSGSIZE;

	frh = FUNC3(nlh);
	frh->family = ops->family;
	frh->table = rule->table;
	FUNC1(skb, FRA_TABLE, rule->table);
	frh->res1 = 0;
	frh->res2 = 0;
	frh->action = rule->action;
	frh->flags = rule->flags;

	if (rule->action == FR_ACT_GOTO && rule->ctarget == NULL)
		frh->flags |= FIB_RULE_UNRESOLVED;

	if (rule->ifname[0]) {
		FUNC0(skb, FRA_IFNAME, rule->ifname);

		if (rule->ifindex == -1)
			frh->flags |= FIB_RULE_DEV_DETACHED;
	}

	if (rule->pref)
		FUNC1(skb, FRA_PRIORITY, rule->pref);

	if (rule->mark)
		FUNC1(skb, FRA_FWMARK, rule->mark);

	if (rule->mark_mask || rule->mark)
		FUNC1(skb, FRA_FWMASK, rule->mark_mask);

	if (rule->target)
		FUNC1(skb, FRA_GOTO, rule->target);

	if (ops->fill(rule, skb, frh) < 0)
		goto nla_put_failure;

	return FUNC4(skb, nlh);

nla_put_failure:
	FUNC2(skb, nlh);
	return -EMSGSIZE;
}