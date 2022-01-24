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
struct nlattr {int dummy; } ;
struct net_device {TYPE_1__* ieee80211_ptr; } ;
struct genl_info {struct nlattr** attrs; } ;
struct cfg80211_registered_device {int /*<<< orphan*/  wiphy; } ;
struct TYPE_2__ {scalar_t__ iftype; int /*<<< orphan*/ * wiphy; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENETDOWN ; 
 int ENODEV ; 
 struct net_device* FUNC0 (int) ; 
 size_t NL80211_ATTR_STA_VLAN ; 
 scalar_t__ NL80211_IFTYPE_AP ; 
 scalar_t__ NL80211_IFTYPE_AP_VLAN ; 
 scalar_t__ NL80211_IFTYPE_P2P_GO ; 
 struct net_device* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct genl_info*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct nlattr*) ; 

__attribute__((used)) static struct net_device *FUNC6(struct genl_info *info,
				   struct cfg80211_registered_device *rdev)
{
	struct nlattr *vlanattr = info->attrs[NL80211_ATTR_STA_VLAN];
	struct net_device *v;
	int ret;

	if (!vlanattr)
		return NULL;

	v = FUNC1(FUNC3(info), FUNC5(vlanattr));
	if (!v)
		return FUNC0(-ENODEV);

	if (!v->ieee80211_ptr || v->ieee80211_ptr->wiphy != &rdev->wiphy) {
		ret = -EINVAL;
		goto error;
	}

	if (v->ieee80211_ptr->iftype != NL80211_IFTYPE_AP_VLAN &&
	    v->ieee80211_ptr->iftype != NL80211_IFTYPE_AP &&
	    v->ieee80211_ptr->iftype != NL80211_IFTYPE_P2P_GO) {
		ret = -EINVAL;
		goto error;
	}

	if (!FUNC4(v)) {
		ret = -ENETDOWN;
		goto error;
	}

	return v;
 error:
	FUNC2(v);
	return FUNC0(ret);
}