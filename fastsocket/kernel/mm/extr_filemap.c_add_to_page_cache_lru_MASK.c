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
struct address_space {int dummy; } ;
typedef  int /*<<< orphan*/  pgoff_t ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 int FUNC1 (struct page*,struct address_space*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct page*) ; 
 scalar_t__ FUNC3 (struct address_space*) ; 

int FUNC4(struct page *page, struct address_space *mapping,
				pgoff_t offset, gfp_t gfp_mask)
{
	int ret;

	/*
	 * Splice_read and readahead add shmem/tmpfs pages into the page cache
	 * before shmem_readpage has a chance to mark them as SwapBacked: they
	 * need to go on the active_anon lru below, and mem_cgroup_cache_charge
	 * (called in add_to_page_cache) needs to know where they're going too.
	 */
	if (FUNC3(mapping))
		FUNC0(page);

	ret = FUNC1(page, mapping, offset, gfp_mask);
	if (ret == 0)
		FUNC2(page);
	return ret;
}