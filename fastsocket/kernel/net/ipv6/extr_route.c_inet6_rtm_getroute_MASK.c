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
struct sk_buff {int /*<<< orphan*/  sk; } ;
struct rtmsg {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  dst; } ;
struct rt6_info {TYPE_1__ u; } ;
struct nlmsghdr {int /*<<< orphan*/  nlmsg_seq; } ;
struct nlattr {int dummy; } ;
struct net_device {int dummy; } ;
struct net {int dummy; } ;
struct ipv6hdr {int dummy; } ;
struct in6_addr {int dummy; } ;
struct flowi {int /*<<< orphan*/  fl6_src; int /*<<< orphan*/  fl6_dst; void* oif; } ;
typedef  int /*<<< orphan*/  fl ;
struct TYPE_4__ {int /*<<< orphan*/  pid; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOBUFS ; 
 int ENODEV ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ MAX_HEADER ; 
 TYPE_2__ FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  NLMSG_GOODSIZE ; 
 size_t RTA_DST ; 
 size_t RTA_IIF ; 
 int /*<<< orphan*/  RTA_MAX ; 
 size_t RTA_OIF ; 
 size_t RTA_SRC ; 
 int /*<<< orphan*/  RTM_NEWROUTE ; 
 struct net_device* FUNC1 (struct net*,int) ; 
 struct sk_buff* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct net*,int /*<<< orphan*/ *,struct flowi*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC6 (struct flowi*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (struct nlattr*) ; 
 void* FUNC8 (struct nlattr*) ; 
 int FUNC9 (struct nlattr*) ; 
 int FUNC10 (struct nlmsghdr*,int,struct nlattr**,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC11 (struct net*,struct sk_buff*,struct rt6_info*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rtm_ipv6_policy ; 
 int FUNC12 (struct sk_buff*,struct net*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct sk_buff*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (struct sk_buff*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC15 (struct sk_buff*) ; 
 struct net* FUNC16 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC17(struct sk_buff *in_skb, struct nlmsghdr* nlh, void *arg)
{
	struct net *net = FUNC16(in_skb->sk);
	struct nlattr *tb[RTA_MAX+1];
	struct rt6_info *rt;
	struct sk_buff *skb;
	struct rtmsg *rtm;
	struct flowi fl;
	int err, iif = 0;

	err = FUNC10(nlh, sizeof(*rtm), tb, RTA_MAX, rtm_ipv6_policy);
	if (err < 0)
		goto errout;

	err = -EINVAL;
	FUNC6(&fl, 0, sizeof(fl));

	if (tb[RTA_SRC]) {
		if (FUNC9(tb[RTA_SRC]) < sizeof(struct in6_addr))
			goto errout;

		FUNC4(&fl.fl6_src, FUNC7(tb[RTA_SRC]));
	}

	if (tb[RTA_DST]) {
		if (FUNC9(tb[RTA_DST]) < sizeof(struct in6_addr))
			goto errout;

		FUNC4(&fl.fl6_dst, FUNC7(tb[RTA_DST]));
	}

	if (tb[RTA_IIF])
		iif = FUNC8(tb[RTA_IIF]);

	if (tb[RTA_OIF])
		fl.oif = FUNC8(tb[RTA_OIF]);

	if (iif) {
		struct net_device *dev;
		dev = FUNC1(net, iif);
		if (!dev) {
			err = -ENODEV;
			goto errout;
		}
	}

	skb = FUNC2(NLMSG_GOODSIZE, GFP_KERNEL);
	if (skb == NULL) {
		err = -ENOBUFS;
		goto errout;
	}

	/* Reserve room for dummy headers, this skb can pass
	   through good chunk of routing engine.
	 */
	FUNC15(skb);
	FUNC14(skb, MAX_HEADER + sizeof(struct ipv6hdr));

	rt = (struct rt6_info*) FUNC3(net, NULL, &fl);
	FUNC13(skb, &rt->u.dst);

	err = FUNC11(net, skb, rt, &fl.fl6_dst, &fl.fl6_src, iif,
			    RTM_NEWROUTE, FUNC0(in_skb).pid,
			    nlh->nlmsg_seq, 0, 0, 0);
	if (err < 0) {
		FUNC5(skb);
		goto errout;
	}

	err = FUNC12(skb, net, FUNC0(in_skb).pid);
errout:
	return err;
}