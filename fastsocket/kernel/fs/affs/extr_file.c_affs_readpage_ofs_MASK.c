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
typedef  int u32 ;
struct page {int index; TYPE_1__* mapping; } ;
struct inode {int i_size; scalar_t__ i_ino; } ;
struct file {int dummy; } ;
struct TYPE_2__ {struct inode* host; } ;

/* Variables and functions */
 int PAGE_CACHE_MASK ; 
 int PAGE_CACHE_SHIFT ; 
 int PAGE_CACHE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 int FUNC1 (struct file*,struct page*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 (struct page*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct page*) ; 

__attribute__((used)) static int
FUNC6(struct file *file, struct page *page)
{
	struct inode *inode = page->mapping->host;
	u32 to;
	int err;

	FUNC4("AFFS: read_page(%u, %ld)\n", (u32)inode->i_ino, page->index);
	to = PAGE_CACHE_SIZE;
	if (((page->index + 1) << PAGE_CACHE_SHIFT) > inode->i_size) {
		to = inode->i_size & ~PAGE_CACHE_MASK;
		FUNC2(FUNC3(page) + to, 0, PAGE_CACHE_SIZE - to);
	}

	err = FUNC1(file, page, 0, to);
	if (!err)
		FUNC0(page);
	FUNC5(page);
	return err;
}