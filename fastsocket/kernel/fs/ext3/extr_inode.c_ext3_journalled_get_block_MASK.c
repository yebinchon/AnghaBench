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
struct inode {int dummy; } ;
struct buffer_head {int /*<<< orphan*/  b_blocknr; int /*<<< orphan*/  b_bdev; struct page* b_page; } ;
typedef  int /*<<< orphan*/  sector_t ;
typedef  int /*<<< orphan*/  handle_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (struct page*) ; 
 scalar_t__ FUNC2 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC3 (struct buffer_head*) ; 
 int FUNC4 (int /*<<< orphan*/ *,struct inode*,int /*<<< orphan*/ ,int,struct buffer_head*,int) ; 
 int /*<<< orphan*/ * FUNC5 () ; 
 int FUNC6 (int /*<<< orphan*/ *,struct buffer_head*) ; 
 int FUNC7 (int /*<<< orphan*/ *,struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC8 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(struct inode *inode, sector_t iblock,
				     struct buffer_head *bh, int create)
{
	handle_t *handle = FUNC5();
	int ret;

	/* This function should ever be used only for real buffers */
	FUNC0(!bh->b_page);

	ret = FUNC4(handle, inode, iblock, 1, bh, create);
	if (ret > 0) {
		if (FUNC2(bh)) {
			struct page *page = bh->b_page;

			/*
			 * This is a terrible hack to avoid block_prepare_write
			 * marking our buffer as dirty
			 */
			if (FUNC1(page)) {
				ret = FUNC7(handle, bh);
				if (ret < 0)
					goto out;
				FUNC9(bh->b_bdev,
							  bh->b_blocknr);
				FUNC3(bh);
				FUNC8(bh);
				ret = FUNC6(handle, bh);
				if (ret < 0)
					goto out;
			}
		}
		ret = 0;
	}
out:
	return ret;
}