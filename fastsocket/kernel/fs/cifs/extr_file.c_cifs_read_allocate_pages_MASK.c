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
struct cifs_readdata {struct page** pages; } ;

/* Variables and functions */
 int ENOMEM ; 
 int GFP_KERNEL ; 
 int __GFP_HIGHMEM ; 
 struct page* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 

__attribute__((used)) static int
FUNC2(struct cifs_readdata *rdata, unsigned int nr_pages)
{
	int rc = 0;
	struct page *page;
	unsigned int i;

	for (i = 0; i < nr_pages; i++) {
		page = FUNC0(GFP_KERNEL|__GFP_HIGHMEM);
		if (!page) {
			rc = -ENOMEM;
			break;
		}
		rdata->pages[i] = page;
	}

	if (rc) {
		for (i = 0; i < nr_pages; i++) {
			FUNC1(rdata->pages[i]);
			rdata->pages[i] = NULL;
		}
	}
	return rc;
}