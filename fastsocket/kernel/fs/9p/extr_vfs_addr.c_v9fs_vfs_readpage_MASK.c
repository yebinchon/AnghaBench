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
struct inode {int dummy; } ;
struct file {int dummy; } ;
typedef  int /*<<< orphan*/  loff_t ;
struct TYPE_2__ {struct inode* host; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  P9_DEBUG_VFS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ PAGE_CACHE_SIZE ; 
 int /*<<< orphan*/  FUNC2 (struct page*) ; 
 int /*<<< orphan*/  FUNC3 (struct page*) ; 
 int /*<<< orphan*/  FUNC4 (struct page*) ; 
 char* FUNC5 (struct page*) ; 
 int /*<<< orphan*/  FUNC6 (struct page*) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (struct page*) ; 
 int /*<<< orphan*/  FUNC9 (struct page*) ; 
 int FUNC10 (struct file*,char*,int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC11 (struct inode*,struct page*) ; 
 int /*<<< orphan*/  FUNC12 (struct inode*,struct page*) ; 
 int /*<<< orphan*/  FUNC13 (struct inode*,struct page*) ; 

__attribute__((used)) static int FUNC14(struct file *filp, struct page *page)
{
	int retval;
	loff_t offset;
	char *buffer;
	struct inode *inode;

	inode = page->mapping->host;
	FUNC1(P9_DEBUG_VFS, "\n");

	FUNC0(!FUNC2(page));

	retval = FUNC11(inode, page);
	if (retval == 0)
		return retval;

	buffer = FUNC5(page);
	offset = FUNC8(page);

	retval = FUNC10(filp, buffer, NULL, PAGE_CACHE_SIZE, offset);
	if (retval < 0) {
		FUNC13(inode, page);
		goto done;
	}

	FUNC7(buffer + retval, 0, PAGE_CACHE_SIZE - retval);
	FUNC4(page);
	FUNC3(page);

	FUNC12(inode, page);
	retval = 0;

done:
	FUNC6(page);
	FUNC9(page);
	return retval;
}