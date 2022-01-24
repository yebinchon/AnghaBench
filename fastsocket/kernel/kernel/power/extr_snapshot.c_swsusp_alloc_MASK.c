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
struct page {int dummy; } ;
struct memory_bitmap {int dummy; } ;

/* Variables and functions */
 int GFP_ATOMIC ; 
 int /*<<< orphan*/  PG_ANY ; 
 int __GFP_COLD ; 
 unsigned int alloc_highmem ; 
 scalar_t__ FUNC0 (struct memory_bitmap*,unsigned int) ; 
 struct page* FUNC1 (int) ; 
 unsigned int alloc_normal ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct memory_bitmap*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct page*) ; 
 int /*<<< orphan*/  FUNC5 () ; 

__attribute__((used)) static int
FUNC6(struct memory_bitmap *orig_bm, struct memory_bitmap *copy_bm,
		unsigned int nr_pages, unsigned int nr_highmem)
{
	int error = 0;

	if (nr_highmem > 0) {
		error = FUNC2(PG_ANY);
		if (error)
			goto err_out;
		if (nr_highmem > alloc_highmem) {
			nr_highmem -= alloc_highmem;
			nr_pages += FUNC0(copy_bm, nr_highmem);
		}
	}
	if (nr_pages > alloc_normal) {
		nr_pages -= alloc_normal;
		while (nr_pages-- > 0) {
			struct page *page;

			page = FUNC1(GFP_ATOMIC | __GFP_COLD);
			if (!page)
				goto err_out;
			FUNC3(copy_bm, FUNC4(page));
		}
	}

	return 0;

 err_out:
	FUNC5();
	return error;
}