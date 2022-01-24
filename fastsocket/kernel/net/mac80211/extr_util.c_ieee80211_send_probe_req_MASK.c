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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct sk_buff {int dummy; } ;
struct ieee80211_sub_if_data {int dummy; } ;
struct ieee80211_channel {int /*<<< orphan*/  band; } ;
struct TYPE_2__ {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct sk_buff*) ; 
 struct sk_buff* FUNC1 (struct ieee80211_sub_if_data*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct ieee80211_channel*,int /*<<< orphan*/  const*,size_t,int /*<<< orphan*/  const*,size_t,int) ; 
 int /*<<< orphan*/  FUNC2 (struct ieee80211_sub_if_data*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (struct ieee80211_sub_if_data*,struct sk_buff*,int,int /*<<< orphan*/ ) ; 

void FUNC4(struct ieee80211_sub_if_data *sdata, u8 *dst,
			      const u8 *ssid, size_t ssid_len,
			      const u8 *ie, size_t ie_len,
			      u32 ratemask, bool directed, u32 tx_flags,
			      struct ieee80211_channel *channel, bool scan)
{
	struct sk_buff *skb;

	skb = FUNC1(sdata, dst, ratemask, channel,
					ssid, ssid_len,
					ie, ie_len, directed);
	if (skb) {
		FUNC0(skb)->flags |= tx_flags;
		if (scan)
			FUNC3(sdata, skb, 7, channel->band);
		else
			FUNC2(sdata, skb);
	}
}