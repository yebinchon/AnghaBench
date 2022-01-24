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
struct wiphy {int dummy; } ;
struct ieee80211_regdomain {int dummy; } ;
struct ieee80211_freq_range {int /*<<< orphan*/  max_bandwidth_khz; } ;
struct ieee80211_power_rule {int /*<<< orphan*/  max_eirp; int /*<<< orphan*/  max_antenna_gain; } ;
struct ieee80211_reg_rule {int /*<<< orphan*/  flags; struct ieee80211_freq_range freq_range; struct ieee80211_power_rule power_rule; } ;
struct ieee80211_channel {int center_freq; int flags; int max_antenna_gain; int max_reg_power; int max_power; } ;

/* Variables and functions */
 int IEEE80211_CHAN_DISABLED ; 
 int IEEE80211_CHAN_NO_160MHZ ; 
 int IEEE80211_CHAN_NO_80MHZ ; 
 int IEEE80211_CHAN_NO_HT40 ; 
 scalar_t__ FUNC0 (struct ieee80211_reg_rule const*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct ieee80211_channel*,struct ieee80211_reg_rule const*) ; 
 struct ieee80211_reg_rule* FUNC6 (struct wiphy*,int /*<<< orphan*/ ,struct ieee80211_regdomain const*) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(struct wiphy *wiphy,
				  struct ieee80211_channel *chan,
				  const struct ieee80211_regdomain *regd)
{
	u32 bw_flags = 0;
	const struct ieee80211_reg_rule *reg_rule = NULL;
	const struct ieee80211_power_rule *power_rule = NULL;
	const struct ieee80211_freq_range *freq_range = NULL;

	reg_rule = FUNC6(wiphy, FUNC3(chan->center_freq),
				      regd);

	if (FUNC0(reg_rule)) {
		FUNC4("Disabling freq %d MHz as custom regd has no rule that fits it\n",
			      chan->center_freq);
		chan->flags = IEEE80211_CHAN_DISABLED;
		return;
	}

	FUNC5(chan, reg_rule);

	power_rule = &reg_rule->power_rule;
	freq_range = &reg_rule->freq_range;

	if (freq_range->max_bandwidth_khz < FUNC3(40))
		bw_flags = IEEE80211_CHAN_NO_HT40;
	if (freq_range->max_bandwidth_khz < FUNC3(80))
		bw_flags |= IEEE80211_CHAN_NO_80MHZ;
	if (freq_range->max_bandwidth_khz < FUNC3(160))
		bw_flags |= IEEE80211_CHAN_NO_160MHZ;

	chan->flags |= FUNC7(reg_rule->flags) | bw_flags;
	chan->max_antenna_gain = (int) FUNC1(power_rule->max_antenna_gain);
	chan->max_reg_power = chan->max_power =
		(int) FUNC2(power_rule->max_eirp);
}