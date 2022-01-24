#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u16 ;
struct sk_buff {scalar_t__ data; int /*<<< orphan*/  len; } ;
struct ieee80211_rx_stats {int /*<<< orphan*/  len; } ;
struct ieee80211_hdr_4addr {int /*<<< orphan*/  addr3; } ;
struct TYPE_2__ {int /*<<< orphan*/  bssid; } ;
struct ieee80211_device {scalar_t__ state; TYPE_1__ current_network; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETH_ALEN ; 
 scalar_t__ IEEE80211_LINKED ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (struct ieee80211_device*,struct sk_buff*,struct ieee80211_rx_stats*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ieee80211_device*,struct ieee80211_hdr_4addr*,struct ieee80211_rx_stats*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline int
FUNC4(struct ieee80211_device *ieee, struct sk_buff *skb,
			struct ieee80211_rx_stats *rx_stats, u16 type,
			u16 stype)
{
	struct ieee80211_hdr_4addr *hdr;

	// cheat the the hdr type
	hdr = (struct ieee80211_hdr_4addr *)skb->data;

	/* On the struct stats definition there is written that
	 * this is not mandatory.... but seems that the probe
	 * response parser uses it
	 */
	rx_stats->len = skb->len;
	FUNC2(ieee, (struct ieee80211_hdr_4addr *)skb->data,
			 rx_stats);

	if((ieee->state == IEEE80211_LINKED)&&(FUNC3(hdr->addr3,ieee->current_network.bssid,ETH_ALEN))) {
		FUNC0(skb);
		return 0;
	}

	FUNC1(ieee, skb, rx_stats, type, stype);

	FUNC0(skb);

	return 0;

}