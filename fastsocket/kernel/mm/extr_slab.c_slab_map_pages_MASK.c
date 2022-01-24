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
struct slab {int dummy; } ;
struct page {int dummy; } ;
struct kmem_cache {int gfporder; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct page*,struct kmem_cache*) ; 
 int /*<<< orphan*/  FUNC3 (struct page*,struct slab*) ; 
 struct page* FUNC4 (void*) ; 

__attribute__((used)) static void FUNC5(struct kmem_cache *cache, struct slab *slab,
			   void *addr)
{
	int nr_pages;
	struct page *page;

	page = FUNC4(addr);

	nr_pages = 1;
	if (FUNC1(!FUNC0(page)))
		nr_pages <<= cache->gfporder;

	do {
		FUNC2(page, cache);
		FUNC3(page, slab);
		page++;
	} while (--nr_pages);
}