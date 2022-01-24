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
struct tcamsg {scalar_t__ tca__pad2; scalar_t__ tca__pad1; int /*<<< orphan*/  tca_family; } ;
struct tc_action_ops {int (* walk ) (struct sk_buff*,struct netlink_callback*,int /*<<< orphan*/ ,struct tc_action*) ;int /*<<< orphan*/  owner; int /*<<< orphan*/  kind; } ;
struct tc_action {struct tc_action_ops* ops; } ;
struct sk_buff {int len; int /*<<< orphan*/  sk; } ;
struct nlmsghdr {int nlmsg_len; int /*<<< orphan*/  nlmsg_flags; int /*<<< orphan*/  nlmsg_type; int /*<<< orphan*/  nlmsg_seq; } ;
struct nlattr {int dummy; } ;
struct netlink_callback {int /*<<< orphan*/  skb; struct nlmsghdr* nlh; } ;
struct net {int dummy; } ;
struct TYPE_2__ {scalar_t__ pid; } ;

/* Variables and functions */
 int /*<<< orphan*/  AF_UNSPEC ; 
 TYPE_1__ FUNC0 (int /*<<< orphan*/ ) ; 
 struct tcamsg* FUNC1 (struct nlmsghdr*) ; 
 struct nlmsghdr* FUNC2 (struct sk_buff*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  NLM_F_MULTI ; 
 int /*<<< orphan*/  RTM_GETACTION ; 
 int /*<<< orphan*/  TCA_ACT_TAB ; 
 int /*<<< orphan*/  FUNC3 (int,char*,int /*<<< orphan*/ ) ; 
 struct nlattr* FUNC4 (struct nlmsghdr*) ; 
 struct net init_net ; 
 int /*<<< orphan*/  FUNC5 (struct tc_action*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*,struct nlattr*) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*,struct nlattr*) ; 
 struct nlattr* FUNC9 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct sk_buff*,unsigned char*) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 unsigned char* FUNC12 (struct sk_buff*) ; 
 struct net* FUNC13 (int /*<<< orphan*/ ) ; 
 int FUNC14 (struct sk_buff*,struct netlink_callback*,int /*<<< orphan*/ ,struct tc_action*) ; 
 struct tc_action_ops* FUNC15 (struct nlattr*) ; 

__attribute__((used)) static int
FUNC16(struct sk_buff *skb, struct netlink_callback *cb)
{
	struct net *net = FUNC13(skb->sk);
	struct nlmsghdr *nlh;
	unsigned char *b = FUNC12(skb);
	struct nlattr *nest;
	struct tc_action_ops *a_o;
	struct tc_action a;
	int ret = 0;
	struct tcamsg *t = (struct tcamsg *) FUNC1(cb->nlh);
	struct nlattr *kind = FUNC4(cb->nlh);

	if (net != &init_net)
		return 0;

	if (kind == NULL) {
		FUNC11("tc_dump_action: action bad kind\n");
		return 0;
	}

	a_o = FUNC15(kind);
	if (a_o == NULL) {
		return 0;
	}

	FUNC5(&a, 0, sizeof(struct tc_action));
	a.ops = a_o;

	if (a_o->walk == NULL) {
		FUNC3(1, "tc_dump_action: %s !capable of dumping table\n",
		     a_o->kind);
		goto nla_put_failure;
	}

	nlh = FUNC2(skb, FUNC0(cb->skb).pid, cb->nlh->nlmsg_seq,
			cb->nlh->nlmsg_type, sizeof(*t));
	t = FUNC1(nlh);
	t->tca_family = AF_UNSPEC;
	t->tca__pad1 = 0;
	t->tca__pad2 = 0;

	nest = FUNC9(skb, TCA_ACT_TAB);
	if (nest == NULL)
		goto nla_put_failure;

	ret = a_o->walk(skb, cb, RTM_GETACTION, &a);
	if (ret < 0)
		goto nla_put_failure;

	if (ret > 0) {
		FUNC8(skb, nest);
		ret = skb->len;
	} else
		FUNC7(skb, nest);

	nlh->nlmsg_len = FUNC12(skb) - b;
	if (FUNC0(cb->skb).pid && ret)
		nlh->nlmsg_flags |= NLM_F_MULTI;
	FUNC6(a_o->owner);
	return skb->len;

nla_put_failure:
nlmsg_failure:
	FUNC6(a_o->owner);
	FUNC10(skb, b);
	return skb->len;
}