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
struct cfg80211_registered_device {int dummy; } ;
typedef  enum nl80211_iftype { ____Placeholder_nl80211_iftype } nl80211_iftype ;

/* Variables and functions */
 int FUNC0 (struct cfg80211_registered_device*,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static inline int
FUNC1(struct cfg80211_registered_device *rdev,
			   enum nl80211_iftype iftype)
{
	return FUNC0(rdev, NULL, iftype);
}