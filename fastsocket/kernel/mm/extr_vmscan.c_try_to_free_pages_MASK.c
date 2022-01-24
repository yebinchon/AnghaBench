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
struct zonelist {int dummy; } ;
struct scan_control {int may_writepage; int may_unmap; int may_swap; int order; int /*<<< orphan*/ * nodemask; int /*<<< orphan*/ * target_mem_cgroup; int /*<<< orphan*/  swappiness; int /*<<< orphan*/  nr_to_reclaim; int /*<<< orphan*/  gfp_mask; } ;
typedef  int /*<<< orphan*/  nodemask_t ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int /*<<< orphan*/  SWAP_CLUSTER_MAX ; 
 unsigned long FUNC0 (struct zonelist*,struct scan_control*) ; 
 int /*<<< orphan*/  laptop_mode ; 
 int /*<<< orphan*/  FUNC1 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  vm_swappiness ; 

unsigned long FUNC3(struct zonelist *zonelist, int order,
				gfp_t gfp_mask, nodemask_t *nodemask)
{
	unsigned long nr_reclaimed;
	struct scan_control sc = {
		.gfp_mask = gfp_mask,
		.may_writepage = !laptop_mode,
		.nr_to_reclaim = SWAP_CLUSTER_MAX,
		.may_unmap = 1,
		.may_swap = 1,
		.swappiness = vm_swappiness,
		.order = order,
		.target_mem_cgroup = NULL,
		.nodemask = nodemask,
	};

	FUNC1(order,
				sc.may_writepage,
				gfp_mask);

	nr_reclaimed = FUNC0(zonelist, &sc);

	FUNC2(nr_reclaimed);

	return nr_reclaimed;
}