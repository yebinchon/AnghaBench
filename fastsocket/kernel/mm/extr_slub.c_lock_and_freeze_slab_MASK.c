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
struct kmem_cache_node {int /*<<< orphan*/  nr_partial; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (struct page*) ; 

__attribute__((used)) static inline int FUNC3(struct kmem_cache_node *n,
							struct page *page)
{
	if (FUNC2(page)) {
		FUNC1(&page->lru);
		n->nr_partial--;
		FUNC0(page);
		return 1;
	}
	return 0;
}