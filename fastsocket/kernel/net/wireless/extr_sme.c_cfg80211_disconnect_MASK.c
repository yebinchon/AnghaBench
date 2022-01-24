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
typedef  int /*<<< orphan*/  u16 ;
struct net_device {int /*<<< orphan*/  ieee80211_ptr; } ;
struct cfg80211_registered_device {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct cfg80211_registered_device*,struct net_device*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

int FUNC3(struct cfg80211_registered_device *rdev,
			struct net_device *dev,
			u16 reason, bool wextev)
{
	int err;

	FUNC1(dev->ieee80211_ptr);
	err = FUNC0(rdev, dev, reason, wextev);
	FUNC2(dev->ieee80211_ptr);

	return err;
}