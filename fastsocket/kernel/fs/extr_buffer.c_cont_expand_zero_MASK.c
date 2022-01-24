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
struct inode {int i_blkbits; } ;
struct file {int dummy; } ;
struct address_space {struct inode* host; } ;
typedef  unsigned int pgoff_t ;
typedef  unsigned int loff_t ;

/* Variables and functions */
 int /*<<< orphan*/  AOP_FLAG_UNINTERRUPTIBLE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 unsigned int PAGE_CACHE_MASK ; 
 unsigned int PAGE_CACHE_SHIFT ; 
 unsigned int PAGE_CACHE_SIZE ; 
 int /*<<< orphan*/  FUNC1 (struct address_space*) ; 
 int FUNC2 (struct file*,struct address_space*,unsigned int,unsigned int,int /*<<< orphan*/ ,struct page**,void**) ; 
 int FUNC3 (struct file*,struct address_space*,unsigned int,unsigned int,unsigned int,struct page*,void*) ; 
 int /*<<< orphan*/  FUNC4 (struct page*,unsigned int,unsigned int) ; 

__attribute__((used)) static int FUNC5(struct file *file, struct address_space *mapping,
			    loff_t pos, loff_t *bytes)
{
	struct inode *inode = mapping->host;
	unsigned blocksize = 1 << inode->i_blkbits;
	struct page *page;
	void *fsdata;
	pgoff_t index, curidx;
	loff_t curpos;
	unsigned zerofrom, offset, len;
	int err = 0;

	index = pos >> PAGE_CACHE_SHIFT;
	offset = pos & ~PAGE_CACHE_MASK;

	while (index > (curidx = (curpos = *bytes)>>PAGE_CACHE_SHIFT)) {
		zerofrom = curpos & ~PAGE_CACHE_MASK;
		if (zerofrom & (blocksize-1)) {
			*bytes |= (blocksize-1);
			(*bytes)++;
		}
		len = PAGE_CACHE_SIZE - zerofrom;

		err = FUNC2(file, mapping, curpos, len,
						AOP_FLAG_UNINTERRUPTIBLE,
						&page, &fsdata);
		if (err)
			goto out;
		FUNC4(page, zerofrom, len);
		err = FUNC3(file, mapping, curpos, len, len,
						page, fsdata);
		if (err < 0)
			goto out;
		FUNC0(err != len);
		err = 0;

		FUNC1(mapping);
	}

	/* page covers the boundary, find the boundary offset */
	if (index == curidx) {
		zerofrom = curpos & ~PAGE_CACHE_MASK;
		/* if we will expand the thing last block will be filled */
		if (offset <= zerofrom) {
			goto out;
		}
		if (zerofrom & (blocksize-1)) {
			*bytes |= (blocksize-1);
			(*bytes)++;
		}
		len = offset - zerofrom;

		err = FUNC2(file, mapping, curpos, len,
						AOP_FLAG_UNINTERRUPTIBLE,
						&page, &fsdata);
		if (err)
			goto out;
		FUNC4(page, zerofrom, len);
		err = FUNC3(file, mapping, curpos, len, len,
						page, fsdata);
		if (err < 0)
			goto out;
		FUNC0(err != len);
		err = 0;
	}
out:
	return err;
}