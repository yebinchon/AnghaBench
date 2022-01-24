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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  ISA_POOL_SIZE ; 
 scalar_t__ isa_page_pool ; 
 int /*<<< orphan*/  mempool_alloc_pages_isa ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  mempool_free_pages ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 

int FUNC3(void)
{
	if (isa_page_pool)
		return 0;

	isa_page_pool = FUNC1(ISA_POOL_SIZE, mempool_alloc_pages_isa,
				       mempool_free_pages, (void *) 0);
	FUNC0(!isa_page_pool);

	FUNC2("isa bounce pool size: %d pages\n", ISA_POOL_SIZE);
	return 0;
}