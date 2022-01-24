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
typedef  scalar_t__ phys_addr_t ;

/* Variables and functions */
 int GFP_DMA ; 
 int __GFP_ZERO ; 
 void* FUNC0 (size_t,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,void*,...) ; 
 scalar_t__ FUNC2 (void*) ; 

__attribute__((used)) static void *FUNC3(size_t size, phys_addr_t *phys)
{
	void *virt;

	FUNC1("size=%zu\n", size);

	virt = FUNC0(size, GFP_DMA | __GFP_ZERO);
	if (virt) {
		*phys = FUNC2(virt);
		FUNC1("virt=%p phys=%llx\n", virt,
			(unsigned long long)*phys);
	}

	return virt;
}