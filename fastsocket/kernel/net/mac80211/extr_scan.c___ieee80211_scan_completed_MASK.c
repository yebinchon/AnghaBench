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
struct ieee80211_local {int /*<<< orphan*/ * scan_channel; scalar_t__ scanning; int /*<<< orphan*/  scan_sdata; int /*<<< orphan*/ * scan_req; int /*<<< orphan*/ * int_scan_req; int /*<<< orphan*/ * hw_scan_req; int /*<<< orphan*/  mtx; } ;
struct ieee80211_hw {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int FUNC2 (struct ieee80211_local*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct ieee80211_local*) ; 
 struct ieee80211_local* FUNC4 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC5 (struct ieee80211_local*) ; 
 int /*<<< orphan*/  FUNC6 (struct ieee80211_local*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct ieee80211_local*) ; 
 int /*<<< orphan*/  FUNC8 (struct ieee80211_local*) ; 
 int /*<<< orphan*/  FUNC9 (struct ieee80211_local*) ; 
 int /*<<< orphan*/  FUNC10 (struct ieee80211_local*) ; 
 scalar_t__ FUNC11 (struct ieee80211_local*) ; 
 int /*<<< orphan*/  FUNC12 (struct ieee80211_local*) ; 
 int /*<<< orphan*/  FUNC13 (struct ieee80211_local*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC19(struct ieee80211_hw *hw, bool aborted,
				       bool was_hw_scan)
{
	struct ieee80211_local *local = FUNC4(hw);

	FUNC15(&local->mtx);

	/*
	 * It's ok to abort a not-yet-running scan (that
	 * we have one at all will be verified by checking
	 * local->scan_req next), but not to complete it
	 * successfully.
	 */
	if (FUNC0(!local->scanning && !aborted))
		aborted = true;

	if (FUNC0(!local->scan_req))
		return;

	if (was_hw_scan && !aborted && FUNC11(local)) {
		int rc;

		rc = FUNC2(local,
			FUNC18(local->scan_sdata,
						  FUNC16(&local->mtx)),
			local->hw_scan_req);

		if (rc == 0)
			return;
	}

	FUNC14(local->hw_scan_req);
	local->hw_scan_req = NULL;

	if (local->scan_req != local->int_scan_req)
		FUNC1(local->scan_req, aborted);
	local->scan_req = NULL;
	FUNC17(local->scan_sdata, NULL);

	local->scanning = 0;
	local->scan_channel = NULL;

	/* Set power back to normal operating levels. */
	FUNC6(local, 0);

	if (!was_hw_scan) {
		FUNC5(local);
		FUNC3(local);
		FUNC10(local);
	}

	FUNC12(local);

	FUNC9(local);
	FUNC7(local);
	FUNC8(local);
	FUNC13(local);
}