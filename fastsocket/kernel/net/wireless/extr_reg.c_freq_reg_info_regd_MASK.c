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
typedef  int /*<<< orphan*/  u32 ;
struct wiphy {int dummy; } ;
struct ieee80211_regdomain {int n_reg_rules; struct ieee80211_reg_rule* reg_rules; } ;
struct ieee80211_freq_range {int dummy; } ;
struct ieee80211_reg_rule {struct ieee80211_freq_range freq_range; } ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ERANGE ; 
 struct ieee80211_reg_rule const* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (struct ieee80211_freq_range const*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct ieee80211_freq_range const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static const struct ieee80211_reg_rule *
FUNC4(struct wiphy *wiphy, u32 center_freq,
		   const struct ieee80211_regdomain *regd)
{
	int i;
	bool band_rule_found = false;
	bool bw_fits = false;

	if (!regd)
		return FUNC0(-EINVAL);

	for (i = 0; i < regd->n_reg_rules; i++) {
		const struct ieee80211_reg_rule *rr;
		const struct ieee80211_freq_range *fr = NULL;

		rr = &regd->reg_rules[i];
		fr = &rr->freq_range;

		/*
		 * We only need to know if one frequency rule was
		 * was in center_freq's band, that's enough, so lets
		 * not overwrite it once found
		 */
		if (!band_rule_found)
			band_rule_found = FUNC2(fr, center_freq);

		bw_fits = FUNC3(fr, center_freq, FUNC1(20));

		if (band_rule_found && bw_fits)
			return rr;
	}

	if (!band_rule_found)
		return FUNC0(-ERANGE);

	return FUNC0(-EINVAL);
}