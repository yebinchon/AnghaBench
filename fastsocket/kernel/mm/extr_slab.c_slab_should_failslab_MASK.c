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
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 struct kmem_cache cache_cache ; 
 int /*<<< orphan*/  FUNC0 (struct kmem_cache*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC2(struct kmem_cache *cachep, gfp_t flags)
{
	if (cachep == &cache_cache)
		return false;

	return FUNC1(FUNC0(cachep), flags);
}