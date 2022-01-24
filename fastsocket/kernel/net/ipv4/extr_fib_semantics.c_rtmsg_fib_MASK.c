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
typedef  int /*<<< orphan*/  u32 ;
struct sk_buff {int dummy; } ;
struct nl_info {int /*<<< orphan*/  nl_net; TYPE_1__* nlh; int /*<<< orphan*/  pid; } ;
struct fib_alias {int /*<<< orphan*/  fa_info; int /*<<< orphan*/  fa_tos; int /*<<< orphan*/  fa_scope; int /*<<< orphan*/  fa_type; } ;
typedef  int /*<<< orphan*/  __be32 ;
struct TYPE_2__ {int /*<<< orphan*/  nlmsg_seq; } ;

/* Variables and functions */
 int EMSGSIZE ; 
 int ENOBUFS ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  RTNLGRP_IPV4_ROUTE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 struct sk_buff* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

void FUNC7(int event, __be32 key, struct fib_alias *fa,
	       int dst_len, u32 tb_id, struct nl_info *info,
	       unsigned int nlm_flags)
{
	struct sk_buff *skb;
	u32 seq = info->nlh ? info->nlh->nlmsg_seq : 0;
	int err = -ENOBUFS;

	skb = FUNC4(FUNC2(fa->fa_info), GFP_KERNEL);
	if (skb == NULL)
		goto errout;

	err = FUNC1(skb, info->pid, seq, event, tb_id,
			    fa->fa_type, fa->fa_scope, key, dst_len,
			    fa->fa_tos, fa->fa_info, nlm_flags);
	if (err < 0) {
		/* -EMSGSIZE implies BUG in fib_nlmsg_size() */
		FUNC0(err == -EMSGSIZE);
		FUNC3(skb);
		goto errout;
	}
	FUNC5(skb, info->nl_net, info->pid, RTNLGRP_IPV4_ROUTE,
		    info->nlh, GFP_KERNEL);
	return;
errout:
	if (err < 0)
		FUNC6(info->nl_net, RTNLGRP_IPV4_ROUTE, err);
}