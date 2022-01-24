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
struct sta_info {int /*<<< orphan*/  rate_ctrl_priv; int /*<<< orphan*/  sta; int /*<<< orphan*/  rate_ctrl; } ;
struct TYPE_2__ {int flags; } ;
struct ieee80211_local {int /*<<< orphan*/  rate_ctrl; TYPE_1__ hw; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int ENOMEM ; 
 int IEEE80211_HW_HAS_RATE_CONTROL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC1(struct ieee80211_local *local,
				    struct sta_info *sta, gfp_t gfp)
{
	if (local->hw.flags & IEEE80211_HW_HAS_RATE_CONTROL)
		return 0;

	sta->rate_ctrl = local->rate_ctrl;
	sta->rate_ctrl_priv = FUNC0(sta->rate_ctrl,
						     &sta->sta, gfp);
	if (!sta->rate_ctrl_priv)
		return -ENOMEM;

	return 0;
}