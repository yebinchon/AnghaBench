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
struct sk_buff {struct net_device* dev; int /*<<< orphan*/  protocol; int /*<<< orphan*/  sk; } ;
struct rtmsg {int rtm_flags; } ;
struct rtattr {int dummy; } ;
struct nlmsghdr {int /*<<< orphan*/  nlmsg_seq; } ;
struct net_device {int /*<<< orphan*/  dn_ptr; } ;
struct net {int dummy; } ;
struct flowi {int fld_src; int fld_dst; int iif; int src; int dst; int oif; int /*<<< orphan*/  proto; } ;
struct dst_entry {int dummy; } ;
struct dn_skb_cb {int fld_src; int fld_dst; int iif; int src; int dst; int oif; int /*<<< orphan*/  proto; } ;
struct TYPE_5__ {int error; } ;
struct TYPE_4__ {TYPE_2__ dst; } ;
struct dn_route {int /*<<< orphan*/  rt_flags; TYPE_1__ u; } ;
typedef  int /*<<< orphan*/  fl ;
struct TYPE_6__ {int /*<<< orphan*/  pid; } ;

/* Variables and functions */
 int /*<<< orphan*/  DNPROTO_NSP ; 
 struct flowi* FUNC0 (struct sk_buff*) ; 
 int EINVAL ; 
 int EMSGSIZE ; 
 int ENOBUFS ; 
 int ENODEV ; 
 int /*<<< orphan*/  ETH_P_DNA_RT ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 TYPE_3__ FUNC1 (struct sk_buff*) ; 
 struct rtmsg* FUNC2 (struct nlmsghdr*) ; 
 int /*<<< orphan*/  NLMSG_GOODSIZE ; 
 int /*<<< orphan*/  FUNC3 (struct rtattr*) ; 
 int RTA_DST ; 
 int RTA_IIF ; 
 int RTA_OIF ; 
 int RTA_SRC ; 
 int /*<<< orphan*/  RTCF_NOTIFY ; 
 int RTM_F_NOTIFY ; 
 int /*<<< orphan*/  RTM_NEWROUTE ; 
 struct sk_buff* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct net_device* FUNC5 (struct net*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*) ; 
 int FUNC7 (struct sk_buff*) ; 
 int FUNC8 (struct dst_entry**,struct flowi*,int /*<<< orphan*/ ) ; 
 int FUNC9 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 struct net init_net ; 
 int /*<<< orphan*/  FUNC11 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 (int*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC15 (struct flowi*,int /*<<< orphan*/ ,int) ; 
 int FUNC16 (struct sk_buff*,struct net*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC17 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC18 (struct sk_buff*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC19 (struct sk_buff*) ; 
 struct net* FUNC20 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC21(struct sk_buff *in_skb, struct nlmsghdr *nlh, void *arg)
{
	struct net *net = FUNC20(in_skb->sk);
	struct rtattr **rta = arg;
	struct rtmsg *rtm = FUNC2(nlh);
	struct dn_route *rt = NULL;
	struct dn_skb_cb *cb;
	int err;
	struct sk_buff *skb;
	struct flowi fl;

	if (net != &init_net)
		return -EINVAL;

	FUNC15(&fl, 0, sizeof(fl));
	fl.proto = DNPROTO_NSP;

	skb = FUNC4(NLMSG_GOODSIZE, GFP_KERNEL);
	if (skb == NULL)
		return -ENOBUFS;
	FUNC19(skb);
	cb = FUNC0(skb);

	if (rta[RTA_SRC-1])
		FUNC14(&fl.fld_src, FUNC3(rta[RTA_SRC-1]), 2);
	if (rta[RTA_DST-1])
		FUNC14(&fl.fld_dst, FUNC3(rta[RTA_DST-1]), 2);
	if (rta[RTA_IIF-1])
		FUNC14(&fl.iif, FUNC3(rta[RTA_IIF-1]), sizeof(int));

	if (fl.iif) {
		struct net_device *dev;
		if ((dev = FUNC5(&init_net, fl.iif)) == NULL) {
			FUNC11(skb);
			return -ENODEV;
		}
		if (!dev->dn_ptr) {
			FUNC6(dev);
			FUNC11(skb);
			return -ENODEV;
		}
		skb->protocol = FUNC10(ETH_P_DNA_RT);
		skb->dev = dev;
		cb->src = fl.fld_src;
		cb->dst = fl.fld_dst;
		FUNC12();
		err = FUNC7(skb);
		FUNC13();
		FUNC15(cb, 0, sizeof(struct dn_skb_cb));
		rt = (struct dn_route *)FUNC17(skb);
		if (!err && -rt->u.dst.error)
			err = rt->u.dst.error;
	} else {
		int oif = 0;
		if (rta[RTA_OIF - 1])
			FUNC14(&oif, FUNC3(rta[RTA_OIF - 1]), sizeof(int));
		fl.oif = oif;
		err = FUNC8((struct dst_entry **)&rt, &fl, 0);
	}

	if (skb->dev)
		FUNC6(skb->dev);
	skb->dev = NULL;
	if (err)
		goto out_free;
	FUNC18(skb, &rt->u.dst);
	if (rtm->rtm_flags & RTM_F_NOTIFY)
		rt->rt_flags |= RTCF_NOTIFY;

	err = FUNC9(skb, FUNC1(in_skb).pid, nlh->nlmsg_seq, RTM_NEWROUTE, 0, 0);

	if (err == 0)
		goto out_free;
	if (err < 0) {
		err = -EMSGSIZE;
		goto out_free;
	}

	return FUNC16(skb, &init_net, FUNC1(in_skb).pid);

out_free:
	FUNC11(skb);
	return err;
}