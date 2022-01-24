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
typedef  int u64 ;
struct page {int dummy; } ;
struct inode {TYPE_1__* i_sb; struct address_space* i_mapping; } ;
struct address_space {int dummy; } ;
typedef  int /*<<< orphan*/  handle_t ;
struct TYPE_2__ {int s_blocksize; } ;

/* Variables and functions */
 int ENOMEM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int PAGE_CACHE_SHIFT ; 
 int PAGE_CACHE_SIZE ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (struct page*,unsigned int,unsigned int) ; 
 struct page* FUNC4 (struct address_space*,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC7 (struct inode*,struct page*,unsigned int,unsigned int) ; 
 scalar_t__ FUNC8 (struct inode*) ; 
 int /*<<< orphan*/ * FUNC9 (struct inode*,struct page*,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC10 (struct page*) ; 
 int /*<<< orphan*/  FUNC11 (struct page*) ; 

__attribute__((used)) static int FUNC12(struct inode *inode,
				 u64 size)
{
	struct address_space *mapping = inode->i_mapping;
	struct page *page;
	unsigned long index;
	unsigned int offset;
	handle_t *handle = NULL;
	int ret;

	offset = (size & (PAGE_CACHE_SIZE-1)); /* Within page */
	/* ugh.  in prepare/commit_write, if from==to==start of block, we 
	** skip the prepare.  make sure we never send an offset for the start
	** of a block
	*/
	if ((offset & (inode->i_sb->s_blocksize - 1)) == 0) {
		offset++;
	}
	index = size >> PAGE_CACHE_SHIFT;

	page = FUNC4(mapping, index);
	if (!page) {
		ret = -ENOMEM;
		FUNC5(ret);
		goto out;
	}

	ret = FUNC7(inode, page, offset, offset);
	if (ret < 0) {
		FUNC5(ret);
		goto out_unlock;
	}

	if (FUNC8(inode)) {
		handle = FUNC9(inode, page, offset,
						     offset);
		if (FUNC0(handle)) {
			ret = FUNC2(handle);
			handle = NULL;
			goto out_unlock;
		}
	}

	/* must not update i_size! */
	ret = FUNC3(page, offset, offset);
	if (ret < 0)
		FUNC5(ret);
	else
		ret = 0;

	if (handle)
		FUNC6(FUNC1(inode->i_sb), handle);
out_unlock:
	FUNC11(page);
	FUNC10(page);
out:
	return ret;
}