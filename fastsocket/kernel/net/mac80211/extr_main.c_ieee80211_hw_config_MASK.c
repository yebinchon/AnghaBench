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
typedef  int u32 ;
struct ieee80211_local {scalar_t__ open_count; int /*<<< orphan*/  use_chanctx; } ;

/* Variables and functions */
 int IEEE80211_CONF_CHANGE_CHANNEL ; 
 int IEEE80211_CONF_CHANGE_POWER ; 
 int FUNC0 (struct ieee80211_local*,int) ; 
 int FUNC1 (struct ieee80211_local*) ; 
 int /*<<< orphan*/  FUNC2 () ; 

int FUNC3(struct ieee80211_local *local, u32 changed)
{
	int ret = 0;

	FUNC2();

	if (!local->use_chanctx)
		changed |= FUNC1(local);
	else
		changed &= ~(IEEE80211_CONF_CHANGE_CHANNEL |
			     IEEE80211_CONF_CHANGE_POWER);

	if (changed && local->open_count) {
		ret = FUNC0(local, changed);
		/*
		 * Goal:
		 * HW reconfiguration should never fail, the driver has told
		 * us what it can support so it should live up to that promise.
		 *
		 * Current status:
		 * rfkill is not integrated with mac80211 and a
		 * configuration command can thus fail if hardware rfkill
		 * is enabled
		 *
		 * FIXME: integrate rfkill with mac80211 and then add this
		 * WARN_ON() back
		 *
		 */
		/* WARN_ON(ret); */
	}

	return ret;
}