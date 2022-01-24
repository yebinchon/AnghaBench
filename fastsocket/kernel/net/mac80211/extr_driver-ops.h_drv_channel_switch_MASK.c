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
struct ieee80211_local {int /*<<< orphan*/  hw; TYPE_1__* ops; } ;
struct ieee80211_channel_switch {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* channel_switch ) (int /*<<< orphan*/ *,struct ieee80211_channel_switch*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct ieee80211_channel_switch*) ; 
 int /*<<< orphan*/  FUNC2 (struct ieee80211_local*,struct ieee80211_channel_switch*) ; 
 int /*<<< orphan*/  FUNC3 (struct ieee80211_local*) ; 

__attribute__((used)) static inline void FUNC4(struct ieee80211_local *local,
				     struct ieee80211_channel_switch *ch_switch)
{
	FUNC0();

	FUNC2(local, ch_switch);
	local->ops->channel_switch(&local->hw, ch_switch);
	FUNC3(local);
}