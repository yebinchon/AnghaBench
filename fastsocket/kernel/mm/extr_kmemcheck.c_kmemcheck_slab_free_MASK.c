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
struct kmem_cache {int flags; int /*<<< orphan*/  ctor; } ;

/* Variables and functions */
 int SLAB_DESTROY_BY_RCU ; 
 int /*<<< orphan*/  FUNC0 (void*,size_t) ; 

void FUNC1(struct kmem_cache *s, void *object, size_t size)
{
	/* TODO: RCU freeing is unsupported for now; hide false positives. */
	if (!s->ctor && !(s->flags & SLAB_DESTROY_BY_RCU))
		FUNC0(object, size);
}