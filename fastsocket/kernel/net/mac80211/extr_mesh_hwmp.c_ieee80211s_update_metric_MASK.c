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
struct sta_info {int fail_avg; } ;
struct sk_buff {scalar_t__ data; } ;
struct ieee80211_tx_info {int flags; } ;
struct ieee80211_local {int dummy; } ;
struct ieee80211_hdr {int /*<<< orphan*/  frame_control; } ;

/* Variables and functions */
 struct ieee80211_tx_info* FUNC0 (struct sk_buff*) ; 
 int IEEE80211_TX_STAT_ACK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sta_info*) ; 

void FUNC3(struct ieee80211_local *local,
		struct sta_info *sta, struct sk_buff *skb)
{
	struct ieee80211_tx_info *txinfo = FUNC0(skb);
	struct ieee80211_hdr *hdr = (struct ieee80211_hdr *) skb->data;
	int failed;

	if (!FUNC1(hdr->frame_control))
		return;

	failed = !(txinfo->flags & IEEE80211_TX_STAT_ACK);

	/* moving average, scaled to 100 */
	sta->fail_avg = ((80 * sta->fail_avg + 5) / 100 + 20 * failed);
	if (sta->fail_avg > 95)
		FUNC2(sta);
}