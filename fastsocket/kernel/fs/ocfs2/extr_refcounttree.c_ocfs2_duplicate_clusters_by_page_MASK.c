#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u64 ;
typedef  int u32 ;
struct super_block {int dummy; } ;
struct page {int dummy; } ;
struct TYPE_4__ {struct ocfs2_caching_info* et_ci; } ;
struct ocfs2_cow_context {TYPE_2__* inode; TYPE_1__ data_et; } ;
struct ocfs2_caching_info {int dummy; } ;
struct address_space {int dummy; } ;
typedef  int pgoff_t ;
typedef  int loff_t ;
typedef  int /*<<< orphan*/  handle_t ;
struct TYPE_6__ {int s_clustersize_bits; } ;
struct TYPE_5__ {struct address_space* i_mapping; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC1 (struct super_block*) ; 
 int PAGE_CACHE_SHIFT ; 
 int PAGE_CACHE_SIZE ; 
 int /*<<< orphan*/  FUNC2 (struct page*) ; 
 int /*<<< orphan*/  FUNC3 (struct page*) ; 
 int FUNC4 (struct page*,int /*<<< orphan*/ ) ; 
 struct page* FUNC5 (struct address_space*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct page*) ; 
 int /*<<< orphan*/  FUNC7 (struct page*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  ocfs2_clear_cow_buffer ; 
 int /*<<< orphan*/  FUNC10 (struct super_block*,int) ; 
 int /*<<< orphan*/  ocfs2_get_block ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*,int /*<<< orphan*/ *,unsigned int,unsigned int,struct page*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct super_block* FUNC12 (struct ocfs2_caching_info*) ; 
 int /*<<< orphan*/  FUNC13 (struct page*) ; 
 int /*<<< orphan*/  FUNC14 (struct page*) ; 
 scalar_t__ FUNC15 (struct page*) ; 
 int /*<<< orphan*/  FUNC16 (struct page*) ; 
 int FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned int,unsigned int,int*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC18(handle_t *handle,
					    struct ocfs2_cow_context *context,
					    u32 cpos, u32 old_cluster,
					    u32 new_cluster, u32 new_len)
{
	int ret = 0, partial;
	struct ocfs2_caching_info *ci = context->data_et.et_ci;
	struct super_block *sb = FUNC12(ci);
	u64 new_block = FUNC10(sb, new_cluster);
	struct page *page;
	pgoff_t page_index;
	unsigned int from, to;
	loff_t offset, end, map_end;
	struct address_space *mapping = context->inode->i_mapping;

	FUNC8(0, "old_cluster %u, new %u, len %u at offset %u\n", old_cluster,
	     new_cluster, new_len, cpos);

	offset = ((loff_t)cpos) << FUNC1(sb)->s_clustersize_bits;
	end = offset + (new_len << FUNC1(sb)->s_clustersize_bits);

	while (offset < end) {
		page_index = offset >> PAGE_CACHE_SHIFT;
		map_end = (page_index + 1) << PAGE_CACHE_SHIFT;
		if (map_end > end)
			map_end = end;

		/* from, to is the offset within the page. */
		from = offset & (PAGE_CACHE_SIZE - 1);
		to = PAGE_CACHE_SIZE;
		if (map_end & (PAGE_CACHE_SIZE - 1))
			to = map_end & (PAGE_CACHE_SIZE - 1);

		page = FUNC5(mapping, page_index);

		/* This page can't be dirtied before we CoW it out. */
		FUNC0(FUNC2(page));

		if (!FUNC3(page)) {
			ret = FUNC4(page, ocfs2_get_block);
			if (ret) {
				FUNC9(ret);
				goto unlock;
			}
			FUNC6(page);
		}

		if (FUNC15(page)) {
			ret = FUNC17(handle, FUNC13(page),
						from, to, &partial,
						ocfs2_clear_cow_buffer);
			if (ret) {
				FUNC9(ret);
				goto unlock;
			}
		}

		FUNC11(context->inode,
					 handle, from, to,
					 page, 0, &new_block);
		FUNC7(page);
unlock:
		FUNC16(page);
		FUNC14(page);
		page = NULL;
		offset = map_end;
		if (ret)
			break;
	}

	return ret;
}