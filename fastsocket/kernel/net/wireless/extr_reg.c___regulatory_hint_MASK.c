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
struct wiphy {int /*<<< orphan*/  regd; } ;
typedef  struct regulatory_request {scalar_t__ initiator; int intersect; int processed; int /*<<< orphan*/ * alpha2; } const regulatory_request ;
struct ieee80211_regdomain {scalar_t__ initiator; int intersect; int processed; int /*<<< orphan*/ * alpha2; } ;
typedef  enum reg_request_treatment { ____Placeholder_reg_request_treatment } reg_request_treatment ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct regulatory_request const*) ; 
 scalar_t__ NL80211_REGDOM_SET_BY_DRIVER ; 
 scalar_t__ NL80211_REGDOM_SET_BY_USER ; 
 int FUNC1 (struct regulatory_request const*) ; 
 int REG_REQ_ALREADY_SET ; 
 int REG_REQ_IGNORE ; 
#define  REG_REQ_INTERSECT 129 
#define  REG_REQ_OK 128 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 struct regulatory_request const core_request_world ; 
 int /*<<< orphan*/  FUNC3 () ; 
 struct regulatory_request* FUNC4 () ; 
 int FUNC5 (struct wiphy*,struct regulatory_request const*) ; 
 int /*<<< orphan*/  FUNC6 (struct regulatory_request const*) ; 
 int /*<<< orphan*/  FUNC7 (struct regulatory_request const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  last_request ; 
 int /*<<< orphan*/  FUNC8 (struct regulatory_request const*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,struct regulatory_request const*) ; 
 int /*<<< orphan*/  rcu_head ; 
 struct regulatory_request* FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/ * user_alpha2 ; 

__attribute__((used)) static enum reg_request_treatment
FUNC12(struct wiphy *wiphy,
		  struct regulatory_request *pending_request)
{
	const struct ieee80211_regdomain *regd;
	bool intersect = false;
	enum reg_request_treatment treatment;
	struct regulatory_request *lr;

	treatment = FUNC5(wiphy, pending_request);

	switch (treatment) {
	case REG_REQ_INTERSECT:
		if (pending_request->initiator ==
		    NL80211_REGDOM_SET_BY_DRIVER) {
			regd = FUNC10(FUNC3());
			if (FUNC0(regd)) {
				FUNC6(pending_request);
				return FUNC1(regd);
			}
			FUNC9(wiphy->regd, regd);
		}
		intersect = true;
		break;
	case REG_REQ_OK:
		break;
	default:
		/*
		 * If the regulatory domain being requested by the
		 * driver has already been set just copy it to the
		 * wiphy
		 */
		if (treatment == REG_REQ_ALREADY_SET &&
		    pending_request->initiator == NL80211_REGDOM_SET_BY_DRIVER) {
			regd = FUNC10(FUNC3());
			if (FUNC0(regd)) {
				FUNC6(pending_request);
				return REG_REQ_IGNORE;
			}
			treatment = REG_REQ_ALREADY_SET;
			FUNC9(wiphy->regd, regd);
			goto new_request;
		}
		FUNC6(pending_request);
		return treatment;
	}

new_request:
	lr = FUNC4();
	if (lr != &core_request_world && lr)
		FUNC7(lr, rcu_head);

	pending_request->intersect = intersect;
	pending_request->processed = false;
	FUNC9(last_request, pending_request);
	lr = pending_request;

	pending_request = NULL;

	if (lr->initiator == NL80211_REGDOM_SET_BY_USER) {
		user_alpha2[0] = lr->alpha2[0];
		user_alpha2[1] = lr->alpha2[1];
	}

	/* When r == REG_REQ_INTERSECT we do need to call CRDA */
	if (treatment != REG_REQ_OK && treatment != REG_REQ_INTERSECT) {
		/*
		 * Since CRDA will not be called in this case as we already
		 * have applied the requested regulatory domain before we just
		 * inform userspace we have processed the request
		 */
		if (treatment == REG_REQ_ALREADY_SET) {
			FUNC8(lr);
			FUNC11();
		}
		return treatment;
	}

	if (FUNC2(lr->alpha2))
		return REG_REQ_IGNORE;
	return REG_REQ_OK;
}