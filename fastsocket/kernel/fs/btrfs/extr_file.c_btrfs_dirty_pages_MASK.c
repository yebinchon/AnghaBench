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
typedef  size_t u64 ;
struct page {int dummy; } ;
struct inode {int dummy; } ;
struct extent_state {int dummy; } ;
struct btrfs_root {size_t sectorsize; } ;
typedef  size_t loff_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 int FUNC2 (struct inode*,size_t,size_t,struct extent_state**) ; 
 size_t FUNC3 (struct inode*) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*,size_t) ; 
 int /*<<< orphan*/  FUNC5 (struct page*) ; 

int FUNC6(struct btrfs_root *root, struct inode *inode,
		      struct page **pages, size_t num_pages,
		      loff_t pos, size_t write_bytes,
		      struct extent_state **cached)
{
	int err = 0;
	int i;
	u64 num_bytes;
	u64 start_pos;
	u64 end_of_last_block;
	u64 end_pos = pos + write_bytes;
	loff_t isize = FUNC3(inode);

	start_pos = pos & ~((u64)root->sectorsize - 1);
	num_bytes = (write_bytes + pos - start_pos +
		    root->sectorsize - 1) & ~((u64)root->sectorsize - 1);

	end_of_last_block = start_pos + num_bytes - 1;
	err = FUNC2(inode, start_pos, end_of_last_block,
					cached);
	if (err)
		return err;

	for (i = 0; i < num_pages; i++) {
		struct page *p = pages[i];
		FUNC1(p);
		FUNC0(p);
		FUNC5(p);
	}

	/*
	 * we've only changed i_size in ram, and we haven't updated
	 * the disk i_size.  There is no need to log the inode
	 * at this time.
	 */
	if (end_pos > isize)
		FUNC4(inode, end_pos);
	return 0;
}