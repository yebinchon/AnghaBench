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
struct vm_struct {int dummy; } ;
typedef  int /*<<< orphan*/  pgprot_t ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 unsigned long FUNC0 (unsigned long) ; 
 unsigned long PAGE_SHIFT ; 
 int /*<<< orphan*/  VMALLOC_END ; 
 int /*<<< orphan*/  VMALLOC_START ; 
 int VM_ALLOC ; 
 int VM_UNLIST ; 
 struct vm_struct* FUNC1 (unsigned long,unsigned long,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,void*) ; 
 void* FUNC2 (struct vm_struct*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,void*) ; 
 int /*<<< orphan*/  FUNC3 (struct vm_struct*) ; 
 int /*<<< orphan*/  FUNC4 (void*,unsigned long,int,int /*<<< orphan*/ ) ; 
 unsigned long totalram_pages ; 

__attribute__((used)) static void *FUNC5(unsigned long size, unsigned long align,
			    gfp_t gfp_mask, pgprot_t prot,
			    int node, void *caller)
{
	struct vm_struct *area;
	void *addr;
	unsigned long real_size = size;

	size = FUNC0(size);
	if (!size || (size >> PAGE_SHIFT) > totalram_pages)
		return NULL;

	area = FUNC1(size, align, VM_ALLOC | VM_UNLIST, VMALLOC_START,
				  VMALLOC_END, node, gfp_mask, caller);

	if (!area)
		return NULL;

	addr = FUNC2(area, gfp_mask, prot, node, caller);
	if (!addr)
		return NULL;

 	/*
	 * In this function, newly allocated vm_struct is not added
	 * to vmlist at __get_vm_area_node(). so, it is added here.
	 */
	FUNC3(area);

	/*
	 * A ref_count = 3 is needed because the vm_struct and vmap_area
	 * structures allocated in the __get_vm_area_node() function contain
	 * references to the virtual address of the vmalloc'ed block.
	 */
	FUNC4(addr, real_size, 3, gfp_mask);

	return addr;
}