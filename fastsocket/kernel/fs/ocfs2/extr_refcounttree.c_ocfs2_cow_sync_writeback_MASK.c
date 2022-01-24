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
typedef  int u32 ;
struct super_block {int dummy; } ;
struct page {int dummy; } ;
struct ocfs2_cow_context {TYPE_1__* inode; } ;
typedef  int pgoff_t ;
typedef  int loff_t ;
struct TYPE_4__ {int s_clustersize_bits; } ;
struct TYPE_3__ {int /*<<< orphan*/  i_mapping; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EIO ; 
 TYPE_2__* FUNC1 (struct super_block*) ; 
 int PAGE_CACHE_SHIFT ; 
 scalar_t__ FUNC2 (struct page*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int,int) ; 
 struct page* FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct page*) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 scalar_t__ FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (struct page*) ; 
 int /*<<< orphan*/  FUNC9 (struct page*) ; 
 int /*<<< orphan*/  FUNC10 (struct page*) ; 

__attribute__((used)) static int FUNC11(struct super_block *sb,
				    struct ocfs2_cow_context *context,
				    u32 cpos, u32 num_clusters)
{
	int ret = 0;
	loff_t offset, end, map_end;
	pgoff_t page_index;
	struct page *page;

	if (FUNC7(context->inode))
		return 0;

	offset = ((loff_t)cpos) << FUNC1(sb)->s_clustersize_bits;
	end = offset + (num_clusters << FUNC1(sb)->s_clustersize_bits);

	ret = FUNC3(context->inode->i_mapping,
				       offset, end - 1);
	if (ret < 0) {
		FUNC6(ret);
		return ret;
	}

	while (offset < end) {
		page_index = offset >> PAGE_CACHE_SHIFT;
		map_end = (page_index + 1) << PAGE_CACHE_SHIFT;
		if (map_end > end)
			map_end = end;

		page = FUNC4(context->inode->i_mapping, page_index);
		FUNC0(!page);

		FUNC10(page);
		if (FUNC2(page)) {
			ret = -EIO;
			FUNC6(ret);
		} else
			FUNC5(page);

		FUNC9(page);
		FUNC8(page);
		page = NULL;
		offset = map_end;
		if (ret)
			break;
	}

	return ret;
}