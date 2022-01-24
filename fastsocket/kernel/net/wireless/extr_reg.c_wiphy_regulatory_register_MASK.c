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
struct wiphy {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  NL80211_REGDOM_SET_BY_CORE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct wiphy*) ; 
 int /*<<< orphan*/  reg_mutex ; 
 int /*<<< orphan*/  reg_num_devs_support_basehint ; 
 int /*<<< orphan*/  FUNC3 (struct wiphy*,int /*<<< orphan*/ ) ; 

void FUNC4(struct wiphy *wiphy)
{
	FUNC0(&reg_mutex);

	if (!FUNC2(wiphy))
		reg_num_devs_support_basehint++;

	FUNC3(wiphy, NL80211_REGDOM_SET_BY_CORE);

	FUNC1(&reg_mutex);
}