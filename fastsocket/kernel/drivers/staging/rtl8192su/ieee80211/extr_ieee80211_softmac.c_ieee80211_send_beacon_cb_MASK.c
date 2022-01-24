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
struct ieee80211_device {int /*<<< orphan*/  beacon_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ieee80211_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC3(unsigned long _ieee)
{
	struct ieee80211_device *ieee =
		(struct ieee80211_device *) _ieee;
	unsigned long flags;

	FUNC1(&ieee->beacon_lock, flags);
	FUNC0(ieee);
	FUNC2(&ieee->beacon_lock, flags);
}