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
struct sk_buff {int transport_header; } ;
struct inet6_skb_parm {int /*<<< orphan*/  dst1; int /*<<< orphan*/  nhoff; int /*<<< orphan*/  lastopt; } ;
struct dst_entry {int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  __u16 ;

/* Variables and functions */
 struct inet6_skb_parm* FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IPSTATS_MIB_INHDRERRORS ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct dst_entry* FUNC3 (struct dst_entry*) ; 
 int /*<<< orphan*/  FUNC4 (struct dst_entry*) ; 
 int /*<<< orphan*/  FUNC5 (struct dst_entry*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*,scalar_t__) ; 
 struct dst_entry* FUNC9 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC10 (struct sk_buff*) ; 
 int* FUNC11 (struct sk_buff*) ; 
 scalar_t__ FUNC12 (struct sk_buff*) ; 
 int /*<<< orphan*/  tlvprocdestopt_lst ; 

__attribute__((used)) static int FUNC13(struct sk_buff *skb)
{
	struct inet6_skb_parm *opt = FUNC0(skb);
#if defined(CONFIG_IPV6_MIP6) || defined(CONFIG_IPV6_MIP6_MODULE)
	__u16 dstbuf;
#endif
	struct dst_entry *dst;

	if (!FUNC8(skb, FUNC12(skb) + 8) ||
	    !FUNC8(skb, (FUNC12(skb) +
				 ((FUNC11(skb)[1] + 1) << 3)))) {
		FUNC1(FUNC2(FUNC9(skb)->dev), FUNC5(FUNC9(skb)),
				 IPSTATS_MIB_INHDRERRORS);
		FUNC7(skb);
		return -1;
	}

	opt->lastopt = opt->dst1 = FUNC10(skb);
#if defined(CONFIG_IPV6_MIP6) || defined(CONFIG_IPV6_MIP6_MODULE)
	dstbuf = opt->dst1;
#endif

	dst = FUNC3(FUNC9(skb));
	if (FUNC6(tlvprocdestopt_lst, skb)) {
		FUNC4(dst);
		skb->transport_header += (FUNC11(skb)[1] + 1) << 3;
		opt = FUNC0(skb);
#if defined(CONFIG_IPV6_MIP6) || defined(CONFIG_IPV6_MIP6_MODULE)
		opt->nhoff = dstbuf;
#else
		opt->nhoff = opt->dst1;
#endif
		return 1;
	}

	FUNC1(FUNC2(dst->dev),
			 FUNC5(dst), IPSTATS_MIB_INHDRERRORS);
	FUNC4(dst);
	return -1;
}