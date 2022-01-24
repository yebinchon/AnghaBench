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
struct kmem_cache_cpu {int /*<<< orphan*/  page; } ;
struct kmem_cache {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CPUSLAB_FLUSH ; 
 int /*<<< orphan*/  FUNC0 (struct kmem_cache*,struct kmem_cache_cpu*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct kmem_cache_cpu*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC3(struct kmem_cache *s, struct kmem_cache_cpu *c)
{
	FUNC2(c, CPUSLAB_FLUSH);
	FUNC1(c->page);
	FUNC0(s, c);
}