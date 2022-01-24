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
struct inode {scalar_t__ i_size; } ;
struct file {int dummy; } ;
struct address_space {struct inode* host; } ;
typedef  scalar_t__ loff_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct inode*) ; 
 int FUNC1 (struct file*,struct address_space*,scalar_t__,unsigned int,unsigned int,struct page*,void*) ; 

__attribute__((used)) static int FUNC2(struct file *file, struct address_space *mapping,
			loff_t pos, unsigned len, unsigned copied,
			struct page *page, void *fsdata)
{
	struct inode *inode = mapping->host;
	/* According to comment in simple_write_end i_mutex is held */
	loff_t i_size = inode->i_size;
	int ret;

	ret = FUNC1(file, mapping,pos, len, copied, page, fsdata);
	if (i_size != inode->i_size)
		FUNC0(inode);
	return ret;
}