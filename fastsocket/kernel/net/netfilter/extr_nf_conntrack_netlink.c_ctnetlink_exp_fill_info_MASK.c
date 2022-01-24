#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u32 ;
struct sk_buff {int len; } ;
struct nlmsghdr {int dummy; } ;
struct nfgenmsg {scalar_t__ res_id; int /*<<< orphan*/  version; int /*<<< orphan*/  nfgen_family; } ;
struct TYPE_3__ {int /*<<< orphan*/  l3num; } ;
struct TYPE_4__ {TYPE_1__ src; } ;
struct nf_conntrack_expect {TYPE_2__ tuple; } ;

/* Variables and functions */
 int /*<<< orphan*/  NFNETLINK_V0 ; 
 int NFNL_SUBSYS_CTNETLINK_EXP ; 
 unsigned int NLM_F_MULTI ; 
 scalar_t__ FUNC0 (struct sk_buff*,struct nf_conntrack_expect const*) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,struct nlmsghdr*) ; 
 struct nfgenmsg* FUNC2 (struct nlmsghdr*) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,struct nlmsghdr*) ; 
 struct nlmsghdr* FUNC4 (struct sk_buff*,scalar_t__,scalar_t__,int,int,unsigned int) ; 

__attribute__((used)) static int
FUNC5(struct sk_buff *skb, u32 pid, u32 seq,
			int event, const struct nf_conntrack_expect *exp)
{
	struct nlmsghdr *nlh;
	struct nfgenmsg *nfmsg;
	unsigned int flags = pid ? NLM_F_MULTI : 0;

	event |= NFNL_SUBSYS_CTNETLINK_EXP << 8;
	nlh = FUNC4(skb, pid, seq, event, sizeof(*nfmsg), flags);
	if (nlh == NULL)
		goto nlmsg_failure;

	nfmsg = FUNC2(nlh);
	nfmsg->nfgen_family = exp->tuple.src.l3num;
	nfmsg->version	    = NFNETLINK_V0;
	nfmsg->res_id	    = 0;

	if (FUNC0(skb, exp) < 0)
		goto nla_put_failure;

	FUNC3(skb, nlh);
	return skb->len;

nlmsg_failure:
nla_put_failure:
	FUNC1(skb, nlh);
	return -1;
}