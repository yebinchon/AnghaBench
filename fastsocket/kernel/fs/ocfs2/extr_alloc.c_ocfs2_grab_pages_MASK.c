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
struct inode {struct address_space* i_mapping; } ;
struct address_space {int dummy; } ;
typedef  unsigned long loff_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ENOMEM ; 
 unsigned long FUNC1 (unsigned long) ; 
 unsigned long PAGE_CACHE_SHIFT ; 
 struct page* FUNC2 (struct address_space*,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct page**,int) ; 

int FUNC5(struct inode *inode, loff_t start, loff_t end,
		     struct page **pages, int *num)
{
	int numpages, ret = 0;
	struct address_space *mapping = inode->i_mapping;
	unsigned long index;
	loff_t last_page_bytes;

	FUNC0(start > end);

	numpages = 0;
	last_page_bytes = FUNC1(end);
	index = start >> PAGE_CACHE_SHIFT;
	do {
		pages[numpages] = FUNC2(mapping, index);
		if (!pages[numpages]) {
			ret = -ENOMEM;
			FUNC3(ret);
			goto out;
		}

		numpages++;
		index++;
	} while (index < (last_page_bytes >> PAGE_CACHE_SHIFT));

out:
	if (ret != 0) {
		if (pages)
			FUNC4(pages, numpages);
		numpages = 0;
	}

	*num = numpages;

	return ret;
}