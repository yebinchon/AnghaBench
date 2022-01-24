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
struct net {int dummy; } ;
struct genl_info {int /*<<< orphan*/  attrs; } ;
struct cfg80211_registered_device {int /*<<< orphan*/  mtx; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cfg80211_registered_device*) ; 
 struct cfg80211_registered_device* FUNC1 (struct net*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cfg80211_mutex ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct cfg80211_registered_device *
FUNC4(struct net *netns, struct genl_info *info)
{
	struct cfg80211_registered_device *rdev;

	FUNC2(&cfg80211_mutex);
	rdev = FUNC1(netns, info->attrs);

	/* if it is not an error we grab the lock on
	 * it to assure it won't be going away while
	 * we operate on it */
	if (!FUNC0(rdev))
		FUNC2(&rdev->mtx);

	FUNC3(&cfg80211_mutex);

	return rdev;
}