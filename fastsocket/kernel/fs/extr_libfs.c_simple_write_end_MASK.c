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
struct file {int dummy; } ;
struct address_space {int dummy; } ;
typedef  int loff_t ;

/* Variables and functions */
 int /*<<< orphan*/  KM_USER0 ; 
 int PAGE_CACHE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 void* FUNC1 (struct page*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (void*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (struct page*) ; 
 int /*<<< orphan*/  FUNC5 (struct file*,struct page*,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (struct page*) ; 

int FUNC7(struct file *file, struct address_space *mapping,
			loff_t pos, unsigned len, unsigned copied,
			struct page *page, void *fsdata)
{
	unsigned from = pos & (PAGE_CACHE_SIZE - 1);

	/* zero the stale part of the page if we did a short copy */
	if (copied < len) {
		void *kaddr = FUNC1(page, KM_USER0);
		FUNC3(kaddr + from + copied, 0, len - copied);
		FUNC0(page);
		FUNC2(kaddr, KM_USER0);
	}

	FUNC5(file, page, from, from+copied);

	FUNC6(page);
	FUNC4(page);

	return copied;
}