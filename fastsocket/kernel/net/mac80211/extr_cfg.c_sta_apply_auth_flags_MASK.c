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
typedef  int u32 ;
struct sta_info {int dummy; } ;
struct ieee80211_local {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IEEE80211_STA_ASSOC ; 
 int /*<<< orphan*/  IEEE80211_STA_AUTH ; 
 int /*<<< orphan*/  IEEE80211_STA_AUTHORIZED ; 
 int /*<<< orphan*/  IEEE80211_STA_NONE ; 
 int /*<<< orphan*/  NL80211_STA_FLAG_ASSOCIATED ; 
 int /*<<< orphan*/  NL80211_STA_FLAG_AUTHENTICATED ; 
 int /*<<< orphan*/  NL80211_STA_FLAG_AUTHORIZED ; 
 int /*<<< orphan*/  WLAN_STA_ASSOC ; 
 int /*<<< orphan*/  WLAN_STA_AUTH ; 
 int /*<<< orphan*/  WLAN_STA_AUTHORIZED ; 
 int FUNC1 (struct sta_info*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct sta_info*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct ieee80211_local *local,
				struct sta_info *sta,
				u32 mask, u32 set)
{
	int ret;

	if (mask & FUNC0(NL80211_STA_FLAG_AUTHENTICATED) &&
	    set & FUNC0(NL80211_STA_FLAG_AUTHENTICATED) &&
	    !FUNC2(sta, WLAN_STA_AUTH)) {
		ret = FUNC1(sta, IEEE80211_STA_AUTH);
		if (ret)
			return ret;
	}

	if (mask & FUNC0(NL80211_STA_FLAG_ASSOCIATED) &&
	    set & FUNC0(NL80211_STA_FLAG_ASSOCIATED) &&
	    !FUNC2(sta, WLAN_STA_ASSOC)) {
		ret = FUNC1(sta, IEEE80211_STA_ASSOC);
		if (ret)
			return ret;
	}

	if (mask & FUNC0(NL80211_STA_FLAG_AUTHORIZED)) {
		if (set & FUNC0(NL80211_STA_FLAG_AUTHORIZED))
			ret = FUNC1(sta, IEEE80211_STA_AUTHORIZED);
		else if (FUNC2(sta, WLAN_STA_AUTHORIZED))
			ret = FUNC1(sta, IEEE80211_STA_ASSOC);
		else
			ret = 0;
		if (ret)
			return ret;
	}

	if (mask & FUNC0(NL80211_STA_FLAG_ASSOCIATED) &&
	    !(set & FUNC0(NL80211_STA_FLAG_ASSOCIATED)) &&
	    FUNC2(sta, WLAN_STA_ASSOC)) {
		ret = FUNC1(sta, IEEE80211_STA_AUTH);
		if (ret)
			return ret;
	}

	if (mask & FUNC0(NL80211_STA_FLAG_AUTHENTICATED) &&
	    !(set & FUNC0(NL80211_STA_FLAG_AUTHENTICATED)) &&
	    FUNC2(sta, WLAN_STA_AUTH)) {
		ret = FUNC1(sta, IEEE80211_STA_NONE);
		if (ret)
			return ret;
	}

	return 0;
}