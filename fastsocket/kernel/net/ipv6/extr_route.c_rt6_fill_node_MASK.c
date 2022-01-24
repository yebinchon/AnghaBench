#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_8__ ;
typedef  struct TYPE_15__   TYPE_7__ ;
typedef  struct TYPE_14__   TYPE_6__ ;
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct sk_buff {int dummy; } ;
struct rtmsg {int rtm_dst_len; int rtm_src_len; int rtm_table; int /*<<< orphan*/  rtm_flags; int /*<<< orphan*/  rtm_protocol; int /*<<< orphan*/  rtm_scope; void* rtm_type; scalar_t__ rtm_tos; int /*<<< orphan*/  rtm_family; } ;
struct TYPE_16__ {int /*<<< orphan*/  error; scalar_t__ dev; TYPE_5__* neighbour; int /*<<< orphan*/  metrics; } ;
struct TYPE_15__ {TYPE_8__ dst; } ;
struct TYPE_12__ {int /*<<< orphan*/  addr; scalar_t__ plen; } ;
struct in6_addr {int dummy; } ;
struct TYPE_11__ {int plen; struct in6_addr addr; } ;
struct TYPE_10__ {int plen; struct in6_addr addr; } ;
struct rt6_info {int rt6i_flags; int rt6i_metric; long rt6i_expires; TYPE_7__ u; TYPE_6__* rt6i_dev; TYPE_4__ rt6i_prefsrc; TYPE_3__ rt6i_dst; TYPE_2__ rt6i_src; int /*<<< orphan*/  rt6i_protocol; TYPE_1__* rt6i_table; } ;
struct nlmsghdr {int dummy; } ;
struct net {int dummy; } ;
struct TYPE_14__ {int flags; int ifindex; } ;
struct TYPE_13__ {struct in6_addr primary_key; } ;
struct TYPE_9__ {int tb6_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET6 ; 
 int EMSGSIZE ; 
 int IFF_LOOPBACK ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,int /*<<< orphan*/ ,int,struct in6_addr*) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,int /*<<< orphan*/ ,int) ; 
 int RT6_TABLE_UNSPEC ; 
 int /*<<< orphan*/  RTA_DST ; 
 int /*<<< orphan*/  RTA_GATEWAY ; 
 int /*<<< orphan*/  RTA_IIF ; 
 int /*<<< orphan*/  RTA_OIF ; 
 int /*<<< orphan*/  RTA_PREFSRC ; 
 int /*<<< orphan*/  RTA_PRIORITY ; 
 int /*<<< orphan*/  RTA_SRC ; 
 int /*<<< orphan*/  RTA_TABLE ; 
 int RTF_ADDRCONF ; 
 int RTF_CACHE ; 
 int RTF_DEFAULT ; 
 int RTF_DYNAMIC ; 
 int RTF_EXPIRES ; 
 int RTF_LOCAL ; 
 int RTF_PREFIX_RT ; 
 int RTF_REJECT ; 
 int /*<<< orphan*/  RTM_F_CLONED ; 
 void* RTN_LOCAL ; 
 void* RTN_UNICAST ; 
 void* RTN_UNREACHABLE ; 
 int /*<<< orphan*/  RTPROT_KERNEL ; 
 int /*<<< orphan*/  RTPROT_RA ; 
 int /*<<< orphan*/  RTPROT_REDIRECT ; 
 int /*<<< orphan*/  RT_SCOPE_UNIVERSE ; 
 scalar_t__ FUNC2 (struct net*,struct rt6_info*,struct in6_addr*,int /*<<< orphan*/ ,struct in6_addr*) ; 
 int FUNC3 (struct net*,struct sk_buff*,struct rtmsg*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct in6_addr*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (struct in6_addr*) ; 
 long jiffies ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*,struct nlmsghdr*) ; 
 struct rtmsg* FUNC7 (struct nlmsghdr*) ; 
 int FUNC8 (struct sk_buff*,struct nlmsghdr*) ; 
 struct nlmsghdr* FUNC9 (struct sk_buff*,int,int,int,int,unsigned int) ; 
 scalar_t__ FUNC10 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (struct sk_buff*,TYPE_8__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,long,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC12(struct net *net,
			 struct sk_buff *skb, struct rt6_info *rt,
			 struct in6_addr *dst, struct in6_addr *src,
			 int iif, int type, u32 pid, u32 seq,
			 int prefix, int nowait, unsigned int flags)
{
	struct rtmsg *rtm;
	struct nlmsghdr *nlh;
	long expires;
	u32 table;

	if (prefix) {	/* user wants prefix routes only */
		if (!(rt->rt6i_flags & RTF_PREFIX_RT)) {
			/* success since this is not a prefix route */
			return 1;
		}
	}

	nlh = FUNC9(skb, pid, seq, type, sizeof(*rtm), flags);
	if (nlh == NULL)
		return -EMSGSIZE;

	rtm = FUNC7(nlh);
	rtm->rtm_family = AF_INET6;
	rtm->rtm_dst_len = rt->rt6i_dst.plen;
	rtm->rtm_src_len = rt->rt6i_src.plen;
	rtm->rtm_tos = 0;
	if (rt->rt6i_table)
		table = rt->rt6i_table->tb6_id;
	else
		table = RT6_TABLE_UNSPEC;
	rtm->rtm_table = table;
	FUNC1(skb, RTA_TABLE, table);
	if (rt->rt6i_flags&RTF_REJECT)
		rtm->rtm_type = RTN_UNREACHABLE;
	else if (rt->rt6i_flags&RTF_LOCAL)
		rtm->rtm_type = RTN_LOCAL;
	else if (rt->rt6i_dev && (rt->rt6i_dev->flags&IFF_LOOPBACK))
		rtm->rtm_type = RTN_LOCAL;
	else
		rtm->rtm_type = RTN_UNICAST;
	rtm->rtm_flags = 0;
	rtm->rtm_scope = RT_SCOPE_UNIVERSE;
	rtm->rtm_protocol = rt->rt6i_protocol;
	if (rt->rt6i_flags&RTF_DYNAMIC)
		rtm->rtm_protocol = RTPROT_REDIRECT;
	else if (rt->rt6i_flags & RTF_ADDRCONF)
		rtm->rtm_protocol = RTPROT_KERNEL;
	else if (rt->rt6i_flags&RTF_DEFAULT)
		rtm->rtm_protocol = RTPROT_RA;

	if (rt->rt6i_flags&RTF_CACHE)
		rtm->rtm_flags |= RTM_F_CLONED;

	if (dst) {
		FUNC0(skb, RTA_DST, 16, dst);
		rtm->rtm_dst_len = 128;
	} else if (rtm->rtm_dst_len)
		FUNC0(skb, RTA_DST, 16, &rt->rt6i_dst.addr);
#ifdef CONFIG_IPV6_SUBTREES
	if (src) {
		NLA_PUT(skb, RTA_SRC, 16, src);
		rtm->rtm_src_len = 128;
	} else if (rtm->rtm_src_len)
		NLA_PUT(skb, RTA_SRC, 16, &rt->rt6i_src.addr);
#endif
	if (iif) {
#ifdef CONFIG_IPV6_MROUTE
		if (ipv6_addr_is_multicast(&rt->rt6i_dst.addr)) {
			int err = ip6mr_get_route(net, skb, rtm, nowait);
			if (err <= 0) {
				if (!nowait) {
					if (err == 0)
						return 0;
					goto nla_put_failure;
				} else {
					if (err == -EMSGSIZE)
						goto nla_put_failure;
				}
			}
		} else
#endif
			FUNC1(skb, RTA_IIF, iif);
	} else if (dst) {
		struct in6_addr saddr_buf;
		if (FUNC2(net, rt, dst, 0, &saddr_buf) == 0)
			FUNC0(skb, RTA_PREFSRC, 16, &saddr_buf);
	}

	if (rt->rt6i_prefsrc.plen) {
		struct in6_addr saddr_buf;
		FUNC4(&saddr_buf, &rt->rt6i_prefsrc.addr);
		FUNC0(skb, RTA_PREFSRC, 16, &saddr_buf);
	}

	if (FUNC10(skb, rt->u.dst.metrics) < 0)
		goto nla_put_failure;

	if (rt->u.dst.neighbour)
		FUNC0(skb, RTA_GATEWAY, 16, &rt->u.dst.neighbour->primary_key);

	if (rt->u.dst.dev)
		FUNC1(skb, RTA_OIF, rt->rt6i_dev->ifindex);

	FUNC1(skb, RTA_PRIORITY, rt->rt6i_metric);

	expires = (rt->rt6i_flags & RTF_EXPIRES) ? rt->rt6i_expires - jiffies : 0;

	if (FUNC11(skb, &rt->u.dst, 0, 0, 0,
			       expires, rt->u.dst.error) < 0)
		goto nla_put_failure;

	return FUNC8(skb, nlh);

nla_put_failure:
	FUNC6(skb, nlh);
	return -EMSGSIZE;
}