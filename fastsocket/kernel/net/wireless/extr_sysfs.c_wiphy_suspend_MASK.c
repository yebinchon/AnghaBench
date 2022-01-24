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
struct device {int dummy; } ;
struct TYPE_3__ {scalar_t__ registered; } ;
struct cfg80211_registered_device {int /*<<< orphan*/ * wowlan; TYPE_2__* ops; TYPE_1__ wiphy; int /*<<< orphan*/  suspend_at; } ;
typedef  int /*<<< orphan*/  pm_message_t ;
struct TYPE_4__ {scalar_t__ suspend; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cfg80211_registered_device*) ; 
 struct cfg80211_registered_device* FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int FUNC3 (struct cfg80211_registered_device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 

__attribute__((used)) static int FUNC6(struct device *dev, pm_message_t state)
{
	struct cfg80211_registered_device *rdev = FUNC1(dev);
	int ret = 0;

	rdev->suspend_at = FUNC2();

	FUNC4();
	if (rdev->wiphy.registered) {
		if (!rdev->wowlan)
			FUNC0(rdev);
		if (rdev->ops->suspend)
			ret = FUNC3(rdev, rdev->wowlan);
		if (ret == 1) {
			/* Driver refuse to configure wowlan */
			FUNC0(rdev);
			ret = FUNC3(rdev, NULL);
		}
	}
	FUNC5();

	return ret;
}