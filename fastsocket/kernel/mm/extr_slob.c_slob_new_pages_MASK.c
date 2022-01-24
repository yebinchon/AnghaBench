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
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ ,int) ; 
 void* FUNC1 (int,int /*<<< orphan*/ ,int) ; 
 void* FUNC2 (void*) ; 

__attribute__((used)) static void *FUNC3(gfp_t gfp, int order, int node)
{
	void *page;

#ifdef CONFIG_NUMA
	if (node != -1)
		page = alloc_pages_exact_node(node, gfp, order);
	else
#endif
		page = FUNC0(gfp, order);

	if (!page)
		return NULL;

	return FUNC2(page);
}