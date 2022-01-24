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
struct sockaddr {int /*<<< orphan*/  sa_data; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  addr; } ;
struct ieee80211_sub_if_data {TYPE_1__ vif; } ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  ETH_ALEN ; 
 struct ieee80211_sub_if_data* FUNC0 (struct net_device*) ; 
 int FUNC1 (struct net_device*,struct sockaddr*) ; 
 scalar_t__ FUNC2 (struct ieee80211_sub_if_data*) ; 
 int FUNC3 (struct ieee80211_sub_if_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct net_device *dev, void *addr)
{
	struct ieee80211_sub_if_data *sdata = FUNC0(dev);
	struct sockaddr *sa = addr;
	int ret;

	if (FUNC2(sdata))
		return -EBUSY;

	ret = FUNC3(sdata, sa->sa_data);
	if (ret)
		return ret;

	ret = FUNC1(dev, sa);

	if (ret == 0)
		FUNC4(sdata->vif.addr, sa->sa_data, ETH_ALEN);

	return ret;
}