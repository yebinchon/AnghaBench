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
struct wiphy {int flags; } ;
struct regulatory_request {scalar_t__ initiator; } ;
struct ieee80211_regdomain {int /*<<< orphan*/  alpha2; } ;

/* Variables and functions */
 scalar_t__ NL80211_REGDOM_SET_BY_COUNTRY_IE ; 
 int WIPHY_FLAG_CUSTOM_REGULATORY ; 
 struct ieee80211_regdomain* FUNC0 () ; 
 struct regulatory_request* FUNC1 () ; 
 struct ieee80211_regdomain* FUNC2 (struct wiphy*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC4(struct wiphy *wiphy)
{
	const struct ieee80211_regdomain *cr = FUNC0();
	const struct ieee80211_regdomain *wr = FUNC2(wiphy);
	struct regulatory_request *lr = FUNC1();

	if (FUNC3(cr->alpha2) || (wr && FUNC3(wr->alpha2)))
		return true;

	if (lr && lr->initiator != NL80211_REGDOM_SET_BY_COUNTRY_IE &&
	    wiphy->flags & WIPHY_FLAG_CUSTOM_REGULATORY)
		return true;

	return false;
}