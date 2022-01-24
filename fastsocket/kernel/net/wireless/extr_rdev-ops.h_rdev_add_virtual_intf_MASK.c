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
struct wireless_dev {int dummy; } ;
struct vif_params {int dummy; } ;
struct cfg80211_registered_device {int /*<<< orphan*/  wiphy; TYPE_1__* ops; } ;
typedef  enum nl80211_iftype { ____Placeholder_nl80211_iftype } nl80211_iftype ;
struct TYPE_2__ {struct wireless_dev* (* add_virtual_intf ) (int /*<<< orphan*/ *,char*,int,int /*<<< orphan*/ *,struct vif_params*) ;} ;

/* Variables and functions */
 struct wireless_dev* FUNC0 (int /*<<< orphan*/ *,char*,int,int /*<<< orphan*/ *,struct vif_params*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct wireless_dev*) ; 

__attribute__((used)) static inline struct wireless_dev
*FUNC3(struct cfg80211_registered_device *rdev, char *name,
		       enum nl80211_iftype type, u32 *flags,
		       struct vif_params *params)
{
	struct wireless_dev *ret;
	FUNC1(&rdev->wiphy, name, type);
	ret = rdev->ops->add_virtual_intf(&rdev->wiphy, name, type, flags,
					  params);
	FUNC2(&rdev->wiphy, ret);
	return ret;
}