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
typedef  unsigned long u32 ;
typedef  unsigned long u16 ;
struct sk_buff {int dummy; } ;
struct rate_info {int flags; int /*<<< orphan*/  nss; int /*<<< orphan*/  mcs; } ;
struct nlattr {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  NL80211_RATE_INFO_160_MHZ_WIDTH ; 
 int /*<<< orphan*/  NL80211_RATE_INFO_40_MHZ_WIDTH ; 
 int /*<<< orphan*/  NL80211_RATE_INFO_80P80_MHZ_WIDTH ; 
 int /*<<< orphan*/  NL80211_RATE_INFO_80_MHZ_WIDTH ; 
 int /*<<< orphan*/  NL80211_RATE_INFO_BITRATE ; 
 int /*<<< orphan*/  NL80211_RATE_INFO_BITRATE32 ; 
 int /*<<< orphan*/  NL80211_RATE_INFO_MCS ; 
 int /*<<< orphan*/  NL80211_RATE_INFO_SHORT_GI ; 
 int /*<<< orphan*/  NL80211_RATE_INFO_VHT_MCS ; 
 int /*<<< orphan*/  NL80211_RATE_INFO_VHT_NSS ; 
 int RATE_INFO_FLAGS_160_MHZ_WIDTH ; 
 int RATE_INFO_FLAGS_40_MHZ_WIDTH ; 
 int RATE_INFO_FLAGS_80P80_MHZ_WIDTH ; 
 int RATE_INFO_FLAGS_80_MHZ_WIDTH ; 
 int RATE_INFO_FLAGS_MCS ; 
 int RATE_INFO_FLAGS_SHORT_GI ; 
 int RATE_INFO_FLAGS_VHT_MCS ; 
 unsigned long FUNC0 (struct rate_info*) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,struct nlattr*) ; 
 struct nlattr* FUNC2 (struct sk_buff*,int) ; 
 scalar_t__ FUNC3 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct sk_buff*,int /*<<< orphan*/ ,unsigned long) ; 
 scalar_t__ FUNC5 (struct sk_buff*,int /*<<< orphan*/ ,unsigned long) ; 
 scalar_t__ FUNC6 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC7(struct sk_buff *msg, struct rate_info *info,
				 int attr)
{
	struct nlattr *rate;
	u32 bitrate;
	u16 bitrate_compat;

	rate = FUNC2(msg, attr);
	if (!rate)
		return false;

	/* cfg80211_calculate_bitrate will return 0 for mcs >= 32 */
	bitrate = FUNC0(info);
	/* report 16-bit bitrate only if we can */
	bitrate_compat = bitrate < (1UL << 16) ? bitrate : 0;
	if (bitrate > 0 &&
	    FUNC5(msg, NL80211_RATE_INFO_BITRATE32, bitrate))
		return false;
	if (bitrate_compat > 0 &&
	    FUNC4(msg, NL80211_RATE_INFO_BITRATE, bitrate_compat))
		return false;

	if (info->flags & RATE_INFO_FLAGS_MCS) {
		if (FUNC6(msg, NL80211_RATE_INFO_MCS, info->mcs))
			return false;
		if (info->flags & RATE_INFO_FLAGS_40_MHZ_WIDTH &&
		    FUNC3(msg, NL80211_RATE_INFO_40_MHZ_WIDTH))
			return false;
		if (info->flags & RATE_INFO_FLAGS_SHORT_GI &&
		    FUNC3(msg, NL80211_RATE_INFO_SHORT_GI))
			return false;
	} else if (info->flags & RATE_INFO_FLAGS_VHT_MCS) {
		if (FUNC6(msg, NL80211_RATE_INFO_VHT_MCS, info->mcs))
			return false;
		if (FUNC6(msg, NL80211_RATE_INFO_VHT_NSS, info->nss))
			return false;
		if (info->flags & RATE_INFO_FLAGS_40_MHZ_WIDTH &&
		    FUNC3(msg, NL80211_RATE_INFO_40_MHZ_WIDTH))
			return false;
		if (info->flags & RATE_INFO_FLAGS_80_MHZ_WIDTH &&
		    FUNC3(msg, NL80211_RATE_INFO_80_MHZ_WIDTH))
			return false;
		if (info->flags & RATE_INFO_FLAGS_80P80_MHZ_WIDTH &&
		    FUNC3(msg, NL80211_RATE_INFO_80P80_MHZ_WIDTH))
			return false;
		if (info->flags & RATE_INFO_FLAGS_160_MHZ_WIDTH &&
		    FUNC3(msg, NL80211_RATE_INFO_160_MHZ_WIDTH))
			return false;
		if (info->flags & RATE_INFO_FLAGS_SHORT_GI &&
		    FUNC3(msg, NL80211_RATE_INFO_SHORT_GI))
			return false;
	}

	FUNC1(msg, rate);
	return true;
}