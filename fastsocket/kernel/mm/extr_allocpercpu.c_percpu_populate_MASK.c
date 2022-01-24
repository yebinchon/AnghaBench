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
struct percpu_data {void** ptrs; } ;
typedef  int gfp_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*) ; 
 int __GFP_ZERO ; 
 struct percpu_data* FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int FUNC3 (int) ; 
 void* FUNC4 (size_t,int,int) ; 
 void* FUNC5 (size_t,int) ; 
 scalar_t__ FUNC6 (int) ; 
 size_t FUNC7 (size_t,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void *FUNC8(void *__pdata, size_t size, gfp_t gfp, int cpu)
{
	struct percpu_data *pdata = FUNC1(__pdata);
	int node = FUNC3(cpu);

	/*
	 * We should make sure each CPU gets private memory.
	 */
	size = FUNC7(size, FUNC2());

	FUNC0(pdata->ptrs[cpu]);
	if (FUNC6(node))
		pdata->ptrs[cpu] = FUNC4(size, gfp|__GFP_ZERO, node);
	else
		pdata->ptrs[cpu] = FUNC5(size, gfp);
	return pdata->ptrs[cpu];
}