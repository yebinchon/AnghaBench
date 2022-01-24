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
struct rchan_buf {unsigned int page_count; int /*<<< orphan*/ * page_array; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 size_t FUNC0 (size_t) ; 
 int /*<<< orphan*/  PAGE_KERNEL ; 
 size_t PAGE_SHIFT ; 
 int /*<<< orphan*/  VM_MAP ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (void*,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/ * FUNC4 (unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,unsigned long) ; 
 scalar_t__ FUNC7 (int) ; 
 void* FUNC8 (int /*<<< orphan*/ *,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void *FUNC9(struct rchan_buf *buf, size_t *size)
{
	void *mem;
	unsigned int i, j, n_pages;

	*size = FUNC0(*size);
	n_pages = *size >> PAGE_SHIFT;

	buf->page_array = FUNC4(n_pages);
	if (!buf->page_array)
		return NULL;

	for (i = 0; i < n_pages; i++) {
		buf->page_array[i] = FUNC2(GFP_KERNEL);
		if (FUNC7(!buf->page_array[i]))
			goto depopulate;
		FUNC6(buf->page_array[i], (unsigned long)buf);
	}
	mem = FUNC8(buf->page_array, n_pages, VM_MAP, PAGE_KERNEL);
	if (!mem)
		goto depopulate;

	FUNC3(mem, 0, *size);
	buf->page_count = n_pages;
	return mem;

depopulate:
	for (j = 0; j < i; j++)
		FUNC1(buf->page_array[j]);
	FUNC5(buf->page_array);
	return NULL;
}