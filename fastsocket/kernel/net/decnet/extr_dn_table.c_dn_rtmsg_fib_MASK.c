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
struct nlmsghdr {int /*<<< orphan*/  nlmsg_seq; } ;
struct netlink_skb_parms {int /*<<< orphan*/  pid; } ;
struct dn_fib_node {int /*<<< orphan*/  fn_key; int /*<<< orphan*/  fn_scope; int /*<<< orphan*/  fn_type; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dn_fib_node*) ; 
 int EMSGSIZE ; 
 int ENOBUFS ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  RTNLGRP_DECnet_ROUTE ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  init_net ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*) ; 
 struct sk_buff* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct nlmsghdr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC8(int event, struct dn_fib_node *f, int z, u32 tb_id,
			struct nlmsghdr *nlh, struct netlink_skb_parms *req)
{
	struct sk_buff *skb;
	u32 pid = req ? req->pid : 0;
	int err = -ENOBUFS;

	skb = FUNC5(FUNC3(FUNC0(f)), GFP_KERNEL);
	if (skb == NULL)
		goto errout;

	err = FUNC2(skb, pid, nlh->nlmsg_seq, event, tb_id,
			       f->fn_type, f->fn_scope, &f->fn_key, z,
			       FUNC0(f), 0);
	if (err < 0) {
		/* -EMSGSIZE implies BUG in dn_fib_nlmsg_size() */
		FUNC1(err == -EMSGSIZE);
		FUNC4(skb);
		goto errout;
	}
	FUNC6(skb, &init_net, pid, RTNLGRP_DECnet_ROUTE, nlh, GFP_KERNEL);
	return;
errout:
	if (err < 0)
		FUNC7(&init_net, RTNLGRP_DECnet_ROUTE, err);
}