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
struct ieee80211_local {int /*<<< orphan*/  dynamic_ps_enable_work; int /*<<< orphan*/  hw; scalar_t__ suspended; scalar_t__ quiescing; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

void FUNC1(unsigned long data)
{
	struct ieee80211_local *local = (void *) data;

	if (local->quiescing || local->suspended)
		return;

	FUNC0(&local->hw, &local->dynamic_ps_enable_work);
}