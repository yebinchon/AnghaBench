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
struct list_head {int dummy; } ;
struct kimage {struct list_head control_pages; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct list_head*) ; 
 unsigned long KEXEC_CONTROL_MEMORY_LIMIT ; 
 unsigned long PAGE_SHIFT ; 
 struct page* FUNC1 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct list_head*) ; 
 scalar_t__ FUNC3 (struct kimage*,unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct list_head*) ; 
 unsigned long FUNC5 (struct page*) ; 

__attribute__((used)) static struct page *FUNC6(struct kimage *image,
							unsigned int order)
{
	/* Control pages are special, they are the intermediaries
	 * that are needed while we copy the rest of the pages
	 * to their final resting place.  As such they must
	 * not conflict with either the destination addresses
	 * or memory the kernel is already using.
	 *
	 * The only case where we really need more than one of
	 * these are for architectures where we cannot disable
	 * the MMU and must instead generate an identity mapped
	 * page table for all of the memory.
	 *
	 * At worst this runs in O(N) of the image size.
	 */
	struct list_head extra_pages;
	struct page *pages;
	unsigned int count;

	count = 1 << order;
	FUNC0(&extra_pages);

	/* Loop while I can allocate a page and the page allocated
	 * is a destination page.
	 */
	do {
		unsigned long pfn, epfn, addr, eaddr;

		pages = FUNC1(GFP_KERNEL, order);
		if (!pages)
			break;
		pfn   = FUNC5(pages);
		epfn  = pfn + count;
		addr  = pfn << PAGE_SHIFT;
		eaddr = epfn << PAGE_SHIFT;
		if ((epfn >= (KEXEC_CONTROL_MEMORY_LIMIT >> PAGE_SHIFT)) ||
			      FUNC3(image, addr, eaddr)) {
			FUNC4(&pages->lru, &extra_pages);
			pages = NULL;
		}
	} while (!pages);

	if (pages) {
		/* Remember the allocated page... */
		FUNC4(&pages->lru, &image->control_pages);

		/* Because the page is already in it's destination
		 * location we will never allocate another page at
		 * that address.  Therefore kimage_alloc_pages
		 * will not return it (again) and we don't need
		 * to give it an entry in image->segment[].
		 */
	}
	/* Deal with the destination pages I have inadvertently allocated.
	 *
	 * Ideally I would convert multi-page allocations into single
	 * page allocations, and add everyting to image->dest_pages.
	 *
	 * For now it is simpler to just free the pages.
	 */
	FUNC2(&extra_pages);

	return pages;
}