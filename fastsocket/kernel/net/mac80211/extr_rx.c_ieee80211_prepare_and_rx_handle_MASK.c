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
struct sk_buff {scalar_t__ data; } ;
struct ieee80211_sub_if_data {int /*<<< orphan*/  name; } ;
struct ieee80211_rx_status {int /*<<< orphan*/  rx_flags; } ;
struct ieee80211_rx_data {struct sk_buff* skb; struct ieee80211_sub_if_data* sdata; struct ieee80211_local* local; } ;
struct TYPE_2__ {int /*<<< orphan*/  wiphy; } ;
struct ieee80211_local {TYPE_1__ hw; } ;
struct ieee80211_hdr {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  IEEE80211_RX_RA_MATCH ; 
 struct ieee80211_rx_status* FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (struct ieee80211_rx_data*) ; 
 scalar_t__ FUNC2 () ; 
 int FUNC3 (struct ieee80211_rx_data*,struct ieee80211_hdr*) ; 
 struct sk_buff* FUNC4 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC6(struct ieee80211_rx_data *rx,
					    struct sk_buff *skb, bool consume)
{
	struct ieee80211_local *local = rx->local;
	struct ieee80211_sub_if_data *sdata = rx->sdata;
	struct ieee80211_rx_status *status = FUNC0(skb);
	struct ieee80211_hdr *hdr = (void *)skb->data;
	int prepares;

	rx->skb = skb;
	status->rx_flags |= IEEE80211_RX_RA_MATCH;
	prepares = FUNC3(rx, hdr);

	if (!prepares)
		return false;

	if (!consume) {
		skb = FUNC4(skb, GFP_ATOMIC);
		if (!skb) {
			if (FUNC2())
				FUNC5(local->hw.wiphy,
					"failed to copy skb for %s\n",
					sdata->name);
			return true;
		}

		rx->skb = skb;
	}

	FUNC1(rx);
	return true;
}