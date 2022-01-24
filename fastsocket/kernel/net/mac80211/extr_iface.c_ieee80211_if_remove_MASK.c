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
struct ieee80211_sub_if_data {int /*<<< orphan*/  wdev; scalar_t__ dev; TYPE_1__* local; int /*<<< orphan*/  list; } ;
struct TYPE_2__ {int /*<<< orphan*/  iflist_mtx; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct ieee80211_sub_if_data*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 

void FUNC8(struct ieee80211_sub_if_data *sdata)
{
	FUNC0();

	FUNC4(&sdata->local->iflist_mtx);
	FUNC3(&sdata->list);
	FUNC5(&sdata->local->iflist_mtx);

	FUNC6();

	if (sdata->dev) {
		FUNC7(sdata->dev);
	} else {
		FUNC1(&sdata->wdev);
		FUNC2(sdata);
	}
}