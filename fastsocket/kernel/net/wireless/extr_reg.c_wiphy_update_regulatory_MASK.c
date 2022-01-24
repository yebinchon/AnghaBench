#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct wiphy {int /*<<< orphan*/  (* reg_notifier ) (struct wiphy*,struct regulatory_request*) ;int /*<<< orphan*/ * bands; } ;
struct regulatory_request {int /*<<< orphan*/  dfs_region; } ;
typedef  enum nl80211_reg_initiator { ____Placeholder_nl80211_reg_initiator } nl80211_reg_initiator ;
typedef  enum ieee80211_band { ____Placeholder_ieee80211_band } ieee80211_band ;
struct TYPE_2__ {int /*<<< orphan*/  dfs_region; } ;

/* Variables and functions */
 int IEEE80211_NUM_BANDS ; 
 TYPE_1__* FUNC0 () ; 
 struct regulatory_request* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct wiphy*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct wiphy*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct wiphy*) ; 
 int /*<<< orphan*/  FUNC5 (struct wiphy*) ; 
 int /*<<< orphan*/  FUNC6 (struct wiphy*,struct regulatory_request*) ; 

__attribute__((used)) static void FUNC7(struct wiphy *wiphy,
				    enum nl80211_reg_initiator initiator)
{
	enum ieee80211_band band;
	struct regulatory_request *lr = FUNC1();

	if (FUNC3(wiphy, initiator))
		return;

	lr->dfs_region = FUNC0()->dfs_region;

	for (band = 0; band < IEEE80211_NUM_BANDS; band++)
		FUNC2(wiphy, initiator, wiphy->bands[band]);

	FUNC4(wiphy);
	FUNC5(wiphy);

	if (wiphy->reg_notifier)
		wiphy->reg_notifier(wiphy, lr);
}