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

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct page* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct page**,unsigned int) ; 

__attribute__((used)) static
int FUNC2(struct page **pages, unsigned int npages)
{
	unsigned int i;

	for (i = 0; i < npages; i++) {
		struct page *page = FUNC0(GFP_KERNEL);
		if (page == NULL)
			goto out_freepages;
		pages[i] = page;
	}
	return 0;

out_freepages:
	FUNC1(pages, i);
	return -ENOMEM;
}