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
struct page {int dummy; } ;
struct inode {int i_size; } ;
struct file {int dummy; } ;
struct address_space {struct inode* host; } ;
typedef  int loff_t ;
struct TYPE_2__ {int /*<<< orphan*/  fd; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct file*) ; 
 int PAGE_CACHE_SIZE ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 int /*<<< orphan*/  FUNC2 (struct page*) ; 
 void* FUNC3 (struct page*) ; 
 int /*<<< orphan*/  FUNC4 (struct page*) ; 
 int /*<<< orphan*/  FUNC5 (struct page*) ; 
 int /*<<< orphan*/  FUNC6 (struct page*) ; 
 int FUNC7 (int /*<<< orphan*/ ,int*,void*,unsigned int) ; 

int FUNC8(struct file *file, struct address_space *mapping,
			loff_t pos, unsigned len, unsigned copied,
			struct page *page, void *fsdata)
{
	struct inode *inode = mapping->host;
	void *buffer;
	unsigned from = pos & (PAGE_CACHE_SIZE - 1);
	int err;

	buffer = FUNC3(page);
	err = FUNC7(FUNC0(file)->fd, &pos, buffer + from, copied);
	FUNC4(page);

	if (!FUNC1(page) && err == PAGE_CACHE_SIZE)
		FUNC2(page);

	/*
	 * If err > 0, write_file has added err to pos, so we are comparing
	 * i_size against the last byte written.
	 */
	if (err > 0 && (pos > inode->i_size))
		inode->i_size = pos;
	FUNC6(page);
	FUNC5(page);

	return err;
}