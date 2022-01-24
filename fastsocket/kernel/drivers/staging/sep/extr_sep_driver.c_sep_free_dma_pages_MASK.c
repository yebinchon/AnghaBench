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
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 int /*<<< orphan*/  FUNC2 (struct page**) ; 
 int /*<<< orphan*/  FUNC3 (struct page*) ; 

__attribute__((used)) static int FUNC4(struct page **page_array_ptr, unsigned long num_pages, unsigned long dirtyFlag)
{
	unsigned long count;

	if (dirtyFlag) {
		for (count = 0; count < num_pages; count++) {
			/* the out array was written, therefore the data was changed */
			if (!FUNC0(page_array_ptr[count]))
				FUNC1(page_array_ptr[count]);
			FUNC3(page_array_ptr[count]);
		}
	} else {
		/* free in pages - the data was only read, therefore no update was done
		   on those pages */
		for (count = 0; count < num_pages; count++)
			FUNC3(page_array_ptr[count]);
	}

	if (page_array_ptr)
		/* free the array */
		FUNC2(page_array_ptr);

	return 0;
}