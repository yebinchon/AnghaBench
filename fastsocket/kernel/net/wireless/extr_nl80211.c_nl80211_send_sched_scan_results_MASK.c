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
struct net_device {int dummy; } ;
struct cfg80211_registered_device {int /*<<< orphan*/  wiphy; } ;
struct TYPE_2__ {int /*<<< orphan*/  id; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  NL80211_CMD_SCHED_SCAN_RESULTS ; 
 int /*<<< orphan*/  NLMSG_DEFAULT_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__ nl80211_scan_mcgrp ; 
 scalar_t__ FUNC1 (struct sk_buff*,struct cfg80211_registered_device*,struct net_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 struct sk_buff* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5(struct cfg80211_registered_device *rdev,
				     struct net_device *netdev)
{
	struct sk_buff *msg;

	msg = FUNC3(NLMSG_DEFAULT_SIZE, GFP_KERNEL);
	if (!msg)
		return;

	if (FUNC1(msg, rdev, netdev, 0, 0, 0,
					NL80211_CMD_SCHED_SCAN_RESULTS) < 0) {
		FUNC2(msg);
		return;
	}

	FUNC0(FUNC4(&rdev->wiphy), msg, 0,
				nl80211_scan_mcgrp.id, GFP_KERNEL);
}