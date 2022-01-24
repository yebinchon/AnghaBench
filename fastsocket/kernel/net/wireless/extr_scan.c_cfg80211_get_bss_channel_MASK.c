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
typedef  int u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct wiphy {int dummy; } ;
struct ieee80211_ht_operation {int primary_chan; } ;
struct ieee80211_channel {int flags; int /*<<< orphan*/  band; } ;

/* Variables and functions */
 int IEEE80211_CHAN_DISABLED ; 
 int /*<<< orphan*/  WLAN_EID_DS_PARAMS ; 
 int /*<<< orphan*/  WLAN_EID_HT_OPERATION ; 
 int* FUNC0 (int /*<<< orphan*/ ,int const*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 struct ieee80211_channel* FUNC2 (struct wiphy*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct ieee80211_channel *
FUNC3(struct wiphy *wiphy, const u8 *ie, size_t ielen,
			 struct ieee80211_channel *channel)
{
	const u8 *tmp;
	u32 freq;
	int channel_number = -1;

	tmp = FUNC0(WLAN_EID_DS_PARAMS, ie, ielen);
	if (tmp && tmp[1] == 1) {
		channel_number = tmp[2];
	} else {
		tmp = FUNC0(WLAN_EID_HT_OPERATION, ie, ielen);
		if (tmp && tmp[1] >= sizeof(struct ieee80211_ht_operation)) {
			struct ieee80211_ht_operation *htop = (void *)(tmp + 2);

			channel_number = htop->primary_chan;
		}
	}

	if (channel_number < 0)
		return channel;

	freq = FUNC1(channel_number, channel->band);
	channel = FUNC2(wiphy, freq);
	if (!channel)
		return NULL;
	if (channel->flags & IEEE80211_CHAN_DISABLED)
		return NULL;
	return channel;
}