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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(void)
{
	FUNC1(kmemtrace_kmalloc);
	FUNC3(kmemtrace_kmem_cache_alloc);
	FUNC2(kmemtrace_kmalloc_node);
	FUNC4(kmemtrace_kmem_cache_alloc_node);
	FUNC0(kmemtrace_kfree);
	FUNC5(kmemtrace_kmem_cache_free);
}