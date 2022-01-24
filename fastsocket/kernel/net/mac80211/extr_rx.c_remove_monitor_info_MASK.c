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
struct sk_buff {scalar_t__ len; } ;
struct ieee80211_rx_status {scalar_t__ vendor_radiotap_len; } ;
struct TYPE_2__ {int flags; } ;
struct ieee80211_local {TYPE_1__ hw; } ;

/* Variables and functions */
 scalar_t__ FCS_LEN ; 
 int IEEE80211_HW_RX_INCLUDES_FCS ; 
 struct ieee80211_rx_status* FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*) ; 
 scalar_t__ FUNC5 (int) ; 

__attribute__((used)) static struct sk_buff *FUNC6(struct ieee80211_local *local,
					   struct sk_buff *skb)
{
	struct ieee80211_rx_status *status = FUNC0(skb);

	if (local->hw.flags & IEEE80211_HW_RX_INCLUDES_FCS) {
		if (FUNC5(skb->len > FCS_LEN))
			FUNC3(skb, skb->len - FCS_LEN);
		else {
			/* driver bug */
			FUNC1(1);
			FUNC4(skb);
			return NULL;
		}
	}

	if (status->vendor_radiotap_len)
		FUNC2(skb, status->vendor_radiotap_len);

	return skb;
}