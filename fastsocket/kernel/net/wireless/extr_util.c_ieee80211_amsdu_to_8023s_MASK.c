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
typedef  unsigned int u8 ;
typedef  unsigned int u16 ;
struct sk_buff_head {int dummy; } ;
struct sk_buff {unsigned int* data; int len; int /*<<< orphan*/  priority; int /*<<< orphan*/  dev; } ;
struct ethhdr {unsigned int h_proto; unsigned int* h_dest; unsigned int* h_source; } ;
typedef  enum nl80211_iftype { ____Placeholder_nl80211_iftype } nl80211_iftype ;
typedef  unsigned int __be16 ;

/* Variables and functions */
 unsigned int FUNC0 (unsigned int const,int) ; 
 int ETH_ALEN ; 
 unsigned int ETH_P_AARP ; 
 unsigned int ETH_P_IPX ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff_head*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff_head*,struct sk_buff*) ; 
 int /*<<< orphan*/  bridge_tunnel_header ; 
 struct sk_buff* FUNC3 (unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*) ; 
 scalar_t__ FUNC5 (unsigned int*,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct sk_buff*,unsigned int const*,int) ; 
 scalar_t__ FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (unsigned int*,unsigned int*,int) ; 
 unsigned int FUNC9 (unsigned int) ; 
 int /*<<< orphan*/  rfc1042_header ; 
 scalar_t__ FUNC10 (struct sk_buff*,int) ; 
 unsigned int* FUNC11 (struct sk_buff*,int) ; 
 unsigned int* FUNC12 (struct sk_buff*,unsigned int) ; 
 int /*<<< orphan*/  FUNC13 (struct sk_buff*,unsigned int) ; 
 int /*<<< orphan*/  FUNC14 (struct sk_buff*) ; 

void FUNC15(struct sk_buff *skb, struct sk_buff_head *list,
			      const u8 *addr, enum nl80211_iftype iftype,
			      const unsigned int extra_headroom,
			      bool has_80211_header)
{
	struct sk_buff *frame = NULL;
	u16 ethertype;
	u8 *payload;
	const struct ethhdr *eth;
	int remaining, err;
	u8 dst[ETH_ALEN], src[ETH_ALEN];

	if (has_80211_header) {
		err = FUNC6(skb, addr, iftype);
		if (err)
			goto out;

		/* skip the wrapping header */
		eth = (struct ethhdr *) FUNC10(skb, sizeof(struct ethhdr));
		if (!eth)
			goto out;
	} else {
		eth = (struct ethhdr *) skb->data;
	}

	while (skb != frame) {
		u8 padding;
		__be16 len = eth->h_proto;
		unsigned int subframe_len = sizeof(struct ethhdr) + FUNC9(len);

		remaining = skb->len;
		FUNC8(dst, eth->h_dest, ETH_ALEN);
		FUNC8(src, eth->h_source, ETH_ALEN);

		padding = (4 - subframe_len) & 0x3;
		/* the last MSDU has no padding */
		if (subframe_len > remaining)
			goto purge;

		FUNC10(skb, sizeof(struct ethhdr));
		/* reuse skb for the last subframe */
		if (remaining <= subframe_len + padding)
			frame = skb;
		else {
			unsigned int hlen = FUNC0(extra_headroom, 4);
			/*
			 * Allocate and reserve two bytes more for payload
			 * alignment since sizeof(struct ethhdr) is 14.
			 */
			frame = FUNC3(hlen + subframe_len + 2);
			if (!frame)
				goto purge;

			FUNC13(frame, hlen + sizeof(struct ethhdr) + 2);
			FUNC8(FUNC12(frame, FUNC9(len)), skb->data,
				FUNC9(len));

			eth = (struct ethhdr *)FUNC10(skb, FUNC9(len) +
							padding);
			if (!eth) {
				FUNC4(frame);
				goto purge;
			}
		}

		FUNC14(frame);
		frame->dev = skb->dev;
		frame->priority = skb->priority;

		payload = frame->data;
		ethertype = (payload[6] << 8) | payload[7];

		if (FUNC7((FUNC5(payload, rfc1042_header) &&
			    ethertype != ETH_P_AARP && ethertype != ETH_P_IPX) ||
			   FUNC5(payload, bridge_tunnel_header))) {
			/* remove RFC1042 or Bridge-Tunnel
			 * encapsulation and replace EtherType */
			FUNC10(frame, 6);
			FUNC8(FUNC11(frame, ETH_ALEN), src, ETH_ALEN);
			FUNC8(FUNC11(frame, ETH_ALEN), dst, ETH_ALEN);
		} else {
			FUNC8(FUNC11(frame, sizeof(__be16)), &len,
				sizeof(__be16));
			FUNC8(FUNC11(frame, ETH_ALEN), src, ETH_ALEN);
			FUNC8(FUNC11(frame, ETH_ALEN), dst, ETH_ALEN);
		}
		FUNC2(list, frame);
	}

	return;

 purge:
	FUNC1(list);
 out:
	FUNC4(skb);
}