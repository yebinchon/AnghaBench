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
struct page {TYPE_1__* mapping; } ;
struct file {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  host; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 int E2BIG ; 
 int ENOMEM ; 
 int PAGE_CACHE_SIZE ; 
 scalar_t__ FUNC1 (struct page*) ; 
 int /*<<< orphan*/  FUNC2 (struct page*) ; 
 int /*<<< orphan*/  FUNC3 (struct page*) ; 
 int FUNC4 (char*,char*,int) ; 
 char* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 char* FUNC7 (struct page*) ; 
 int /*<<< orphan*/  FUNC8 (struct page*) ; 
 int /*<<< orphan*/  FUNC9 (struct page*) ; 

int FUNC10(struct file *file, struct page *page)
{
	char *buffer, *name;
	int err;

	buffer = FUNC7(page);
	name = FUNC5(page->mapping->host, 0);
	if (name == NULL)
		return -ENOMEM;
	err = FUNC4(name, buffer, PAGE_CACHE_SIZE);
	FUNC6(name);
	if (err == PAGE_CACHE_SIZE)
		err = -E2BIG;
	else if (err > 0) {
		FUNC3(page);
		FUNC2(page);
		if (FUNC1(page)) FUNC0(page);
		err = 0;
	}
	FUNC8(page);
	FUNC9(page);
	return err;
}