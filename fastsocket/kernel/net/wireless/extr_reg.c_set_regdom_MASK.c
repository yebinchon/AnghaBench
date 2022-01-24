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
struct regulatory_request {int /*<<< orphan*/  initiator; int /*<<< orphan*/  intersect; } ;
struct ieee80211_regdomain {int dummy; } ;

/* Variables and functions */
 int EALREADY ; 
 int EINVAL ; 
 scalar_t__ FUNC0 (int) ; 
 int FUNC1 (struct ieee80211_regdomain const*) ; 
 struct ieee80211_regdomain const* FUNC2 () ; 
 struct regulatory_request* FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct ieee80211_regdomain const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct regulatory_request*) ; 
 int /*<<< orphan*/  FUNC8 (struct ieee80211_regdomain const*) ; 
 int /*<<< orphan*/  reg_mutex ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 

int FUNC11(const struct ieee80211_regdomain *rd)
{
	struct regulatory_request *lr;
	int r;

	FUNC5(&reg_mutex);
	lr = FUNC3();

	/* Note that this doesn't update the wiphys, this is done below */
	r = FUNC1(rd);
	if (r) {
		if (r == -EALREADY)
			FUNC9();

		FUNC4(rd);
		goto out;
	}

	/* This would make this whole thing pointless */
	if (FUNC0(!lr->intersect && rd != FUNC2())) {
		r = -EINVAL;
		goto out;
	}

	/* update all wiphys now with the new established regulatory domain */
	FUNC10(lr->initiator);

	FUNC8(FUNC2());

	FUNC7(lr);

	FUNC9();

 out:
	FUNC6(&reg_mutex);

	return r;
}