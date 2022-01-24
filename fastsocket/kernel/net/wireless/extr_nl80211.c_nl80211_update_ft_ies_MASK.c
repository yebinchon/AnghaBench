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
struct sk_buff {int dummy; } ;
struct net_device {TYPE_1__* ops; } ;
struct genl_info {int /*<<< orphan*/ * attrs; struct net_device** user_ptr; } ;
struct cfg80211_update_ft_ies_params {int /*<<< orphan*/  ie_len; int /*<<< orphan*/  ie; int /*<<< orphan*/  md; } ;
struct cfg80211_registered_device {TYPE_1__* ops; } ;
typedef  int /*<<< orphan*/  ft_params ;
struct TYPE_2__ {int /*<<< orphan*/  update_ft_ies; } ;

/* Variables and functions */
 int EINVAL ; 
 int EOPNOTSUPP ; 
 size_t NL80211_ATTR_IE ; 
 size_t NL80211_ATTR_MDID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct cfg80211_update_ft_ies_params*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (struct net_device*,struct net_device*,struct cfg80211_update_ft_ies_params*) ; 

__attribute__((used)) static int FUNC6(struct sk_buff *skb, struct genl_info *info)
{
	struct cfg80211_registered_device *rdev = info->user_ptr[0];
	struct cfg80211_update_ft_ies_params ft_params;
	struct net_device *dev = info->user_ptr[1];

	if (!rdev->ops->update_ft_ies)
		return -EOPNOTSUPP;

	if (!info->attrs[NL80211_ATTR_MDID] ||
	    !FUNC0(info->attrs[NL80211_ATTR_IE]))
		return -EINVAL;

	FUNC1(&ft_params, 0, sizeof(ft_params));
	ft_params.md = FUNC3(info->attrs[NL80211_ATTR_MDID]);
	ft_params.ie = FUNC2(info->attrs[NL80211_ATTR_IE]);
	ft_params.ie_len = FUNC4(info->attrs[NL80211_ATTR_IE]);

	return FUNC5(rdev, dev, &ft_params);
}