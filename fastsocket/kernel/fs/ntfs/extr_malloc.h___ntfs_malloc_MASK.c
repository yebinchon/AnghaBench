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
typedef  int gfp_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  PAGE_KERNEL ; 
 unsigned long PAGE_SHIFT ; 
 unsigned long PAGE_SIZE ; 
 int __GFP_HIGHMEM ; 
 void* FUNC1 (unsigned long,int,int /*<<< orphan*/ ) ; 
 void* FUNC2 (unsigned long,int) ; 
 scalar_t__ FUNC3 (int) ; 
 unsigned long totalram_pages ; 

__attribute__((used)) static inline void *FUNC4(unsigned long size, gfp_t gfp_mask)
{
	if (FUNC3(size <= PAGE_SIZE)) {
		FUNC0(!size);
		/* kmalloc() has per-CPU caches so is faster for now. */
		return FUNC2(PAGE_SIZE, gfp_mask & ~__GFP_HIGHMEM);
		/* return (void *)__get_free_page(gfp_mask); */
	}
	if (FUNC3((size >> PAGE_SHIFT) < totalram_pages))
		return FUNC1(size, gfp_mask, PAGE_KERNEL);
	return NULL;
}