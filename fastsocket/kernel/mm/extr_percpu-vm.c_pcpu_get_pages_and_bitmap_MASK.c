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
struct pcpu_chunk {int /*<<< orphan*/  populated; } ;
struct page {int dummy; } ;
typedef  int /*<<< orphan*/  pages ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct page**,int /*<<< orphan*/ ,size_t) ; 
 void* FUNC3 (size_t) ; 
 int pcpu_nr_units ; 
 int pcpu_unit_pages ; 

__attribute__((used)) static struct page **FUNC4(struct pcpu_chunk *chunk,
					       unsigned long **bitmapp,
					       bool may_alloc)
{
	static struct page **pages;
	static unsigned long *bitmap;
	size_t pages_size = pcpu_nr_units * pcpu_unit_pages * sizeof(pages[0]);
	size_t bitmap_size = FUNC0(pcpu_unit_pages) *
			     sizeof(unsigned long);

	if (!pages || !bitmap) {
		if (may_alloc && !pages)
			pages = FUNC3(pages_size);
		if (may_alloc && !bitmap)
			bitmap = FUNC3(bitmap_size);
		if (!pages || !bitmap)
			return NULL;
	}

	FUNC2(pages, 0, pages_size);
	FUNC1(bitmap, chunk->populated, pcpu_unit_pages);

	*bitmapp = bitmap;
	return pages;
}