#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  size_t u8 ;
struct sk_buff {int len; int data; int /*<<< orphan*/  protocol; int /*<<< orphan*/  ip_summed; } ;
struct TYPE_4__ {int /*<<< orphan*/  rx_errors; int /*<<< orphan*/  rx_packets; int /*<<< orphan*/  rx_dropped; int /*<<< orphan*/  rx_bytes; } ;
struct net_device {TYPE_1__ stats; } ;
struct TYPE_5__ {void* h_proto; struct TYPE_5__* h_source; struct TYPE_5__* h_dest; } ;
struct bnep_session {TYPE_2__ eh; struct net_device* dev; } ;
typedef  int /*<<< orphan*/  __be16 ;

/* Variables and functions */
#define  BNEP_COMPRESSED 131 
#define  BNEP_COMPRESSED_DST_ONLY 130 
#define  BNEP_COMPRESSED_SRC_ONLY 129 
 size_t BNEP_CONTROL ; 
 size_t BNEP_EXT_HEADER ; 
#define  BNEP_GENERAL 128 
 size_t BNEP_RX_TYPES ; 
 size_t BNEP_TYPE_MASK ; 
 int /*<<< orphan*/  CHECKSUM_NONE ; 
 int ENOMEM ; 
 int ETH_ALEN ; 
 int ETH_HLEN ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int* __bnep_rx_hlen ; 
 scalar_t__ FUNC0 (struct sk_buff*,int) ; 
 struct sk_buff* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct bnep_session*,int,int) ; 
 scalar_t__ FUNC3 (struct bnep_session*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*,struct net_device*) ; 
 void* FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*) ; 
 int FUNC9 (void*) ; 
 int /*<<< orphan*/  FUNC10 (void*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct sk_buff*,scalar_t__,int) ; 
 TYPE_2__* FUNC12 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC13 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC14 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC15 (struct sk_buff*) ; 

__attribute__((used)) static inline int FUNC16(struct bnep_session *s, struct sk_buff *skb)
{
	struct net_device *dev = s->dev;
	struct sk_buff *nskb;
	u8 type;

	dev->stats.rx_bytes += skb->len;

	type = *(u8 *) skb->data; FUNC13(skb, 1);

	if ((type & BNEP_TYPE_MASK) > BNEP_RX_TYPES)
		goto badframe;

	if ((type & BNEP_TYPE_MASK) == BNEP_CONTROL) {
		FUNC2(s, skb->data, skb->len);
		FUNC6(skb);
		return 0;
	}

	FUNC15(skb);

	/* Verify and pull out header */
	if (!FUNC13(skb, __bnep_rx_hlen[type & BNEP_TYPE_MASK]))
		goto badframe;

	s->eh.h_proto = FUNC5((__be16 *) (skb->data - 2));

	if (type & BNEP_EXT_HEADER) {
		if (FUNC3(s, skb) < 0)
			goto badframe;
	}

	/* Strip 802.1p header */
	if (FUNC9(s->eh.h_proto) == 0x8100) {
		if (!FUNC13(skb, 4))
			goto badframe;
		s->eh.h_proto = FUNC5((__be16 *) (skb->data - 2));
	}

	/* We have to alloc new skb and copy data here :(. Because original skb
	 * may not be modified and because of the alignment requirements. */
	nskb = FUNC1(2 + ETH_HLEN + skb->len, GFP_KERNEL);
	if (!nskb) {
		dev->stats.rx_dropped++;
		FUNC6(skb);
		return -ENOMEM;
	}
	FUNC14(nskb, 2);

	/* Decompress header and construct ether frame */
	switch (type & BNEP_TYPE_MASK) {
	case BNEP_COMPRESSED:
		FUNC7(FUNC0(nskb, ETH_HLEN), &s->eh, ETH_HLEN);
		break;

	case BNEP_COMPRESSED_SRC_ONLY:
		FUNC7(FUNC0(nskb, ETH_ALEN), s->eh.h_dest, ETH_ALEN);
		FUNC7(FUNC0(nskb, ETH_ALEN), FUNC12(skb), ETH_ALEN);
		FUNC10(s->eh.h_proto, (__be16 *) FUNC0(nskb, 2));
		break;

	case BNEP_COMPRESSED_DST_ONLY:
		FUNC7(FUNC0(nskb, ETH_ALEN), FUNC12(skb),
		       ETH_ALEN);
		FUNC7(FUNC0(nskb, ETH_ALEN + 2), s->eh.h_source,
		       ETH_ALEN + 2);
		break;

	case BNEP_GENERAL:
		FUNC7(FUNC0(nskb, ETH_ALEN * 2), FUNC12(skb),
		       ETH_ALEN * 2);
		FUNC10(s->eh.h_proto, (__be16 *) FUNC0(nskb, 2));
		break;
	}

	FUNC11(skb, FUNC0(nskb, skb->len), skb->len);
	FUNC6(skb);

	dev->stats.rx_packets++;
	nskb->ip_summed = CHECKSUM_NONE;
	nskb->protocol  = FUNC4(nskb, dev);
	FUNC8(nskb);
	return 0;

badframe:
	dev->stats.rx_errors++;
	FUNC6(skb);
	return 0;
}