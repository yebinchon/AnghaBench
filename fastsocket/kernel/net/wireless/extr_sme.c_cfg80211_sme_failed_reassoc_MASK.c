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
struct wireless_dev {TYPE_1__* conn; struct wiphy* wiphy; } ;
struct wiphy {int dummy; } ;
struct cfg80211_registered_device {int /*<<< orphan*/  conn_work; } ;
struct TYPE_2__ {int prev_bssid_valid; int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int /*<<< orphan*/  CFG80211_CONN_ASSOCIATE_NEXT ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct cfg80211_registered_device* FUNC2 (struct wiphy*) ; 

bool FUNC3(struct wireless_dev *wdev)
{
	struct wiphy *wiphy = wdev->wiphy;
	struct cfg80211_registered_device *rdev = FUNC2(wiphy);

	if (FUNC0(!wdev->conn))
		return false;

	if (!wdev->conn->prev_bssid_valid)
		return false;

	/*
	 * Some stupid APs don't accept reassoc, so we
	 * need to fall back to trying regular assoc.
	 */
	wdev->conn->prev_bssid_valid = false;
	wdev->conn->state = CFG80211_CONN_ASSOCIATE_NEXT;
	FUNC1(&rdev->conn_work);

	return true;
}