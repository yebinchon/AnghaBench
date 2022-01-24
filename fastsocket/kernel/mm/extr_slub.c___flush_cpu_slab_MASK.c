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
struct kmem_cache_cpu {scalar_t__ page; } ;
struct kmem_cache {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct kmem_cache*,struct kmem_cache_cpu*) ; 
 struct kmem_cache_cpu* FUNC1 (struct kmem_cache*,int) ; 
 scalar_t__ FUNC2 (int) ; 

__attribute__((used)) static inline void FUNC3(struct kmem_cache *s, int cpu)
{
	struct kmem_cache_cpu *c = FUNC1(s, cpu);

	if (FUNC2(c && c->page))
		FUNC0(s, c);
}