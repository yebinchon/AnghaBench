#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct page {TYPE_1__* mapping; } ;
struct inode {int /*<<< orphan*/  i_sb; } ;
struct file {int dummy; } ;
typedef  unsigned long loff_t ;
struct TYPE_4__ {unsigned long i_dataoffset; } ;
struct TYPE_3__ {struct inode* host; } ;

/* Variables and functions */
 int EIO ; 
 int ENOMEM ; 
 unsigned long PAGE_SIZE ; 
 TYPE_2__* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 int /*<<< orphan*/  FUNC2 (struct page*) ; 
 int /*<<< orphan*/  FUNC3 (struct page*) ; 
 unsigned long FUNC4 (struct inode*) ; 
 void* FUNC5 (struct page*) ; 
 int /*<<< orphan*/  FUNC6 (struct page*) ; 
 int /*<<< orphan*/  FUNC7 (void*,int /*<<< orphan*/ ,unsigned long) ; 
 unsigned long FUNC8 (struct page*) ; 
 int FUNC9 (int /*<<< orphan*/ ,unsigned long,void*,unsigned long) ; 
 int /*<<< orphan*/  FUNC10 (struct page*) ; 

__attribute__((used)) static int FUNC11(struct file *file, struct page *page)
{
	struct inode *inode = page->mapping->host;
	loff_t offset, size;
	unsigned long fillsize, pos;
	void *buf;
	int ret;

	buf = FUNC5(page);
	if (!buf)
		return -ENOMEM;

	/* 32 bit warning -- but not for us :) */
	offset = FUNC8(page);
	size = FUNC4(inode);
	fillsize = 0;
	ret = 0;
	if (offset < size) {
		size -= offset;
		fillsize = size > PAGE_SIZE ? PAGE_SIZE : size;

		pos = FUNC0(inode)->i_dataoffset + offset;

		ret = FUNC9(inode->i_sb, pos, buf, fillsize);
		if (ret < 0) {
			FUNC1(page);
			fillsize = 0;
			ret = -EIO;
		}
	}

	if (fillsize < PAGE_SIZE)
		FUNC7(buf + fillsize, 0, PAGE_SIZE - fillsize);
	if (ret == 0)
		FUNC2(page);

	FUNC3(page);
	FUNC6(page);
	FUNC10(page);
	return ret;
}