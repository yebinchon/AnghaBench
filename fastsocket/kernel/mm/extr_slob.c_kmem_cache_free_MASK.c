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
struct slob_rcu {int size; int /*<<< orphan*/  head; } ;
struct kmem_cache {int flags; int size; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int SLAB_DESTROY_BY_RCU ; 
 int /*<<< orphan*/  _RET_IP_ ; 
 int /*<<< orphan*/  FUNC1 (void*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  kmem_rcu_free ; 
 int /*<<< orphan*/  FUNC3 (void*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,void*) ; 
 scalar_t__ FUNC5 (int) ; 

void FUNC6(struct kmem_cache *c, void *b)
{
	FUNC3(b, c->flags);
	if (FUNC5(c->flags & SLAB_DESTROY_BY_RCU)) {
		struct slob_rcu *slob_rcu;
		slob_rcu = b + (c->size - sizeof(struct slob_rcu));
		FUNC0(&slob_rcu->head);
		slob_rcu->size = c->size;
		FUNC2(&slob_rcu->head, kmem_rcu_free);
	} else {
		FUNC1(b, c->size);
	}

	FUNC4(_RET_IP_, b);
}