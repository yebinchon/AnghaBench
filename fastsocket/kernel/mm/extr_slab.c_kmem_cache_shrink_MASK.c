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
struct kmem_cache {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (struct kmem_cache*) ; 
 int /*<<< orphan*/  cache_chain_mutex ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 () ; 

int FUNC7(struct kmem_cache *cachep)
{
	int ret;
	FUNC0(!cachep || FUNC3());

	FUNC2();
	FUNC4(&cache_chain_mutex);
	ret = FUNC1(cachep);
	FUNC5(&cache_chain_mutex);
	FUNC6();
	return ret;
}