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
struct wiphy {scalar_t__ regd; } ;
struct regulatory_request {scalar_t__ initiator; } ;
struct ieee80211_regdomain {int dummy; } ;
struct ieee80211_reg_rule {int dummy; } ;

/* Variables and functions */
 scalar_t__ NL80211_REGDOM_SET_BY_COUNTRY_IE ; 
 scalar_t__ NL80211_REGDOM_SET_BY_USER ; 
 struct ieee80211_reg_rule const* FUNC0 (struct wiphy*,int /*<<< orphan*/ ,struct ieee80211_regdomain const*) ; 
 struct ieee80211_regdomain* FUNC1 () ; 
 struct regulatory_request* FUNC2 () ; 
 struct ieee80211_regdomain* FUNC3 (struct wiphy*) ; 

const struct ieee80211_reg_rule *FUNC4(struct wiphy *wiphy,
					       u32 center_freq)
{
	const struct ieee80211_regdomain *regd;
	struct regulatory_request *lr = FUNC2();

	/*
	 * Follow the driver's regulatory domain, if present, unless a country
	 * IE has been processed or a user wants to help complaince further
	 */
	if (lr->initiator != NL80211_REGDOM_SET_BY_COUNTRY_IE &&
	    lr->initiator != NL80211_REGDOM_SET_BY_USER &&
	    wiphy->regd)
		regd = FUNC3(wiphy);
	else
		regd = FUNC1();

	return FUNC0(wiphy, center_freq, regd);
}