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
typedef  int /*<<< orphan*/  u16 ;
struct sk_buff {int /*<<< orphan*/  cb; int /*<<< orphan*/  protocol; int /*<<< orphan*/  pkt_type; int /*<<< orphan*/  dev; scalar_t__ data; } ;
struct ieee80211_rx_stats {int dummy; } ;
struct ieee80211_hdr_4addr {int /*<<< orphan*/  frame_ctl; } ;
struct ieee80211_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETH_P_80211_RAW ; 
 int /*<<< orphan*/  PACKET_OTHERHOST ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*) ; 

__attribute__((used)) static inline void FUNC7(struct ieee80211_device *ieee,
					struct sk_buff *skb,
					struct ieee80211_rx_stats *rx_stats)
{
	struct ieee80211_hdr_4addr *hdr = (struct ieee80211_hdr_4addr *)skb->data;
	u16 fc = FUNC2(hdr->frame_ctl);

	skb->dev = ieee->dev;
        FUNC6(skb);

	FUNC5(skb, FUNC1(fc));
	skb->pkt_type = PACKET_OTHERHOST;
	skb->protocol = FUNC0(ETH_P_80211_RAW);
	FUNC3(skb->cb, 0, sizeof(skb->cb));
	FUNC4(skb);
}