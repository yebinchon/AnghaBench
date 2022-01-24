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
struct wireless_dev {int dummy; } ;
struct net_device {struct wireless_dev* ieee80211_ptr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct net_device*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct wireless_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct wireless_dev*) ; 

void FUNC3(struct net_device *dev, bool nowext)
{
	struct wireless_dev *wdev = dev->ieee80211_ptr;

	FUNC1(wdev);
	FUNC0(dev, nowext);
	FUNC2(wdev);
}