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
struct rcu_head {int dummy; } ;
struct page {int /*<<< orphan*/  lru; } ;
struct kmem_cache {int flags; } ;

/* Variables and functions */
 int SLAB_DESTROY_BY_RCU ; 
 int /*<<< orphan*/  FUNC0 (struct kmem_cache*,struct page*) ; 
 int /*<<< orphan*/  FUNC1 (struct rcu_head*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rcu_free_slab ; 
 scalar_t__ FUNC2 (int) ; 

__attribute__((used)) static void FUNC3(struct kmem_cache *s, struct page *page)
{
	if (FUNC2(s->flags & SLAB_DESTROY_BY_RCU)) {
		/*
		 * RCU free overloads the RCU head over the LRU
		 */
		struct rcu_head *head = (void *)&page->lru;

		FUNC1(head, rcu_free_slab);
	} else
		FUNC0(s, page);
}