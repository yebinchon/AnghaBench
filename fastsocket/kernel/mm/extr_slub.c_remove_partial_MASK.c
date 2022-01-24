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
struct page {int /*<<< orphan*/  lru; } ;
struct kmem_cache_node {int /*<<< orphan*/  list_lock; int /*<<< orphan*/  nr_partial; } ;
struct kmem_cache {int dummy; } ;

/* Variables and functions */
 struct kmem_cache_node* FUNC0 (struct kmem_cache*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct page*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct kmem_cache *s, struct page *page)
{
	struct kmem_cache_node *n = FUNC0(s, FUNC2(page));

	FUNC3(&n->list_lock);
	FUNC1(&page->lru);
	n->nr_partial--;
	FUNC4(&n->list_lock);
}