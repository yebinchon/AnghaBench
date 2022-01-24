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
struct vmap_area {int dummy; } ;
struct vm_struct {int dummy; } ;
typedef  int gfp_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int GFP_RECLAIM_MASK ; 
 int IOREMAP_MAX_ORDER ; 
 scalar_t__ FUNC1 (struct vmap_area*) ; 
 unsigned long FUNC2 (unsigned long) ; 
 int PAGE_SHIFT ; 
 scalar_t__ PAGE_SIZE ; 
 unsigned long VM_IOREMAP ; 
 unsigned long VM_UNLIST ; 
 struct vmap_area* FUNC3 (unsigned long,unsigned long,unsigned long,unsigned long,int,int) ; 
 int FUNC4 (unsigned long) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (struct vm_struct*,struct vmap_area*,unsigned long,void*) ; 
 int /*<<< orphan*/  FUNC7 (struct vm_struct*) ; 
 struct vm_struct* FUNC8 (int,int,int) ; 
 int /*<<< orphan*/  FUNC9 (struct vm_struct*,struct vmap_area*,unsigned long,void*) ; 
 scalar_t__ FUNC10 (int) ; 

__attribute__((used)) static struct vm_struct *FUNC11(unsigned long size,
		unsigned long align, unsigned long flags, unsigned long start,
		unsigned long end, int node, gfp_t gfp_mask, void *caller)
{
	static struct vmap_area *va;
	struct vm_struct *area;

	FUNC0(FUNC5());
	if (flags & VM_IOREMAP) {
		int bit = FUNC4(size);

		if (bit > IOREMAP_MAX_ORDER)
			bit = IOREMAP_MAX_ORDER;
		else if (bit < PAGE_SHIFT)
			bit = PAGE_SHIFT;

		align = 1ul << bit;
	}

	size = FUNC2(size);
	if (FUNC10(!size))
		return NULL;

	area = FUNC8(sizeof(*area), gfp_mask & GFP_RECLAIM_MASK, node);
	if (FUNC10(!area))
		return NULL;

	/*
	 * We always allocate a guard page.
	 */
	size += PAGE_SIZE;

	va = FUNC3(size, align, start, end, node, gfp_mask);
	if (FUNC1(va)) {
		FUNC7(area);
		return NULL;
	}

	/*
	 * When this function is called from __vmalloc_node_range,
	 * we do not add vm_struct to vmlist here to avoid
	 * accessing uninitialized members of vm_struct such as
	 * pages and nr_pages fields. They will be set later.
	 * To distinguish it from others, we use a VM_UNLIST flag.
	 */
	if (flags & VM_UNLIST)
		FUNC9(area, va, flags, caller);
	else
		FUNC6(area, va, flags, caller);

	return area;
}