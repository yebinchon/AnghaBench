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
struct kmem_cache_node {int /*<<< orphan*/  list_lock; int /*<<< orphan*/  partial; int /*<<< orphan*/  nr_partial; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct kmem_cache_node *n,
				struct page *page, int tail)
{
	FUNC2(&n->list_lock);
	n->nr_partial++;
	if (tail)
		FUNC1(&page->lru, &n->partial);
	else
		FUNC0(&page->lru, &n->partial);
	FUNC3(&n->list_lock);
}