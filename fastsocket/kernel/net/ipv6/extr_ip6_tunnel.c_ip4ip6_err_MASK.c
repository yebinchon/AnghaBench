#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_7__ ;
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
struct sk_buff {TYPE_7__* dev; } ;
struct TYPE_10__ {TYPE_7__* dev; } ;
struct TYPE_11__ {TYPE_1__ dst; } ;
struct rtable {int rt_flags; TYPE_2__ u; } ;
struct iphdr {int /*<<< orphan*/  tos; int /*<<< orphan*/  saddr; int /*<<< orphan*/  daddr; } ;
struct inet6_skb_parm {int dummy; } ;
struct flowi {int /*<<< orphan*/  fl4_tos; int /*<<< orphan*/  fl4_src; int /*<<< orphan*/  fl4_dst; int /*<<< orphan*/  proto; } ;
struct dst_entry {int dummy; } ;
typedef  int /*<<< orphan*/  fl ;
typedef  scalar_t__ __u32 ;
typedef  int /*<<< orphan*/  __be32 ;
struct TYPE_15__ {scalar_t__ type; } ;
struct TYPE_14__ {TYPE_4__* ops; TYPE_3__* dev; } ;
struct TYPE_13__ {int /*<<< orphan*/  (* update_pmtu ) (TYPE_5__*,scalar_t__) ;} ;
struct TYPE_12__ {scalar_t__ type; } ;

/* Variables and functions */
 scalar_t__ ARPHRD_TUNNEL ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int ICMPV6_ADDR_UNREACH ; 
#define  ICMPV6_DEST_UNREACH 129 
#define  ICMPV6_PKT_TOOBIG 128 
 int ICMP_DEST_UNREACH ; 
 int ICMP_FRAG_NEEDED ; 
 int ICMP_HOST_UNREACH ; 
 int /*<<< orphan*/  IPPROTO_IPIP ; 
 int RTCF_LOCAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_7__*) ; 
 scalar_t__ FUNC2 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*,int,int,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct sk_buff*,int /*<<< orphan*/ ,struct inet6_skb_parm*,int*,int*,int*,scalar_t__*,int) ; 
 struct iphdr* FUNC6 (struct sk_buff*) ; 
 scalar_t__ FUNC7 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_7__*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,struct rtable**,struct flowi*) ; 
 int /*<<< orphan*/  FUNC9 (struct rtable*) ; 
 int /*<<< orphan*/  FUNC10 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC11 (struct flowi*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct sk_buff*,int) ; 
 struct sk_buff* FUNC14 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 TYPE_5__* FUNC15 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC16 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC17 (struct sk_buff*,struct dst_entry*) ; 
 int /*<<< orphan*/  FUNC18 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC19 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC20 (TYPE_5__*,scalar_t__) ; 

__attribute__((used)) static int
FUNC21(struct sk_buff *skb, struct inet6_skb_parm *opt,
	   u8 type, u8 code, int offset, __be32 info)
{
	int rel_msg = 0;
	u8 rel_type = type;
	u8 rel_code = code;
	__u32 rel_info = FUNC12(info);
	int err;
	struct sk_buff *skb2;
	struct iphdr *eiph;
	struct flowi fl;
	struct rtable *rt;

	err = FUNC5(skb, IPPROTO_IPIP, opt, &rel_type, &rel_code,
			  &rel_msg, &rel_info, offset);
	if (err < 0)
		return err;

	if (rel_msg == 0)
		return 0;

	switch (rel_type) {
	case ICMPV6_DEST_UNREACH:
		if (rel_code != ICMPV6_ADDR_UNREACH)
			return 0;
		rel_type = ICMP_DEST_UNREACH;
		rel_code = ICMP_HOST_UNREACH;
		break;
	case ICMPV6_PKT_TOOBIG:
		if (rel_code != 0)
			return 0;
		rel_type = ICMP_DEST_UNREACH;
		rel_code = ICMP_FRAG_NEEDED;
		break;
	default:
		return 0;
	}

	if (!FUNC13(skb, offset + sizeof(struct iphdr)))
		return 0;

	skb2 = FUNC14(skb, GFP_ATOMIC);
	if (!skb2)
		return 0;

	FUNC16(skb2);

	FUNC18(skb2, offset);
	FUNC19(skb2);
	eiph = FUNC6(skb2);

	/* Try to guess incoming interface */
	FUNC11(&fl, 0, sizeof(fl));
	fl.fl4_dst = eiph->saddr;
	fl.fl4_tos = FUNC0(eiph->tos);
	fl.proto = IPPROTO_IPIP;
	if (FUNC8(FUNC1(skb->dev), &rt, &fl))
		goto out;

	skb2->dev = rt->u.dst.dev;

	/* route "incoming" packet */
	if (rt->rt_flags & RTCF_LOCAL) {
		FUNC9(rt);
		rt = NULL;
		fl.fl4_dst = eiph->daddr;
		fl.fl4_src = eiph->saddr;
		fl.fl4_tos = eiph->tos;
		if (FUNC8(FUNC1(skb->dev), &rt, &fl) ||
		    rt->u.dst.dev->type != ARPHRD_TUNNEL) {
			FUNC9(rt);
			goto out;
		}
		FUNC17(skb2, (struct dst_entry *)rt);
	} else {
		FUNC9(rt);
		if (FUNC7(skb2, eiph->daddr, eiph->saddr, eiph->tos,
				   skb2->dev) ||
		    FUNC15(skb2)->dev->type != ARPHRD_TUNNEL)
			goto out;
	}

	/* change mtu on this route */
	if (rel_type == ICMP_DEST_UNREACH && rel_code == ICMP_FRAG_NEEDED) {
		if (rel_info > FUNC2(FUNC15(skb2)))
			goto out;

		FUNC15(skb2)->ops->update_pmtu(FUNC15(skb2), rel_info);
	}

	FUNC4(skb2, rel_type, rel_code, FUNC3(rel_info));

out:
	FUNC10(skb2);
	return 0;
}