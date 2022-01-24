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
typedef  int /*<<< orphan*/  u32 ;
struct vif_params {int dummy; } ;
struct net_device {int dummy; } ;
struct cfg80211_registered_device {int /*<<< orphan*/  wiphy; TYPE_1__* ops; } ;
typedef  enum nl80211_iftype { ____Placeholder_nl80211_iftype } nl80211_iftype ;
struct TYPE_2__ {int (* change_virtual_intf ) (int /*<<< orphan*/ *,struct net_device*,int,int /*<<< orphan*/ *,struct vif_params*) ;} ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,struct net_device*,int,int /*<<< orphan*/ *,struct vif_params*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct net_device*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static inline int
FUNC3(struct cfg80211_registered_device *rdev,
			 struct net_device *dev, enum nl80211_iftype type,
			 u32 *flags, struct vif_params *params)
{
	int ret;
	FUNC1(&rdev->wiphy, dev, type);
	ret = rdev->ops->change_virtual_intf(&rdev->wiphy, dev, type, flags,
					     params);
	FUNC2(&rdev->wiphy, ret);
	return ret;
}