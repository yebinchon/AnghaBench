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
struct wiphy {int dummy; } ;
struct cfg80211_registered_device {int /*<<< orphan*/  dfs_update_channels_wk; } ;
struct cfg80211_chan_def {int dummy; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int /*<<< orphan*/  IEEE80211_DFS_MIN_NOP_TIME_MS ; 
 int /*<<< orphan*/  NL80211_DFS_UNAVAILABLE ; 
 int /*<<< orphan*/  NL80211_RADAR_DETECTED ; 
 int /*<<< orphan*/  FUNC0 (struct wiphy*,struct cfg80211_chan_def*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cfg80211_wq ; 
 unsigned long FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct cfg80211_registered_device*,struct cfg80211_chan_def*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (struct wiphy*,struct cfg80211_chan_def*) ; 
 struct cfg80211_registered_device* FUNC5 (struct wiphy*) ; 

void FUNC6(struct wiphy *wiphy,
			  struct cfg80211_chan_def *chandef,
			  gfp_t gfp)
{
	struct cfg80211_registered_device *rdev = FUNC5(wiphy);
	unsigned long timeout;

	FUNC4(wiphy, chandef);

	/* only set the chandef supplied channel to unavailable, in
	 * case the radar is detected on only one of multiple channels
	 * spanned by the chandef.
	 */
	FUNC0(wiphy, chandef, NL80211_DFS_UNAVAILABLE);

	timeout = FUNC1(IEEE80211_DFS_MIN_NOP_TIME_MS);
	FUNC3(cfg80211_wq, &rdev->dfs_update_channels_wk,
			   timeout);

	FUNC2(rdev, chandef, NL80211_RADAR_DETECTED, NULL, gfp);
}