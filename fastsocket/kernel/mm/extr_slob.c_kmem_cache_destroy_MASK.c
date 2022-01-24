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
struct kmem_cache {int flags; } ;

/* Variables and functions */
 int SLAB_DESTROY_BY_RCU ; 
 int /*<<< orphan*/  FUNC0 (struct kmem_cache*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct kmem_cache*,int) ; 

void FUNC3(struct kmem_cache *c)
{
	FUNC0(c);
	if (c->flags & SLAB_DESTROY_BY_RCU)
		FUNC1();
	FUNC2(c, sizeof(struct kmem_cache));
}