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
 int MIGRATE_TYPES ; 
 scalar_t__ SYSTEM_BOOTING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 size_t current_zonelist_order ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int FUNC3 () ; 
 int /*<<< orphan*/  nr_online_nodes ; 
 int page_group_by_mobility_disabled ; 
 int pageblock_nr_pages ; 
 size_t policy_zone ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/  (*) (int /*<<< orphan*/ *),void*,int /*<<< orphan*/ *) ; 
 scalar_t__ system_state ; 
 int vm_total_pages ; 
 int /*<<< orphan*/ * zone_names ; 
 int /*<<< orphan*/ * zonelist_order_name ; 

void FUNC7(void *data)
{
	FUNC5();

	if (system_state == SYSTEM_BOOTING) {
		FUNC0(NULL);
		FUNC2();
		FUNC1();
	} else {
		/* we have to stop all cpus to guarantee there is no user
		   of zonelist */
		FUNC6(__build_all_zonelists, data, NULL);
		/* cpuset refresh routine should be here */
	}
	vm_total_pages = FUNC3();
	/*
	 * Disable grouping by mobility if the number of pages in the
	 * system is too low to allow the mechanism to work. It would be
	 * more accurate, but expensive to check per-zone. This check is
	 * made on memory-hotadd so a system can start with mobility
	 * disabled and enable it later
	 */
	if (vm_total_pages < (pageblock_nr_pages * MIGRATE_TYPES))
		page_group_by_mobility_disabled = 1;
	else
		page_group_by_mobility_disabled = 0;

	FUNC4("Built %i zonelists in %s order, mobility grouping %s.  "
		"Total pages: %ld\n",
			nr_online_nodes,
			zonelist_order_name[current_zonelist_order],
			page_group_by_mobility_disabled ? "off" : "on",
			vm_total_pages);
#ifdef CONFIG_NUMA
	printk("Policy zone: %s\n", zone_names[policy_zone]);
#endif
}