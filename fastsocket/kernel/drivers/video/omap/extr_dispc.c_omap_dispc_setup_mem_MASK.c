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
struct omapfb_mem_region {size_t size; int type; unsigned long paddr; } ;
struct TYPE_3__ {unsigned int region_cnt; struct omapfb_mem_region* region; } ;
struct TYPE_4__ {int /*<<< orphan*/ * map_count; TYPE_1__ mem_desc; int /*<<< orphan*/ ** res_map; } ;

/* Variables and functions */
 int DISPC_MEMTYPE_NUM ; 
 int EBUSY ; 
 int EINVAL ; 
 int ENOMEM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_2__ dispc ; 
 unsigned long FUNC1 (int,size_t) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long,size_t) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long,size_t) ; 

__attribute__((used)) static int FUNC4(int plane, size_t size, int mem_type,
				unsigned long *paddr)
{
	struct omapfb_mem_region *rg;
	unsigned long new_addr = 0;

	if ((unsigned)plane > dispc.mem_desc.region_cnt)
		return -EINVAL;
	if (mem_type >= DISPC_MEMTYPE_NUM)
		return -EINVAL;
	if (dispc.res_map[mem_type] == NULL)
		return -ENOMEM;
	rg = &dispc.mem_desc.region[plane];
	if (size == rg->size && mem_type == rg->type)
		return 0;
	if (FUNC0(&dispc.map_count[plane]))
		return -EBUSY;
	if (rg->size != 0)
		FUNC2(rg->paddr, rg->size);
	if (size != 0) {
		new_addr = FUNC1(mem_type, size);
		if (!new_addr) {
			/* Reallocate old region. */
			FUNC3(rg->paddr, rg->size);
			return -ENOMEM;
		}
	}
	rg->paddr = new_addr;
	rg->size = size;
	rg->type = mem_type;

	*paddr = new_addr;

	return 0;
}