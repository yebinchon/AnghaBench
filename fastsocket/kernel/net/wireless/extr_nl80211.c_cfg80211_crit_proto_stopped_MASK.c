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
typedef  scalar_t__ u32 ;
struct wireless_dev {int /*<<< orphan*/  wiphy; } ;
struct sk_buff {int dummy; } ;
struct cfg80211_registered_device {int /*<<< orphan*/  wiphy; int /*<<< orphan*/  wiphy_idx; scalar_t__ crit_proto_nlportid; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int /*<<< orphan*/  NL80211_ATTR_WDEV ; 
 int /*<<< orphan*/  NL80211_ATTR_WIPHY ; 
 int /*<<< orphan*/  NL80211_CMD_CRIT_PROTOCOL_STOP ; 
 int /*<<< orphan*/  NLMSG_DEFAULT_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,void*) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,void*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct sk_buff*,scalar_t__) ; 
 void* FUNC3 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*) ; 
 struct sk_buff* FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct wireless_dev*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 struct cfg80211_registered_device* FUNC10 (int /*<<< orphan*/ ) ; 

void FUNC11(struct wireless_dev *wdev, gfp_t gfp)
{
	struct cfg80211_registered_device *rdev;
	struct sk_buff *msg;
	void *hdr;
	u32 nlportid;

	rdev = FUNC10(wdev->wiphy);
	if (!rdev->crit_proto_nlportid)
		return;

	nlportid = rdev->crit_proto_nlportid;
	rdev->crit_proto_nlportid = 0;

	msg = FUNC7(NLMSG_DEFAULT_SIZE, gfp);
	if (!msg)
		return;

	hdr = FUNC3(msg, 0, 0, 0, NL80211_CMD_CRIT_PROTOCOL_STOP);
	if (!hdr)
		goto nla_put_failure;

	if (FUNC4(msg, NL80211_ATTR_WIPHY, rdev->wiphy_idx) ||
	    FUNC5(msg, NL80211_ATTR_WDEV, FUNC8(wdev)))
		goto nla_put_failure;

	FUNC1(msg, hdr);

	FUNC2(FUNC9(&rdev->wiphy), msg, nlportid);
	return;

 nla_put_failure:
	if (hdr)
		FUNC0(msg, hdr);
	FUNC6(msg);

}