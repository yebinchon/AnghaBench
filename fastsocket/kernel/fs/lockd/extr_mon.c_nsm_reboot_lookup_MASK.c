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
struct nsm_handle {int /*<<< orphan*/  sm_count; int /*<<< orphan*/  sm_addrbuf; int /*<<< orphan*/  sm_name; scalar_t__ sm_monitored; } ;
struct nlm_reboot {int /*<<< orphan*/  mon; int /*<<< orphan*/  len; int /*<<< orphan*/  priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  nsm_lock ; 
 struct nsm_handle* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 

struct nsm_handle *FUNC7(const struct nlm_reboot *info)
{
	struct nsm_handle *cached;

	FUNC4(&nsm_lock);

	cached = FUNC3(&info->priv);
	if (FUNC6(cached == NULL)) {
		FUNC5(&nsm_lock);
		FUNC2("lockd: never saw rebooted peer '%.*s' before\n",
				info->len, info->mon);
		return cached;
	}

	FUNC0(&cached->sm_count);
	FUNC5(&nsm_lock);

	/*
	 * During subsequent lock activity, force a fresh
	 * notification to be set up for this host.
	 */
	cached->sm_monitored = 0;

	FUNC2("lockd: host %s (%s) rebooted, cnt %d\n",
			cached->sm_name, cached->sm_addrbuf,
			FUNC1(&cached->sm_count));
	return cached;
}