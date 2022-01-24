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
struct page {struct address_space* mapping; } ;
struct address_space {int /*<<< orphan*/  host; } ;
typedef  int gfp_t ;
struct TYPE_2__ {int flags; } ;

/* Variables and functions */
 int FLUSH_SYNC ; 
 int GFP_KERNEL ; 
 int /*<<< orphan*/  PAGECACHE ; 
 int PF_FSTRANS ; 
 scalar_t__ FUNC0 (struct page*) ; 
 TYPE_1__* current ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,struct page*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int FUNC4 (struct page*,int) ; 

__attribute__((used)) static int FUNC5(struct page *page, gfp_t gfp)
{
	struct address_space *mapping = page->mapping;

	FUNC2(PAGECACHE, "NFS: release_page(%p)\n", page);

	/* Only do I/O if gfp is a superset of GFP_KERNEL, and we're not
	 * doing this memory reclaim for a fs-related allocation.
	 */
	if (mapping && (gfp & GFP_KERNEL) == GFP_KERNEL &&
	    !(current->flags & PF_FSTRANS)) {
		int how = FLUSH_SYNC;

		/* Don't let kswapd deadlock waiting for OOM RPC calls */
		if (FUNC1())
			how = 0;
		FUNC3(mapping->host, how);
	}
	/* If PagePrivate() is set, then the page is not freeable */
	if (FUNC0(page))
		return 0;
	return FUNC4(page, gfp);
}