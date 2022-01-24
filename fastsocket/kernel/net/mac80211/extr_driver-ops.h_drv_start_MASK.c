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
struct ieee80211_local {int started; int /*<<< orphan*/  hw; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* start ) (int /*<<< orphan*/ *) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct ieee80211_local*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct ieee80211_local*) ; 

__attribute__((used)) static inline int FUNC5(struct ieee80211_local *local)
{
	int ret;

	FUNC0();

	FUNC4(local);
	local->started = true;
	FUNC1();
	ret = local->ops->start(&local->hw);
	FUNC3(local, ret);
	return ret;
}