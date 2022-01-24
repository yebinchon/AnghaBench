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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  nl80211_config_mcgrp ; 
 int /*<<< orphan*/  nl80211_fam ; 
 int /*<<< orphan*/  nl80211_mlme_mcgrp ; 
 int /*<<< orphan*/  nl80211_netlink_notifier ; 
 int /*<<< orphan*/  nl80211_ops ; 
 int /*<<< orphan*/  nl80211_regulatory_mcgrp ; 
 int /*<<< orphan*/  nl80211_scan_mcgrp ; 
 int /*<<< orphan*/  nl80211_testmode_mcgrp ; 

int FUNC5(void)
{
	int err;

	err = FUNC1(&nl80211_fam,
		nl80211_ops, FUNC0(nl80211_ops));
	if (err)
		return err;

	err = FUNC2(&nl80211_fam, &nl80211_config_mcgrp);
	if (err)
		goto err_out;

	err = FUNC2(&nl80211_fam, &nl80211_scan_mcgrp);
	if (err)
		goto err_out;

	err = FUNC2(&nl80211_fam, &nl80211_regulatory_mcgrp);
	if (err)
		goto err_out;

	err = FUNC2(&nl80211_fam, &nl80211_mlme_mcgrp);
	if (err)
		goto err_out;

#ifdef CONFIG_NL80211_TESTMODE
	err = genl_register_mc_group(&nl80211_fam, &nl80211_testmode_mcgrp);
	if (err)
		goto err_out;
#endif

	err = FUNC4(&nl80211_netlink_notifier);
	if (err)
		goto err_out;

	return 0;
 err_out:
	FUNC3(&nl80211_fam);
	return err;
}