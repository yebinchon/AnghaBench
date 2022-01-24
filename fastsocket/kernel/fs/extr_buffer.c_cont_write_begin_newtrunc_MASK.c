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
typedef  unsigned int loff_t ;
typedef  int /*<<< orphan*/  get_block_t ;

/* Variables and functions */
 unsigned int PAGE_CACHE_MASK ; 
 int FUNC0 (struct file*,struct address_space*,unsigned int,unsigned int,unsigned int,struct page**,void**,int /*<<< orphan*/ *) ; 
 int FUNC1 (struct file*,struct address_space*,unsigned int,unsigned int*) ; 

int FUNC2(struct file *file, struct address_space *mapping,
			loff_t pos, unsigned len, unsigned flags,
			struct page **pagep, void **fsdata,
			get_block_t *get_block, loff_t *bytes)
{
	struct inode *inode = mapping->host;
	unsigned blocksize = 1 << inode->i_blkbits;
	unsigned zerofrom;
	int err;

	err = FUNC1(file, mapping, pos, bytes);
	if (err)
		goto out;

	zerofrom = *bytes & ~PAGE_CACHE_MASK;
	if (pos+len > *bytes && zerofrom & (blocksize-1)) {
		*bytes |= (blocksize-1);
		(*bytes)++;
	}

	*pagep = NULL;
	err = FUNC0(file, mapping, pos, len,
				flags, pagep, fsdata, get_block);
out:
	return err;
}