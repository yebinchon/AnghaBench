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
struct rtmsg {int rtm_dst_len; int rtm_src_len; scalar_t__ rtm_flags; int /*<<< orphan*/  rtm_protocol; int /*<<< orphan*/  rtm_scope; int /*<<< orphan*/  rtm_type; int /*<<< orphan*/  rtm_table; scalar_t__ rtm_tos; int /*<<< orphan*/  rtm_family; } ;
struct nlmsghdr {int dummy; } ;
struct mr_table {int /*<<< orphan*/  id; } ;
struct mfc_cache {int /*<<< orphan*/  mfc_mcastgrp; int /*<<< orphan*/  mfc_origin; } ;

/* Variables and functions */
 int EMSGSIZE ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NLM_F_MULTI ; 
 int /*<<< orphan*/  RTA_DST ; 
 int /*<<< orphan*/  RTA_SRC ; 
 int /*<<< orphan*/  RTA_TABLE ; 
 int /*<<< orphan*/  RTM_NEWROUTE ; 
 int /*<<< orphan*/  RTNL_FAMILY_IPMR ; 
 int /*<<< orphan*/  RTN_MULTICAST ; 
 int /*<<< orphan*/  RTPROT_UNSPEC ; 
 int /*<<< orphan*/  RT_SCOPE_UNIVERSE ; 
 scalar_t__ FUNC2 (struct mr_table*,struct sk_buff*,struct mfc_cache*,struct rtmsg*) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,struct nlmsghdr*) ; 
 struct rtmsg* FUNC4 (struct nlmsghdr*) ; 
 int FUNC5 (struct sk_buff*,struct nlmsghdr*) ; 
 struct nlmsghdr* FUNC6 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct mr_table *mrt, struct sk_buff *skb,
			    u32 pid, u32 seq, struct mfc_cache *c)
{
	struct nlmsghdr *nlh;
	struct rtmsg *rtm;

	nlh = FUNC6(skb, pid, seq, RTM_NEWROUTE, sizeof(*rtm), NLM_F_MULTI);
	if (nlh == NULL)
		return -EMSGSIZE;

	rtm = FUNC4(nlh);
	rtm->rtm_family   = RTNL_FAMILY_IPMR;
	rtm->rtm_dst_len  = 32;
	rtm->rtm_src_len  = 32;
	rtm->rtm_tos      = 0;
	rtm->rtm_table    = mrt->id;
	FUNC1(skb, RTA_TABLE, mrt->id);
	rtm->rtm_type     = RTN_MULTICAST;
	rtm->rtm_scope    = RT_SCOPE_UNIVERSE;
	rtm->rtm_protocol = RTPROT_UNSPEC;
	rtm->rtm_flags    = 0;

	FUNC0(skb, RTA_SRC, c->mfc_origin);
	FUNC0(skb, RTA_DST, c->mfc_mcastgrp);

	if (FUNC2(mrt, skb, c, rtm) < 0)
		goto nla_put_failure;

	return FUNC5(skb, nlh);

nla_put_failure:
	FUNC3(skb, nlh);
	return -EMSGSIZE;
}