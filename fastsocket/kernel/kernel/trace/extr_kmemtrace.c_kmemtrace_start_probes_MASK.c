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
 int /*<<< orphan*/  kmemtrace_kfree ; 
 int /*<<< orphan*/  kmemtrace_kmalloc ; 
 int /*<<< orphan*/  kmemtrace_kmalloc_node ; 
 int /*<<< orphan*/  kmemtrace_kmem_cache_alloc ; 
 int /*<<< orphan*/  kmemtrace_kmem_cache_alloc_node ; 
 int /*<<< orphan*/  kmemtrace_kmem_cache_free ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(void)
{
	int err;

	err = FUNC1(kmemtrace_kmalloc);
	if (err)
		return err;
	err = FUNC3(kmemtrace_kmem_cache_alloc);
	if (err)
		return err;
	err = FUNC2(kmemtrace_kmalloc_node);
	if (err)
		return err;
	err = FUNC4(kmemtrace_kmem_cache_alloc_node);
	if (err)
		return err;
	err = FUNC0(kmemtrace_kfree);
	if (err)
		return err;
	err = FUNC5(kmemtrace_kmem_cache_free);

	return err;
}