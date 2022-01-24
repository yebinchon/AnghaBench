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
struct inode {int i_blkbits; struct address_space* i_mapping; } ;
struct buffer_head {int b_blocknr; int /*<<< orphan*/  b_size; int /*<<< orphan*/  b_state; struct buffer_head* b_this_page; } ;
struct block_device {struct inode* bd_inode; } ;
struct address_space {int /*<<< orphan*/  private_lock; } ;
typedef  int sector_t ;
typedef  int pgoff_t ;

/* Variables and functions */
 int PAGE_CACHE_SHIFT ; 
 int /*<<< orphan*/  FUNC0 (struct buffer_head*) ; 
 struct page* FUNC1 (struct address_space*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct buffer_head*) ; 
 struct buffer_head* FUNC3 (struct page*) ; 
 int /*<<< orphan*/  FUNC4 (struct page*) ; 
 int /*<<< orphan*/  FUNC5 (struct page*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int,...) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct buffer_head *
FUNC9(struct block_device *bdev, sector_t block)
{
	struct inode *bd_inode = bdev->bd_inode;
	struct address_space *bd_mapping = bd_inode->i_mapping;
	struct buffer_head *ret = NULL;
	pgoff_t index;
	struct buffer_head *bh;
	struct buffer_head *head;
	struct page *page;
	int all_mapped = 1;

	index = block >> (PAGE_CACHE_SHIFT - bd_inode->i_blkbits);
	page = FUNC1(bd_mapping, index);
	if (!page)
		goto out;

	FUNC7(&bd_mapping->private_lock);
	if (!FUNC5(page))
		goto out_unlock;
	head = FUNC3(page);
	bh = head;
	do {
		if (!FUNC0(bh))
			all_mapped = 0;
		else if (bh->b_blocknr == block) {
			ret = bh;
			FUNC2(bh);
			goto out_unlock;
		}
		bh = bh->b_this_page;
	} while (bh != head);

	/* we might be here because some of the buffers on this page are
	 * not mapped.  This is due to various races between
	 * file io on the block device and getblk.  It gets dealt with
	 * elsewhere, don't buffer_error if we had some unmapped buffers
	 */
	if (all_mapped) {
		FUNC6("__find_get_block_slow() failed. "
			"block=%llu, b_blocknr=%llu\n",
			(unsigned long long)block,
			(unsigned long long)bh->b_blocknr);
		FUNC6("b_state=0x%08lx, b_size=%zu\n",
			bh->b_state, bh->b_size);
		FUNC6("device blocksize: %d\n", 1 << bd_inode->i_blkbits);
	}
out_unlock:
	FUNC8(&bd_mapping->private_lock);
	FUNC4(page);
out:
	return ret;
}