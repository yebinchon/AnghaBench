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
typedef  int /*<<< orphan*/  u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct tcmsg {unsigned long tcm_handle; int /*<<< orphan*/  tcm_info; int /*<<< orphan*/  tcm_parent; int /*<<< orphan*/  tcm_ifindex; scalar_t__ tcm__pad2; scalar_t__ tcm__pad1; int /*<<< orphan*/  tcm_family; } ;
struct tcf_proto {TYPE_1__* ops; int /*<<< orphan*/  protocol; int /*<<< orphan*/  prio; int /*<<< orphan*/  classid; int /*<<< orphan*/  q; } ;
struct sk_buff {int len; } ;
struct nlmsghdr {int nlmsg_len; } ;
struct TYPE_4__ {int /*<<< orphan*/  ifindex; } ;
struct TYPE_3__ {scalar_t__ (* dump ) (struct tcf_proto*,unsigned long,struct sk_buff*,struct tcmsg*) ;int /*<<< orphan*/  kind; } ;

/* Variables and functions */
 int /*<<< orphan*/  AF_UNSPEC ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct tcmsg* FUNC1 (struct nlmsghdr*) ; 
 struct nlmsghdr* FUNC2 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 int RTM_DELTFILTER ; 
 int /*<<< orphan*/  TCA_KIND ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*,unsigned char*) ; 
 TYPE_2__* FUNC5 (int /*<<< orphan*/ ) ; 
 unsigned char* FUNC6 (struct sk_buff*) ; 
 scalar_t__ FUNC7 (struct tcf_proto*,unsigned long,struct sk_buff*,struct tcmsg*) ; 

__attribute__((used)) static int FUNC8(struct sk_buff *skb, struct tcf_proto *tp,
			 unsigned long fh, u32 pid, u32 seq, u16 flags, int event)
{
	struct tcmsg *tcm;
	struct nlmsghdr  *nlh;
	unsigned char *b = FUNC6(skb);

	nlh = FUNC2(skb, pid, seq, event, sizeof(*tcm), flags);
	tcm = FUNC1(nlh);
	tcm->tcm_family = AF_UNSPEC;
	tcm->tcm__pad1 = 0;
	tcm->tcm__pad2 = 0;
	tcm->tcm_ifindex = FUNC5(tp->q)->ifindex;
	tcm->tcm_parent = tp->classid;
	tcm->tcm_info = FUNC3(tp->prio, tp->protocol);
	FUNC0(skb, TCA_KIND, tp->ops->kind);
	tcm->tcm_handle = fh;
	if (RTM_DELTFILTER != event) {
		tcm->tcm_handle = 0;
		if (tp->ops->dump && tp->ops->dump(tp, fh, skb, tcm) < 0)
			goto nla_put_failure;
	}
	nlh->nlmsg_len = FUNC6(skb) - b;
	return skb->len;

nlmsg_failure:
nla_put_failure:
	FUNC4(skb, b);
	return -1;
}