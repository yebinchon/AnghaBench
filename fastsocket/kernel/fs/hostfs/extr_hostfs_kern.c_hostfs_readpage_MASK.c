#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct page {scalar_t__ index; } ;
struct file {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  fd; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 TYPE_1__* FUNC1 (struct file*) ; 
 long long PAGE_CACHE_SHIFT ; 
 scalar_t__ PAGE_CACHE_SIZE ; 
 scalar_t__ FUNC2 (struct page*) ; 
 int /*<<< orphan*/  FUNC3 (struct page*) ; 
 int /*<<< orphan*/  FUNC4 (struct page*) ; 
 char* FUNC5 (struct page*) ; 
 int /*<<< orphan*/  FUNC6 (struct page*) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC8 (int /*<<< orphan*/ ,long long*,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (struct page*) ; 

int FUNC10(struct file *file, struct page *page)
{
	char *buffer;
	long long start;
	int err = 0;

	start = (long long) page->index << PAGE_CACHE_SHIFT;
	buffer = FUNC5(page);
	err = FUNC8(FUNC1(file)->fd, &start, buffer,
			PAGE_CACHE_SIZE);
	if (err < 0)
		goto out;

	FUNC7(&buffer[err], 0, PAGE_CACHE_SIZE - err);

	FUNC4(page);
	FUNC3(page);
	if (FUNC2(page)) FUNC0(page);
	err = 0;
 out:
	FUNC6(page);
	FUNC9(page);
	return err;
}