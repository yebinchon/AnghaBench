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
struct writeback_control {scalar_t__ nr_to_write; scalar_t__ sync_mode; int encountered_congestion; scalar_t__ nonblocking; } ;
struct page {scalar_t__ index; struct address_space* mapping; } ;
struct backing_dev_info {int dummy; } ;
struct afs_writeback {TYPE_1__* vnode; int /*<<< orphan*/  state; } ;
struct address_space {struct backing_dev_info* backing_dev_info; } ;
typedef  scalar_t__ pgoff_t ;
struct TYPE_2__ {int /*<<< orphan*/  writeback_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  AFS_WBACK_WRITING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PAGECACHE_TAG_DIRTY ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 scalar_t__ FUNC2 (struct page*) ; 
 scalar_t__ WB_SYNC_NONE ; 
 int /*<<< orphan*/  FUNC3 (char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (char*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (char*,scalar_t__) ; 
 int FUNC6 (struct afs_writeback*,struct page*) ; 
 scalar_t__ FUNC7 (struct backing_dev_info*) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int FUNC9 (struct address_space*,scalar_t__*,int /*<<< orphan*/ ,int,struct page**) ; 
 int /*<<< orphan*/  FUNC10 (struct page*) ; 
 int /*<<< orphan*/  FUNC11 (struct page*) ; 
 scalar_t__ FUNC12 (struct page*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (struct page*) ; 
 int /*<<< orphan*/  FUNC16 (struct page*) ; 

__attribute__((used)) static int FUNC17(struct address_space *mapping,
				 struct writeback_control *wbc,
				 pgoff_t index, pgoff_t end, pgoff_t *_next)
{
	struct backing_dev_info *bdi = mapping->backing_dev_info;
	struct afs_writeback *wb;
	struct page *page;
	int ret, n;

	FUNC4(",,%lx,%lx,", index, end);

	do {
		n = FUNC9(mapping, &index, PAGECACHE_TAG_DIRTY,
				       1, &page);
		if (!n)
			break;

		FUNC3("wback %lx", page->index);

		if (page->index > end) {
			*_next = index;
			FUNC11(page);
			FUNC5(" = 0 [%lx]", *_next);
			return 0;
		}

		/* at this point we hold neither mapping->tree_lock nor lock on
		 * the page itself: the page may be truncated or invalidated
		 * (changing page->mapping to NULL), or even swizzled back from
		 * swapper_space to tmpfs file mapping
		 */
		FUNC10(page);

		if (page->mapping != mapping) {
			FUNC15(page);
			FUNC11(page);
			continue;
		}

		if (wbc->sync_mode != WB_SYNC_NONE)
			FUNC16(page);

		if (FUNC2(page) || !FUNC1(page)) {
			FUNC15(page);
			continue;
		}

		wb = (struct afs_writeback *) FUNC12(page);
		FUNC0(wb != NULL);

		FUNC13(&wb->vnode->writeback_lock);
		wb->state = AFS_WBACK_WRITING;
		FUNC14(&wb->vnode->writeback_lock);

		ret = FUNC6(wb, page);
		FUNC15(page);
		FUNC11(page);
		if (ret < 0) {
			FUNC5(" = %d", ret);
			return ret;
		}

		wbc->nr_to_write -= ret;

		if (wbc->nonblocking && FUNC7(bdi)) {
			wbc->encountered_congestion = 1;
			break;
		}

		FUNC8();
	} while (index < end && wbc->nr_to_write > 0);

	*_next = index;
	FUNC5(" = 0 [%lx]", *_next);
	return 0;
}