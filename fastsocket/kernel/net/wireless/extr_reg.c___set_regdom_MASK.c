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
struct wiphy {scalar_t__ regd; } ;
struct regulatory_request {scalar_t__ initiator; int /*<<< orphan*/  intersect; int /*<<< orphan*/  wiphy_idx; } ;
struct ieee80211_regdomain {int /*<<< orphan*/  alpha2; } ;

/* Variables and functions */
 int EALREADY ; 
 int EINVAL ; 
 int ENODEV ; 
 scalar_t__ FUNC0 (struct ieee80211_regdomain const*) ; 
 scalar_t__ NL80211_REGDOM_SET_BY_COUNTRY_IE ; 
 scalar_t__ NL80211_REGDOM_SET_BY_DRIVER ; 
 int FUNC1 (struct ieee80211_regdomain const*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 struct regulatory_request* FUNC3 () ; 
 struct ieee80211_regdomain* FUNC4 (struct wiphy*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct ieee80211_regdomain const*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct ieee80211_regdomain const*) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 int /*<<< orphan*/  FUNC12 (struct ieee80211_regdomain const*) ; 
 int /*<<< orphan*/  FUNC13 (scalar_t__,struct ieee80211_regdomain const*) ; 
 int /*<<< orphan*/  FUNC14 (struct ieee80211_regdomain const*) ; 
 struct ieee80211_regdomain* FUNC15 (struct ieee80211_regdomain const*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  reg_timeout ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 struct ieee80211_regdomain* FUNC18 (struct ieee80211_regdomain const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int,struct ieee80211_regdomain const*) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (struct ieee80211_regdomain const*) ; 
 struct wiphy* FUNC22 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC23(const struct ieee80211_regdomain *rd)
{
	const struct ieee80211_regdomain *regd;
	const struct ieee80211_regdomain *intersected_rd = NULL;
	struct wiphy *request_wiphy;
	struct regulatory_request *lr = FUNC3();

	/* Some basic sanity checks first */

	if (!FUNC16(rd->alpha2))
		return -EINVAL;

	if (FUNC9(rd->alpha2)) {
		FUNC21(rd);
		return 0;
	}

	if (!FUNC5(rd->alpha2) && !FUNC6(rd->alpha2) &&
	    !FUNC7(rd->alpha2))
		return -EINVAL;

	/*
	 * Lets only bother proceeding on the same alpha2 if the current
	 * rd is non static (it means CRDA was present and was used last)
	 * and the pending request came in from a country IE
	 */
	if (lr->initiator != NL80211_REGDOM_SET_BY_COUNTRY_IE) {
		/*
		 * If someone else asked us to change the rd lets only bother
		 * checking if the alpha2 changes if CRDA was already called
		 */
		if (!FUNC17(rd->alpha2))
			return -EALREADY;
	}

	/*
	 * Now lets set the regulatory domain, update all driver channels
	 * and finally inform them of what we have done, in case they want
	 * to review or adjust their own settings based on their own
	 * internal EEPROM data
	 */

	if (!FUNC8(rd)) {
		FUNC11("Invalid regulatory domain detected:\n");
		FUNC12(rd);
		return -EINVAL;
	}

	request_wiphy = FUNC22(lr->wiphy_idx);
	if (!request_wiphy &&
	    (lr->initiator == NL80211_REGDOM_SET_BY_DRIVER ||
	     lr->initiator == NL80211_REGDOM_SET_BY_COUNTRY_IE)) {
		FUNC20(&reg_timeout, 0);
		return -ENODEV;
	}

	if (!lr->intersect) {
		if (lr->initiator != NL80211_REGDOM_SET_BY_DRIVER) {
			FUNC19(false, rd);
			return 0;
		}

		/*
		 * For a driver hint, lets copy the regulatory domain the
		 * driver wanted to the wiphy to deal with conflicts
		 */

		/*
		 * Userspace could have sent two replies with only
		 * one kernel request.
		 */
		if (request_wiphy->regd)
			return -EALREADY;

		regd = FUNC15(rd);
		if (FUNC0(regd))
			return FUNC1(regd);

		FUNC13(request_wiphy->regd, regd);
		FUNC19(false, rd);
		return 0;
	}

	/* Intersection requires a bit more work */

	if (lr->initiator != NL80211_REGDOM_SET_BY_COUNTRY_IE) {
		intersected_rd = FUNC18(rd, FUNC2());
		if (!intersected_rd)
			return -EINVAL;

		/*
		 * We can trash what CRDA provided now.
		 * However if a driver requested this specific regulatory
		 * domain we keep it for its private use
		 */
		if (lr->initiator == NL80211_REGDOM_SET_BY_DRIVER) {
			const struct ieee80211_regdomain *tmp;

			tmp = FUNC4(request_wiphy);
			FUNC13(request_wiphy->regd, rd);
			FUNC14(tmp);
		} else {
			FUNC10(rd);
		}

		rd = NULL;

		FUNC19(false, intersected_rd);

		return 0;
	}

	return -EINVAL;
}