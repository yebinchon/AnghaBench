#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  val; } ;
typedef  TYPE_1__ swp_entry_t ;
struct page {int dummy; } ;
struct inode {int dummy; } ;
struct address_space {int /*<<< orphan*/  tree_lock; int /*<<< orphan*/  a_ops; struct inode* host; } ;
struct TYPE_5__ {void (* freepage ) (struct page*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 TYPE_3__* FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct inode*) ; 
 int /*<<< orphan*/  FUNC3 (struct page*) ; 
 int /*<<< orphan*/  FUNC4 (struct page*) ; 
 scalar_t__ FUNC5 (struct page*) ; 
 int /*<<< orphan*/  FUNC6 (struct page*) ; 
 int /*<<< orphan*/  FUNC7 (struct page*) ; 
 int /*<<< orphan*/  FUNC8 (struct page*) ; 
 int /*<<< orphan*/  FUNC9 (struct page*,int) ; 
 struct address_space* FUNC10 (struct page*) ; 
 int /*<<< orphan*/  FUNC11 (struct page*) ; 
 int /*<<< orphan*/  FUNC12 (struct page*,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_1__,struct page*) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC17(struct address_space *mapping, struct page *page)
{
	struct inode *inode = mapping->host;

	FUNC0(!FUNC4(page));
	FUNC0(mapping != FUNC10(page));

	FUNC13(&mapping->tree_lock);
	/*
	 * The non racy check for a busy page.
	 *
	 * Must be careful with the order of the tests. When someone has
	 * a ref to the page, it may be possible that they dirty it then
	 * drop the reference. So if PageDirty is tested before page_count
	 * here, then the following race may occur:
	 *
	 * get_user_pages(&page);
	 * [user mapping goes away]
	 * write_to(page);
	 *				!PageDirty(page)    [good]
	 * SetPageDirty(page);
	 * put_page(page);
	 *				!page_count(page)   [good, discard it]
	 *
	 * [oops, our write_to data is lost]
	 *
	 * Reversing the order of the tests ensures such a situation cannot
	 * escape unnoticed. The smp_rmb is needed to ensure the page->flags
	 * load is not satisfied before that of page->_count.
	 *
	 * Note that if SetPageDirty is always performed via set_page_dirty,
	 * and thus under tree_lock, then this ordering is not required.
	 */
	if (!FUNC9(page, 2))
		goto cannot_free;
	/* note: atomic_cmpxchg in page_freeze_refs provides the smp_rmb */
	if (FUNC16(FUNC3(page))) {
		FUNC12(page, 2);
		goto cannot_free;
	}

	if (FUNC5(page)) {
		swp_entry_t swap = { .val = FUNC11(page) };
		FUNC6(page);
		FUNC14(&mapping->tree_lock);
		FUNC15(swap, page);
	} else {
		void (*freepage)(struct page *) = NULL;

		if (FUNC2(inode))
			freepage = FUNC1(mapping->a_ops)->freepage;

		FUNC7(page);
		FUNC14(&mapping->tree_lock);
		FUNC8(page);

		if (freepage != NULL)
			freepage(page);
	}

	return 1;

cannot_free:
	FUNC14(&mapping->tree_lock);
	return 0;
}