#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct sk_buff {int dummy; } ;
struct rtmsg {int rtm_dst_len; int rtm_src_len; int rtm_flags; int /*<<< orphan*/  rtm_protocol; int /*<<< orphan*/  rtm_scope; int /*<<< orphan*/  rtm_type; scalar_t__ rtm_table; int /*<<< orphan*/  rtm_tos; int /*<<< orphan*/  rtm_family; } ;
struct TYPE_10__ {int error; long expires; int /*<<< orphan*/  metrics; scalar_t__ tclassid; TYPE_1__* dev; } ;
struct TYPE_9__ {TYPE_5__ dst; } ;
struct TYPE_8__ {scalar_t__ fl4_src; scalar_t__ iif; int /*<<< orphan*/  fl4_tos; } ;
struct rtable {int rt_flags; scalar_t__ rt_dst; scalar_t__ rt_spec_dst; scalar_t__ rt_src; scalar_t__ rt_gateway; TYPE_4__ u; TYPE_3__ fl; TYPE_2__* peer; int /*<<< orphan*/  rt_type; } ;
struct nlmsghdr {int dummy; } ;
struct net {int dummy; } ;
typedef  scalar_t__ __be32 ;
struct TYPE_7__ {int ip_id_count; int tcp_ts_stamp; int tcp_ts; } ;
struct TYPE_6__ {scalar_t__ ifindex; } ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
 int EMSGSIZE ; 
 scalar_t__ FUNC0 (struct net*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MC_FORWARDING ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  RTA_DST ; 
 int /*<<< orphan*/  RTA_FLOW ; 
 int /*<<< orphan*/  RTA_GATEWAY ; 
 int /*<<< orphan*/  RTA_IIF ; 
 int /*<<< orphan*/  RTA_OIF ; 
 int /*<<< orphan*/  RTA_PREFSRC ; 
 int /*<<< orphan*/  RTA_SRC ; 
 int /*<<< orphan*/  RTA_TABLE ; 
 int RTCF_NOTIFY ; 
 int RTM_F_CLONED ; 
 int RTM_F_NOTIFY ; 
 int /*<<< orphan*/  RTPROT_UNSPEC ; 
 int /*<<< orphan*/  RT_SCOPE_UNIVERSE ; 
 scalar_t__ RT_TABLE_MAIN ; 
 int FUNC3 () ; 
 int FUNC4 (struct net*,struct sk_buff*,struct rtmsg*,int) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
 long jiffies ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*,struct nlmsghdr*) ; 
 struct rtmsg* FUNC8 (struct nlmsghdr*) ; 
 int FUNC9 (struct sk_buff*,struct nlmsghdr*) ; 
 struct nlmsghdr* FUNC10 (struct sk_buff*,int,int,int,int,unsigned int) ; 
 scalar_t__ FUNC11 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (struct sk_buff*,TYPE_5__*,int,int,int,long,int) ; 
 struct rtable* FUNC13 (struct sk_buff*) ; 

__attribute__((used)) static int FUNC14(struct net *net,
			struct sk_buff *skb, u32 pid, u32 seq, int event,
			int nowait, unsigned int flags)
{
	struct rtable *rt = FUNC13(skb);
	struct rtmsg *r;
	struct nlmsghdr *nlh;
	long expires;
	u32 id = 0, ts = 0, tsage = 0, error;

	nlh = FUNC10(skb, pid, seq, event, sizeof(*r), flags);
	if (nlh == NULL)
		return -EMSGSIZE;

	r = FUNC8(nlh);
	r->rtm_family	 = AF_INET;
	r->rtm_dst_len	= 32;
	r->rtm_src_len	= 0;
	r->rtm_tos	= rt->fl.fl4_tos;
	r->rtm_table	= RT_TABLE_MAIN;
	FUNC2(skb, RTA_TABLE, RT_TABLE_MAIN);
	r->rtm_type	= rt->rt_type;
	r->rtm_scope	= RT_SCOPE_UNIVERSE;
	r->rtm_protocol = RTPROT_UNSPEC;
	r->rtm_flags	= (rt->rt_flags & ~0xFFFF) | RTM_F_CLONED;
	if (rt->rt_flags & RTCF_NOTIFY)
		r->rtm_flags |= RTM_F_NOTIFY;

	FUNC1(skb, RTA_DST, rt->rt_dst);

	if (rt->fl.fl4_src) {
		r->rtm_src_len = 32;
		FUNC1(skb, RTA_SRC, rt->fl.fl4_src);
	}
	if (rt->u.dst.dev)
		FUNC2(skb, RTA_OIF, rt->u.dst.dev->ifindex);
#ifdef CONFIG_NET_CLS_ROUTE
	if (rt->u.dst.tclassid)
		NLA_PUT_U32(skb, RTA_FLOW, rt->u.dst.tclassid);
#endif
	if (rt->fl.iif)
		FUNC1(skb, RTA_PREFSRC, rt->rt_spec_dst);
	else if (rt->rt_src != rt->fl.fl4_src)
		FUNC1(skb, RTA_PREFSRC, rt->rt_src);

	if (rt->rt_dst != rt->rt_gateway)
		FUNC1(skb, RTA_GATEWAY, rt->rt_gateway);

	if (FUNC11(skb, rt->u.dst.metrics) < 0)
		goto nla_put_failure;

	error = rt->u.dst.error;
	expires = rt->u.dst.expires ? rt->u.dst.expires - jiffies : 0;
	if (rt->peer) {
		id = rt->peer->ip_id_count;
		if (rt->peer->tcp_ts_stamp) {
			ts = rt->peer->tcp_ts;
			tsage = FUNC3() - rt->peer->tcp_ts_stamp;
		}
	}

	if (rt->fl.iif) {
#ifdef CONFIG_IP_MROUTE
		__be32 dst = rt->rt_dst;

		if (ipv4_is_multicast(dst) && !ipv4_is_local_multicast(dst) &&
		    IPV4_DEVCONF_ALL(net, MC_FORWARDING)) {
			int err = ipmr_get_route(net, skb, r, nowait);
			if (err <= 0) {
				if (!nowait) {
					if (err == 0)
						return 0;
					goto nla_put_failure;
				} else {
					if (err == -EMSGSIZE)
						goto nla_put_failure;
					error = err;
				}
			}
		} else
#endif
			FUNC2(skb, RTA_IIF, rt->fl.iif);
	}

	if (FUNC12(skb, &rt->u.dst, id, ts, tsage,
			       expires, error) < 0)
		goto nla_put_failure;

	return FUNC9(skb, nlh);

nla_put_failure:
	FUNC7(skb, nlh);
	return -EMSGSIZE;
}