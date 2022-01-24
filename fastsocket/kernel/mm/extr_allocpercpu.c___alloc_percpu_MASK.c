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
 int /*<<< orphan*/  GFP_KERNEL ; 
 size_t SMP_CACHE_BYTES ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 void* FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (void*,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  cpu_possible_map ; 
 int /*<<< orphan*/  FUNC4 (void*) ; 
 void* FUNC5 (size_t,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int) ; 
 int nr_cpu_ids ; 
 size_t FUNC7 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int) ; 

void *FUNC9(size_t size, size_t align)
{
	/*
	 * We allocate whole cache lines to avoid false sharing
	 */
	size_t sz = FUNC7(nr_cpu_ids * sizeof(void *), FUNC3());
	void *pdata = FUNC5(sz, GFP_KERNEL);
	void *__pdata = FUNC1(pdata);

	/*
	 * Can't easily make larger alignment work with kmalloc.  WARN
	 * on it.  Larger alignment should only be used for module
	 * percpu sections on SMP for which this path isn't used.
	 */
	FUNC0(align > SMP_CACHE_BYTES);

	if (FUNC8(!pdata))
		return NULL;
	if (FUNC6(!FUNC2(__pdata, size, GFP_KERNEL,
					   &cpu_possible_map)))
		return __pdata;
	FUNC4(pdata);
	return NULL;
}