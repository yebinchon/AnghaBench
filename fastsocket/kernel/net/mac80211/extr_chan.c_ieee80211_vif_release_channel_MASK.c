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
struct ieee80211_sub_if_data {TYPE_1__* local; scalar_t__ dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  chanctx_mtx; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct ieee80211_sub_if_data*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 

void FUNC5(struct ieee80211_sub_if_data *sdata)
{
	FUNC0(sdata->dev && FUNC4(sdata->dev));

	FUNC2(&sdata->local->chanctx_mtx);
	FUNC1(sdata);
	FUNC3(&sdata->local->chanctx_mtx);
}