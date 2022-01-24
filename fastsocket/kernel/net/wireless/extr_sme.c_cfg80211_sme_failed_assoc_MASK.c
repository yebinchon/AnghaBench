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
struct TYPE_2__ {int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int /*<<< orphan*/  CFG80211_CONN_DEAUTH_ASSOC_FAIL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct cfg80211_registered_device* FUNC1 (struct wiphy*) ; 

void FUNC2(struct wireless_dev *wdev)
{
	struct wiphy *wiphy = wdev->wiphy;
	struct cfg80211_registered_device *rdev = FUNC1(wiphy);

	wdev->conn->state = CFG80211_CONN_DEAUTH_ASSOC_FAIL;
	FUNC0(&rdev->conn_work);
}