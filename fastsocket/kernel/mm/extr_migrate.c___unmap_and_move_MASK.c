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
struct page {int /*<<< orphan*/  mapping; } ;
struct mem_cgroup {int dummy; } ;
struct anon_vma {int dummy; } ;
typedef  enum migrate_mode { ____Placeholder_migrate_mode } migrate_mode ;
struct TYPE_2__ {int flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EAGAIN ; 
 int EBUSY ; 
 int ENOMEM ; 
 int MIGRATE_ASYNC ; 
 int MIGRATE_SYNC ; 
 int PF_MEMALLOC ; 
 scalar_t__ FUNC1 (struct page*) ; 
 int /*<<< orphan*/  FUNC2 (struct page*) ; 
 scalar_t__ FUNC3 (struct page*) ; 
 scalar_t__ FUNC4 (struct page*) ; 
 int TTU_IGNORE_ACCESS ; 
 int TTU_IGNORE_MLOCK ; 
 int TTU_MIGRATION ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 TYPE_1__* current ; 
 int /*<<< orphan*/  FUNC6 (struct anon_vma*) ; 
 int /*<<< orphan*/  FUNC7 (struct anon_vma*) ; 
 int /*<<< orphan*/  FUNC8 (struct page*) ; 
 int /*<<< orphan*/  FUNC9 (struct mem_cgroup*,struct page*,struct page*,int) ; 
 int FUNC10 (struct page*,struct page*,struct mem_cgroup**) ; 
 int FUNC11 (struct page*,struct page*,int,int) ; 
 scalar_t__ FUNC12 (struct page*) ; 
 struct anon_vma* FUNC13 (struct page*) ; 
 int /*<<< orphan*/  FUNC14 (struct page*) ; 
 int /*<<< orphan*/  FUNC15 (struct anon_vma*) ; 
 int /*<<< orphan*/  FUNC16 (struct page*,struct page*) ; 
 int /*<<< orphan*/  FUNC17 (struct page*) ; 
 int /*<<< orphan*/  FUNC18 (struct page*,int) ; 
 int /*<<< orphan*/  FUNC19 (struct page*) ; 
 int /*<<< orphan*/  FUNC20 (struct page*) ; 
 int /*<<< orphan*/  FUNC21 (struct page*) ; 

__attribute__((used)) static int FUNC22(struct page *page, struct page *newpage,
			int force, bool offlining, enum migrate_mode mode)
{
	int rc = -EAGAIN;
	int remap_swapcache = 1;
	int charge = 0;
	struct mem_cgroup *mem = NULL;
	struct anon_vma *anon_vma = NULL;

	/*
	 * It's not safe for direct compaction to call lock_page.
	 * For example, during page readahead pages are added locked
	 * to the LRU. Later, when the IO completes the pages are
	 * marked uptodate and unlocked. However, the queueing
	 * could be merging multiple pages for one bio (e.g.
	 * mpage_readpages). If an allocation happens for the
	 * second or third page, the process can end up locking
	 * the same page twice and deadlocking. Rather than
	 * trying to be clever about what pages can be locked,
	 * avoid the use of lock_page for direct compaction
	 * altogether.
	 *
	 * Nor is it safe for direct compaction to wait_on_page_writeback:
	 * we might be trying to allocate on behalf of that writeback (e.g.
	 * slub allocating an order-2 page for a radix_tree node for the
	 * loop device below, might target that very page under writeback).
	 */
	if (current->flags & PF_MEMALLOC)
		force = 0;

	/* prepare cgroup just returns 0 or -ENOMEM */
	rc = -EAGAIN;

	if (!FUNC19(page)) {
		if (!force || mode == MIGRATE_ASYNC)
			goto out;
		FUNC8(page);
	}

	/* charge against new page */
	charge = FUNC10(page, newpage, &mem);
	if (charge == -ENOMEM) {
		rc = -ENOMEM;
		goto unlock;
	}
	FUNC0(charge);

	if (FUNC4(page)) {
		/*
		 * Only in the case of a full syncronous migration is it
		 * necessary to wait for PageWriteback. In the async case,
		 * the retry loop is too short and in the sync-light case,
		 * the overhead of stalling is too much
		 */
		if (mode != MIGRATE_SYNC) {
			rc = -EBUSY;
			goto uncharge;
		}
		if (!force)
			goto uncharge;
		FUNC21(page);
	}
	/*
	 * By try_to_unmap(), page->mapcount goes down to 0 here. In this case,
	 * we cannot notice that anon_vma is freed while we migrates a page.
	 * This get_anon_vma() delays freeing anon_vma pointer until the end
	 * of migration. File cache pages are no problem because of page_lock()
	 * File Caches may use write_page() or lock_page() in migration, then,
	 * just care Anon page here.
	 */
	if (FUNC1(page) && !FUNC2(page)) {
		/*
		 * Only page_lock_anon_vma() understands the subtleties of
		 * getting a hold on an anon_vma from outside one of its mms.
		 */
		anon_vma = FUNC13(page);
		if (anon_vma) {
			/*
			 * Take a reference count on the anon_vma if the
			 * page is mapped so that it is guaranteed to
			 * exist when the page is remapped later
			 */
			FUNC7(anon_vma);
			FUNC15(anon_vma);
		}
		else if (FUNC3(page)) {
			/*
			 * We cannot be sure that the anon_vma of an unmapped
			 * swapcache page is safe to use because we don't
			 * know in advance if the VMA that this page belonged
			 * to still exists. If the VMA and others sharing the
			 * data have been freed, then the anon_vma could
			 * already be invalid.
			 *
			 * To avoid this possibility, swapcache pages get
			 * migrated but are not remapped when migration
			 * completes
			 */
			remap_swapcache = 0;
		} else {
			goto uncharge;
		}
	}

	/*
	 * Corner case handling:
	 * 1. When a new swap-cache page is read into, it is added to the LRU
	 * and treated as swapcache but it has no rmap yet.
	 * Calling try_to_unmap() against a page->mapping==NULL page will
	 * trigger a BUG.  So handle it here.
	 * 2. An orphaned page (see truncate_complete_page) might have
	 * fs-private metadata. The page can be picked up due to memory
	 * offlining.  Everywhere else except page reclaim, the page is
	 * invisible to the vm, so the page can not be migrated.  So try to
	 * free the metadata, so the page can be freed.
	 */
	if (!page->mapping) {
		FUNC5(FUNC1(page));
		if (FUNC12(page)) {
			FUNC17(page);
			goto uncharge;
		}
		goto skip_unmap;
	}

	/* Establish migration ptes or remove ptes */
	FUNC18(page, TTU_MIGRATION|TTU_IGNORE_MLOCK|TTU_IGNORE_ACCESS);

skip_unmap:
	if (!FUNC14(page))
		rc = FUNC11(newpage, page, remap_swapcache, mode);

	if (rc && remap_swapcache)
		FUNC16(page, page);

	/* Drop an anon_vma reference if we took one */
	if (anon_vma)
		FUNC6(anon_vma);

uncharge:
	if (!charge)
		FUNC9(mem, page, newpage, rc == 0);
unlock:
	FUNC20(page);
out:
	return rc;
}