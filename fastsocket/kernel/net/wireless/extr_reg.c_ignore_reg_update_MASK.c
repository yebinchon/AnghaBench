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
struct wiphy {int flags; int /*<<< orphan*/  regd; } ;
struct regulatory_request {int /*<<< orphan*/  alpha2; } ;
typedef  enum nl80211_reg_initiator { ____Placeholder_nl80211_reg_initiator } nl80211_reg_initiator ;

/* Variables and functions */
 int NL80211_REGDOM_SET_BY_CORE ; 
 int NL80211_REGDOM_SET_BY_COUNTRY_IE ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int WIPHY_FLAG_CUSTOM_REGULATORY ; 
 int WIPHY_FLAG_STRICT_REGULATORY ; 
 struct regulatory_request* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct wiphy*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 scalar_t__ FUNC5 (struct regulatory_request*) ; 

__attribute__((used)) static bool FUNC6(struct wiphy *wiphy,
			      enum nl80211_reg_initiator initiator)
{
	struct regulatory_request *lr = FUNC1();

	if (!lr) {
		FUNC0("Ignoring regulatory request %s since last_request is not set\n",
			      FUNC4(initiator));
		return true;
	}

	if (initiator == NL80211_REGDOM_SET_BY_CORE &&
	    wiphy->flags & WIPHY_FLAG_CUSTOM_REGULATORY) {
		FUNC0("Ignoring regulatory request %s since the driver uses its own custom regulatory domain\n",
			      FUNC4(initiator));
		return true;
	}

	/*
	 * wiphy->regd will be set once the device has its own
	 * desired regulatory domain set
	 */
	if (wiphy->flags & WIPHY_FLAG_STRICT_REGULATORY && !wiphy->regd &&
	    initiator != NL80211_REGDOM_SET_BY_COUNTRY_IE &&
	    !FUNC2(lr->alpha2)) {
		FUNC0("Ignoring regulatory request %s since the driver requires its own regulatory domain to be set first\n",
			      FUNC4(initiator));
		return true;
	}

	if (FUNC5(lr))
		return FUNC3(wiphy);

	return false;
}