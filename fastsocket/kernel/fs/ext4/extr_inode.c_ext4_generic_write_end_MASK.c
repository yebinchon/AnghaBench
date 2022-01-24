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
struct inode {unsigned int i_size; } ;
struct file {int dummy; } ;
struct address_space {struct inode* host; } ;
typedef  unsigned int loff_t ;
typedef  int /*<<< orphan*/  handle_t ;
struct TYPE_2__ {unsigned int i_disksize; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct inode*) ; 
 unsigned int FUNC1 (struct file*,struct address_space*,unsigned int,unsigned int,unsigned int,struct page*,void*) ; 
 int /*<<< orphan*/ * FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct inode*) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (struct page*) ; 
 int /*<<< orphan*/  FUNC7 (struct page*) ; 

__attribute__((used)) static int FUNC8(struct file *file,
				  struct address_space *mapping,
				  loff_t pos, unsigned len, unsigned copied,
				  struct page *page, void *fsdata)
{
	int i_size_changed = 0;
	struct inode *inode = mapping->host;
	handle_t *handle = FUNC2();

	copied = FUNC1(file, mapping, pos, len, copied, page, fsdata);

	/*
	 * No need to use i_size_read() here, the i_size
	 * cannot change under us because we hold i_mutex.
	 *
	 * But it's important to update i_size while still holding page lock:
	 * page writeout could otherwise come in and zero beyond i_size.
	 */
	if (pos + copied > inode->i_size) {
		FUNC5(inode, pos + copied);
		i_size_changed = 1;
	}

	if (pos + copied >  FUNC0(inode)->i_disksize) {
		/* We need to mark inode dirty even if
		 * new_i_size is less that inode->i_size
		 * bu greater than i_disksize.(hint delalloc)
		 */
		FUNC4(inode, (pos + copied));
		i_size_changed = 1;
	}
	FUNC7(page);
	FUNC6(page);

	/*
	 * Don't mark the inode dirty under page lock. First, it unnecessarily
	 * makes the holding time of page lock longer. Second, it forces lock
	 * ordering of page lock and transaction start for journaling
	 * filesystems.
	 */
	if (i_size_changed)
		FUNC3(handle, inode);

	return copied;
}