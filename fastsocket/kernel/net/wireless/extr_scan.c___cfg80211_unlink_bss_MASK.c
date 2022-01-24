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
struct cfg80211_registered_device {int /*<<< orphan*/  bss_tree; int /*<<< orphan*/  bss_lock; } ;
struct TYPE_2__ {int /*<<< orphan*/  hidden_beacon_bss; } ;
struct cfg80211_internal_bss {int /*<<< orphan*/  rbn; int /*<<< orphan*/  list; int /*<<< orphan*/  hidden_list; TYPE_1__ pub; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cfg80211_registered_device*,struct cfg80211_internal_bss*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool FUNC5(struct cfg80211_registered_device *dev,
				  struct cfg80211_internal_bss *bss)
{
	FUNC3(&dev->bss_lock);

	if (!FUNC2(&bss->hidden_list)) {
		/*
		 * don't remove the beacon entry if it has
		 * probe responses associated with it
		 */
		if (!bss->pub.hidden_beacon_bss)
			return false;
		/*
		 * if it's a probe response entry break its
		 * link to the other entries in the group
		 */
		FUNC1(&bss->hidden_list);
	}

	FUNC1(&bss->list);
	FUNC4(&bss->rbn, &dev->bss_tree);
	FUNC0(dev, bss);
	return true;
}