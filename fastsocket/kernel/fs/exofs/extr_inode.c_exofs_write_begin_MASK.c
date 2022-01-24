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
typedef  int /*<<< orphan*/  loff_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 unsigned int PAGE_CACHE_SIZE ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 int FUNC2 (struct page*,int) ; 
 int FUNC3 (struct file*,struct address_space*,int /*<<< orphan*/ ,unsigned int,unsigned int,struct page**,void**) ; 
 int /*<<< orphan*/  FUNC4 (struct page*) ; 

int FUNC5(struct file *file, struct address_space *mapping,
		loff_t pos, unsigned len, unsigned flags,
		struct page **pagep, void **fsdata)
{
	int ret = 0;
	struct page *page;

	page = *pagep;
	if (page == NULL) {
		ret = FUNC3(file, mapping, pos, len, flags, pagep,
					 fsdata);
		if (ret) {
			FUNC0("simple_write_begin faild\n");
			return ret;
		}

		page = *pagep;
	}

	 /* read modify write */
	if (!FUNC1(page) && (len != PAGE_CACHE_SIZE)) {
		ret = FUNC2(page, true);
		if (ret) {
			/*SetPageError was done by _readpage. Is it ok?*/
			FUNC4(page);
			FUNC0("__readpage_filler faild\n");
		}
	}

	return ret;
}