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
struct wireless_dev {int /*<<< orphan*/  p2p_started; int /*<<< orphan*/  wiphy; struct wireless_dev* netdev; } ;
struct sk_buff {int dummy; } ;
struct net_device {int /*<<< orphan*/  p2p_started; int /*<<< orphan*/  wiphy; struct net_device* netdev; } ;
struct genl_ops {int internal_flags; } ;
struct genl_info {struct wireless_dev** user_ptr; int /*<<< orphan*/  attrs; } ;
struct cfg80211_registered_device {int /*<<< orphan*/  p2p_started; int /*<<< orphan*/  wiphy; struct cfg80211_registered_device* netdev; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENETDOWN ; 
 scalar_t__ FUNC0 (struct wireless_dev*) ; 
 int NL80211_FLAG_CHECK_NETDEV_UP ; 
 int NL80211_FLAG_NEED_NETDEV ; 
 int NL80211_FLAG_NEED_RTNL ; 
 int NL80211_FLAG_NEED_WDEV ; 
 int NL80211_FLAG_NEED_WIPHY ; 
 int FUNC1 (struct wireless_dev*) ; 
 struct wireless_dev* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct wireless_dev* FUNC3 (int /*<<< orphan*/ ,struct genl_info*) ; 
 int /*<<< orphan*/  FUNC4 (struct wireless_dev*) ; 
 int /*<<< orphan*/  cfg80211_mutex ; 
 int /*<<< orphan*/  FUNC5 (struct wireless_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct genl_info*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct wireless_dev*) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 () ; 
 struct wireless_dev* FUNC12 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC13(struct genl_ops *ops, struct sk_buff *skb,
			    struct genl_info *info)
{
	struct cfg80211_registered_device *rdev;
	struct wireless_dev *wdev;
	struct net_device *dev;
	bool rtnl = ops->internal_flags & NL80211_FLAG_NEED_RTNL;

	if (rtnl)
		FUNC10();

	if (ops->internal_flags & NL80211_FLAG_NEED_WIPHY) {
		rdev = FUNC3(FUNC6(info), info);
		if (FUNC0(rdev)) {
			if (rtnl)
				FUNC11();
			return FUNC1(rdev);
		}
		info->user_ptr[0] = rdev;
	} else if (ops->internal_flags & NL80211_FLAG_NEED_NETDEV ||
		   ops->internal_flags & NL80211_FLAG_NEED_WDEV) {
		FUNC7(&cfg80211_mutex);
		wdev = FUNC2(FUNC6(info),
						  info->attrs);
		if (FUNC0(wdev)) {
			FUNC8(&cfg80211_mutex);
			if (rtnl)
				FUNC11();
			return FUNC1(wdev);
		}

		dev = wdev->netdev;
		rdev = FUNC12(wdev->wiphy);

		if (ops->internal_flags & NL80211_FLAG_NEED_NETDEV) {
			if (!dev) {
				FUNC8(&cfg80211_mutex);
				if (rtnl)
					FUNC11();
				return -EINVAL;
			}

			info->user_ptr[1] = dev;
		} else {
			info->user_ptr[1] = wdev;
		}

		if (dev) {
			if (ops->internal_flags & NL80211_FLAG_CHECK_NETDEV_UP &&
			    !FUNC9(dev)) {
				FUNC8(&cfg80211_mutex);
				if (rtnl)
					FUNC11();
				return -ENETDOWN;
			}

			FUNC5(dev);
		} else if (ops->internal_flags & NL80211_FLAG_CHECK_NETDEV_UP) {
			if (!wdev->p2p_started) {
				FUNC8(&cfg80211_mutex);
				if (rtnl)
					FUNC11();
				return -ENETDOWN;
			}
		}

		FUNC4(rdev);

		FUNC8(&cfg80211_mutex);

		info->user_ptr[0] = rdev;
	}

	return 0;
}