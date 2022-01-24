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
struct regulatory_request {scalar_t__ wiphy_idx; int /*<<< orphan*/  alpha2; } ;
typedef  enum nl80211_reg_initiator { ____Placeholder_nl80211_reg_initiator } nl80211_reg_initiator ;

/* Variables and functions */
 int NL80211_REGDOM_SET_BY_DRIVER ; 
 int NL80211_REGDOM_SET_BY_USER ; 
#define  REG_REQ_ALREADY_SET 128 
 scalar_t__ FUNC0 (int) ; 
 int WIPHY_FLAG_STRICT_REGULATORY ; 
 scalar_t__ WIPHY_IDX_INVALID ; 
 int FUNC1 (struct wiphy*,struct regulatory_request*) ; 
 int /*<<< orphan*/  FUNC2 (struct regulatory_request*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  reg_timeout ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct wiphy* FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct wiphy*,int) ; 

__attribute__((used)) static void FUNC7(struct regulatory_request *reg_request,
			     enum nl80211_reg_initiator reg_initiator)
{
	struct wiphy *wiphy = NULL;

	if (FUNC0(!reg_request->alpha2))
		return;

	if (reg_request->wiphy_idx != WIPHY_IDX_INVALID)
		wiphy = FUNC5(reg_request->wiphy_idx);

	if (reg_initiator == NL80211_REGDOM_SET_BY_DRIVER && !wiphy) {
		FUNC2(reg_request);
		return;
	}

	switch (FUNC1(wiphy, reg_request)) {
	case REG_REQ_ALREADY_SET:
		/* This is required so that the orig_* parameters are saved */
		if (wiphy && wiphy->flags & WIPHY_FLAG_STRICT_REGULATORY)
			FUNC6(wiphy, reg_initiator);
		break;
	default:
		if (reg_initiator == NL80211_REGDOM_SET_BY_USER)
			FUNC4(&reg_timeout,
					      FUNC3(3142));
		break;
	}
}