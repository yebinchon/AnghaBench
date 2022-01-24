#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  expires; } ;
struct ieee80211_local {TYPE_1__ work_timer; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ieee80211_local*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,unsigned long) ; 
 scalar_t__ FUNC2 (unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC4(struct ieee80211_local *local,
		      unsigned long timeout)
{
	FUNC0(local);

	if (!FUNC3(&local->work_timer) ||
	    FUNC2(timeout, local->work_timer.expires))
		FUNC1(&local->work_timer, timeout);
}