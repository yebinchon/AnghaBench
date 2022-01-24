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
struct inode {int dummy; } ;
struct file {int dummy; } ;
struct address_space {struct inode* host; } ;
typedef  int loff_t ;
typedef  int /*<<< orphan*/  handle_t ;
struct TYPE_2__ {int i_disksize; int /*<<< orphan*/  i_data_sem; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 TYPE_1__* FUNC1 (struct inode*) ; 
#define  EXT4_INODE_ORDER_DATA_MODE 129 
#define  EXT4_INODE_WRITEBACK_DATA_MODE 128 
 int FALL_BACK_TO_NONDELALLOC ; 
 int PAGE_CACHE_SIZE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (struct page*,unsigned long) ; 
 int FUNC4 (struct inode*) ; 
 int FUNC5 (int /*<<< orphan*/ *,struct inode*) ; 
 int /*<<< orphan*/ * FUNC6 () ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,struct inode*) ; 
 int FUNC9 (struct file*,struct address_space*,int,unsigned int,unsigned int,struct page*,void*) ; 
 scalar_t__ FUNC10 (struct inode*) ; 
 int FUNC11 (struct file*,struct address_space*,int,unsigned int,unsigned int,struct page*,void*) ; 
 int FUNC12 (struct file*,struct address_space*,int,unsigned int,unsigned int,struct page*,void*) ; 
 int /*<<< orphan*/  FUNC13 (struct inode*,int,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC15(struct file *file,
			     struct address_space *mapping,
			     loff_t pos, unsigned len, unsigned copied,
			     struct page *page, void *fsdata)
{
	struct inode *inode = mapping->host;
	int ret = 0, ret2;
	handle_t *handle = FUNC6();
	loff_t new_i_size;
	unsigned long start, end;
	int write_mode = (int)(unsigned long)fsdata;

	if (write_mode == FALL_BACK_TO_NONDELALLOC) {
		switch (FUNC4(inode)) {
		case EXT4_INODE_ORDER_DATA_MODE:
			return FUNC9(file, mapping, pos,
					len, copied, page, fsdata);
		case EXT4_INODE_WRITEBACK_DATA_MODE:
			return FUNC11(file, mapping, pos,
					len, copied, page, fsdata);
		default:
			FUNC0();
		}
	}

	FUNC13(inode, pos, len, copied);
	start = pos & (PAGE_CACHE_SIZE - 1);
	end = start + copied - 1;

	/*
	 * generic_write_end() will run mark_inode_dirty() if i_size
	 * changes.  So let's piggyback the i_disksize mark_inode_dirty
	 * into that.
	 */

	new_i_size = pos + copied;
	if (copied && new_i_size > FUNC1(inode)->i_disksize) {
		if (FUNC3(page, end)) {
			FUNC2(&FUNC1(inode)->i_data_sem);
			if (new_i_size > FUNC1(inode)->i_disksize) {
				/*
				 * Updating i_disksize when extending file
				 * without needing block allocation
				 */
				if (FUNC10(inode))
					ret = FUNC5(handle,
								   inode);

				FUNC1(inode)->i_disksize = new_i_size;
			}
			FUNC14(&FUNC1(inode)->i_data_sem);
			/* We need to mark inode dirty even if
			 * new_i_size is less that inode->i_size
			 * bu greater than i_disksize.(hint delalloc)
			 */
			FUNC8(handle, inode);
		}
	}
	ret2 = FUNC12(file, mapping, pos, len, copied,
							page, fsdata);
	copied = ret2;
	if (ret2 < 0)
		ret = ret2;
	ret2 = FUNC7(handle);
	if (!ret)
		ret = ret2;

	return ret ? ret : copied;
}