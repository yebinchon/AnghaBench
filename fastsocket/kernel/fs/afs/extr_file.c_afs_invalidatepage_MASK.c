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
struct page {TYPE_1__* mapping; int /*<<< orphan*/  index; } ;
struct afs_writeback {int dummy; } ;
struct afs_vnode {int /*<<< orphan*/  cache; } ;
struct TYPE_2__ {int /*<<< orphan*/  host; } ;

/* Variables and functions */
 struct afs_vnode* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct page*) ; 
 scalar_t__ FUNC3 (struct page*) ; 
 int /*<<< orphan*/  FUNC4 (struct page*) ; 
 scalar_t__ FUNC5 (struct page*) ; 
 int /*<<< orphan*/  FUNC6 (struct page*) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (struct afs_writeback*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,struct page*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,struct page*) ; 
 scalar_t__ FUNC12 (struct page*) ; 
 int /*<<< orphan*/  FUNC13 (struct page*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC14(struct page *page, unsigned long offset)
{
	struct afs_writeback *wb = (struct afs_writeback *) FUNC12(page);

	FUNC7("{%lu},%lu", page->index, offset);

	FUNC1(!FUNC4(page));

	/* we clean up only if the entire page is being invalidated */
	if (offset == 0) {
#ifdef CONFIG_AFS_FSCACHE
		if (PageFsCache(page)) {
			struct afs_vnode *vnode = AFS_FS_I(page->mapping->host);
			fscache_wait_on_page_write(vnode->cache, page);
			fscache_uncache_page(vnode->cache, page);
		}
#endif

		if (FUNC5(page)) {
			if (wb && !FUNC6(page)) {
				FUNC13(page, 0);
				FUNC9(wb);
			}

			if (!FUNC12(page))
				FUNC2(page);
		}
	}

	FUNC8("");
}