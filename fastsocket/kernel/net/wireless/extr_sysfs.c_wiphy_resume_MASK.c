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
struct TYPE_4__ {scalar_t__ registered; } ;
struct cfg80211_registered_device {TYPE_2__ wiphy; TYPE_1__* ops; scalar_t__ suspend_at; } ;
struct TYPE_3__ {scalar_t__ resume; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cfg80211_registered_device*,scalar_t__) ; 
 struct cfg80211_registered_device* FUNC1 (struct device*) ; 
 scalar_t__ FUNC2 () ; 
 int FUNC3 (struct cfg80211_registered_device*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 

__attribute__((used)) static int FUNC6(struct device *dev)
{
	struct cfg80211_registered_device *rdev = FUNC1(dev);
	int ret = 0;

	/* Age scan results with time spent in suspend */
	FUNC0(rdev, FUNC2() - rdev->suspend_at);

	if (rdev->ops->resume) {
		FUNC4();
		if (rdev->wiphy.registered)
			ret = FUNC3(rdev);
		FUNC5();
	}

	return ret;
}