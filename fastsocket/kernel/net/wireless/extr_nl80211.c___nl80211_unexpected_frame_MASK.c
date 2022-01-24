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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct wireless_dev {int /*<<< orphan*/  ap_unexpected_nlportid; int /*<<< orphan*/  wiphy; } ;
struct sk_buff {int dummy; } ;
struct net_device {int /*<<< orphan*/  ifindex; struct wireless_dev* ieee80211_ptr; } ;
struct cfg80211_registered_device {int /*<<< orphan*/  wiphy; int /*<<< orphan*/  wiphy_idx; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ETH_ALEN ; 
 int /*<<< orphan*/  NL80211_ATTR_IFINDEX ; 
 int /*<<< orphan*/  NL80211_ATTR_MAC ; 
 int /*<<< orphan*/  NL80211_ATTR_WIPHY ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,void*) ; 
 int FUNC2 (struct sk_buff*,void*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct sk_buff*,int /*<<< orphan*/ ) ; 
 void* FUNC4 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC6 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*) ; 
 struct sk_buff* FUNC8 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 struct cfg80211_registered_device* FUNC10 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC11(struct net_device *dev, u8 cmd,
				       const u8 *addr, gfp_t gfp)
{
	struct wireless_dev *wdev = dev->ieee80211_ptr;
	struct cfg80211_registered_device *rdev = FUNC10(wdev->wiphy);
	struct sk_buff *msg;
	void *hdr;
	int err;
	u32 nlportid = FUNC0(wdev->ap_unexpected_nlportid);

	if (!nlportid)
		return false;

	msg = FUNC8(100, gfp);
	if (!msg)
		return true;

	hdr = FUNC4(msg, 0, 0, 0, cmd);
	if (!hdr) {
		FUNC7(msg);
		return true;
	}

	if (FUNC6(msg, NL80211_ATTR_WIPHY, rdev->wiphy_idx) ||
	    FUNC6(msg, NL80211_ATTR_IFINDEX, dev->ifindex) ||
	    FUNC5(msg, NL80211_ATTR_MAC, ETH_ALEN, addr))
		goto nla_put_failure;

	err = FUNC2(msg, hdr);
	if (err < 0) {
		FUNC7(msg);
		return true;
	}

	FUNC3(FUNC9(&rdev->wiphy), msg, nlportid);
	return true;

 nla_put_failure:
	FUNC1(msg, hdr);
	FUNC7(msg);
	return true;
}