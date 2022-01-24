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
struct TYPE_2__ {int /*<<< orphan*/  proberesp_ies; int /*<<< orphan*/  hidden_beacon_bss; int /*<<< orphan*/  beacon_ies; } ;
struct cfg80211_internal_bss {int /*<<< orphan*/  hidden_list; TYPE_1__ pub; int /*<<< orphan*/  hold; } ;
struct cfg80211_bss_ies {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct cfg80211_internal_bss*) ; 
 int /*<<< orphan*/  FUNC3 (struct cfg80211_bss_ies*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rcu_head ; 

__attribute__((used)) static void FUNC7(struct cfg80211_internal_bss *bss)
{
	struct cfg80211_bss_ies *ies;

	if (FUNC0(FUNC1(&bss->hold)))
		return;

	ies = (void *)FUNC6(bss->pub.beacon_ies);
	if (ies && !bss->pub.hidden_beacon_bss)
		FUNC3(ies, rcu_head);
	ies = (void *)FUNC6(bss->pub.proberesp_ies);
	if (ies)
		FUNC3(ies, rcu_head);

	/*
	 * This happens when the module is removed, it doesn't
	 * really matter any more save for completeness
	 */
	if (!FUNC5(&bss->hidden_list))
		FUNC4(&bss->hidden_list);

	FUNC2(bss);
}