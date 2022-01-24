#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {TYPE_2__* wiphy; } ;
struct ieee80211_local {TYPE_1__ hw; int /*<<< orphan*/  ack_status_frames; scalar_t__ wiphy_ciphers_allocated; int /*<<< orphan*/  mtx; int /*<<< orphan*/  iflist_mtx; } ;
struct ieee80211_hw {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  cipher_suites; } ;

/* Variables and functions */
 struct ieee80211_local* FUNC0 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ieee80211_free_ack_frame ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 

void FUNC6(struct ieee80211_hw *hw)
{
	struct ieee80211_local *local = FUNC0(hw);

	FUNC4(&local->iflist_mtx);
	FUNC4(&local->mtx);

	if (local->wiphy_ciphers_allocated)
		FUNC3(local->hw.wiphy->cipher_suites);

	FUNC2(&local->ack_status_frames,
		     ieee80211_free_ack_frame, NULL);
	FUNC1(&local->ack_status_frames);

	FUNC5(local->hw.wiphy);
}