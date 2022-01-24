#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct omapfb_mem_region {scalar_t__ map; scalar_t__ alloc; } ;
struct TYPE_3__ {int region_cnt; struct omapfb_mem_region* region; } ;
struct TYPE_4__ {TYPE_1__ mem_desc; int /*<<< orphan*/ ** res_map; } ;

/* Variables and functions */
 int DISPC_MEMTYPE_NUM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_2__ dispc ; 
 int /*<<< orphan*/  FUNC1 (struct omapfb_mem_region*) ; 
 int /*<<< orphan*/  FUNC2 (struct omapfb_mem_region*) ; 

__attribute__((used)) static void FUNC3(void)
{
	struct omapfb_mem_region *rg;
	int i;

	for (i = 0; i < DISPC_MEMTYPE_NUM; i++) {
		if (dispc.res_map[i] != NULL)
			FUNC0(dispc.res_map[i]);
	}
	rg = &dispc.mem_desc.region[0];
	for (i = 0; i < dispc.mem_desc.region_cnt; i++, rg++) {
		if (rg->alloc)
			FUNC1(rg);
		else {
			if (rg->map)
				FUNC2(rg);
		}
	}
}