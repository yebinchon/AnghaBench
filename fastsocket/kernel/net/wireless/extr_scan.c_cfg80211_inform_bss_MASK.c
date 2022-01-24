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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u64 ;
typedef  void* u16 ;
struct wiphy {scalar_t__ signal_type; } ;
struct ieee80211_channel {int dummy; } ;
struct cfg80211_bss {int signal; int capability; int /*<<< orphan*/  ies; int /*<<< orphan*/  beacon_ies; void* beacon_interval; struct ieee80211_channel* channel; int /*<<< orphan*/  bssid; } ;
struct cfg80211_internal_bss {struct cfg80211_bss pub; } ;
struct cfg80211_bss_ies {size_t len; int /*<<< orphan*/  data; int /*<<< orphan*/  tsf; } ;
typedef  int s32 ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 scalar_t__ CFG80211_SIGNAL_TYPE_UNSPEC ; 
 size_t ETH_ALEN ; 
 scalar_t__ FUNC0 (int) ; 
 int WLAN_CAPABILITY_ESS ; 
 struct cfg80211_internal_bss* FUNC1 (int /*<<< orphan*/ ,struct cfg80211_internal_bss*) ; 
 struct ieee80211_channel* FUNC2 (struct wiphy*,int /*<<< orphan*/  const*,size_t,struct ieee80211_channel*) ; 
 struct cfg80211_bss_ies* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,size_t) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct cfg80211_bss_ies*) ; 
 int /*<<< orphan*/  FUNC6 (struct wiphy*,struct ieee80211_channel*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct cfg80211_bss*) ; 
 int /*<<< orphan*/  FUNC8 (struct wiphy*) ; 

struct cfg80211_bss*
FUNC9(struct wiphy *wiphy,
		    struct ieee80211_channel *channel,
		    const u8 *bssid, u64 tsf, u16 capability,
		    u16 beacon_interval, const u8 *ie, size_t ielen,
		    s32 signal, gfp_t gfp)
{
	struct cfg80211_bss_ies *ies;
	struct cfg80211_internal_bss tmp = {}, *res;

	if (FUNC0(!wiphy))
		return NULL;

	if (FUNC0(wiphy->signal_type == CFG80211_SIGNAL_TYPE_UNSPEC &&
			(signal < 0 || signal > 100)))
		return NULL;

	channel = FUNC2(wiphy, ie, ielen, channel);
	if (!channel)
		return NULL;

	FUNC4(tmp.pub.bssid, bssid, ETH_ALEN);
	tmp.pub.channel = channel;
	tmp.pub.signal = signal;
	tmp.pub.beacon_interval = beacon_interval;
	tmp.pub.capability = capability;
	/*
	 * Since we do not know here whether the IEs are from a Beacon or Probe
	 * Response frame, we need to pick one of the options and only use it
	 * with the driver that does not provide the full Beacon/Probe Response
	 * frame. Use Beacon frame pointer to avoid indicating that this should
	 * override the IEs pointer should we have received an earlier
	 * indication of Probe Response data.
	 */
	ies = FUNC3(sizeof(*ies) + ielen, gfp);
	if (!ies)
		return NULL;
	ies->len = ielen;
	ies->tsf = tsf;
	FUNC4(ies->data, ie, ielen);

	FUNC5(tmp.pub.beacon_ies, ies);
	FUNC5(tmp.pub.ies, ies);

	res = FUNC1(FUNC8(wiphy), &tmp);
	if (!res)
		return NULL;

	if (res->pub.capability & WLAN_CAPABILITY_ESS)
		FUNC6(wiphy, channel, gfp);

	FUNC7(&res->pub);
	/* cfg80211_bss_update gives us a referenced result */
	return &res->pub;
}