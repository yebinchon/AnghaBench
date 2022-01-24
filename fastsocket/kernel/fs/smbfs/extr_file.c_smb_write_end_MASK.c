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
 int PAGE_CACHE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct page*) ; 
 int FUNC4 (struct file*,struct page*,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (struct page*) ; 

__attribute__((used)) static int FUNC7(struct file *file, struct address_space *mapping,
			loff_t pos, unsigned len, unsigned copied,
			struct page *page, void *fsdata)
{
	int status;
	unsigned offset = pos & (PAGE_CACHE_SIZE - 1);

	FUNC2();
	status = FUNC4(file, page, offset, copied);
	FUNC5();

	if (!status) {
		if (!FUNC0(page) && copied == PAGE_CACHE_SIZE)
			FUNC1(page);
		status = copied;
	}

	FUNC6(page);
	FUNC3(page);

	return status;
}