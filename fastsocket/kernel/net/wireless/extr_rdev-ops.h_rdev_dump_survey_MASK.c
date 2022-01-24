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
struct survey_info {int dummy; } ;
struct net_device {int dummy; } ;
struct cfg80211_registered_device {int /*<<< orphan*/  wiphy; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* dump_survey ) (int /*<<< orphan*/ *,struct net_device*,int,struct survey_info*) ;} ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,struct net_device*,int,struct survey_info*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct net_device*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,struct survey_info*) ; 

__attribute__((used)) static inline int FUNC4(struct cfg80211_registered_device *rdev,
				   struct net_device *netdev, int idx,
				   struct survey_info *info)
{
	int ret;
	FUNC1(&rdev->wiphy, netdev, idx);
	ret = rdev->ops->dump_survey(&rdev->wiphy, netdev, idx, info);
	if (ret < 0)
		FUNC2(&rdev->wiphy, ret);
	else
		FUNC3(&rdev->wiphy, ret, info);
	return ret;
}