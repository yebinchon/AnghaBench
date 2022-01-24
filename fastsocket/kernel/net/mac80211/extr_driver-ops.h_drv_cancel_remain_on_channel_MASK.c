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
struct ieee80211_local {int /*<<< orphan*/  hw; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* cancel_remain_on_channel ) (int /*<<< orphan*/ *) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct ieee80211_local*) ; 
 int /*<<< orphan*/  FUNC3 (struct ieee80211_local*,int) ; 

__attribute__((used)) static inline int FUNC4(struct ieee80211_local *local)
{
	int ret;

	FUNC0();

	FUNC2(local);
	ret = local->ops->cancel_remain_on_channel(&local->hw);
	FUNC3(local, ret);

	return ret;
}