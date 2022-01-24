#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct pagevec {int dummy; } ;
struct page {int /*<<< orphan*/  flags; int /*<<< orphan*/  index; } ;
struct fscache_retrieval {int dummy; } ;
struct TYPE_9__ {struct page* private; } ;
struct cachefiles_one_read {int /*<<< orphan*/  op; TYPE_4__ monitor; struct page* back_page; struct page* netfs_page; } ;
struct cachefiles_object {TYPE_2__* backer; } ;
struct address_space {TYPE_3__* a_ops; } ;
struct TYPE_8__ {int (* readpage ) (int /*<<< orphan*/ *,struct page*) ;} ;
struct TYPE_7__ {TYPE_1__* d_inode; } ;
struct TYPE_6__ {struct address_space* i_mapping; } ;

/* Variables and functions */
 int EEXIST ; 
 int ENOBUFS ; 
 int ENOMEM ; 
 scalar_t__ FUNC0 (struct page*) ; 
 scalar_t__ FUNC1 (struct page*) ; 
 int __GFP_COLD ; 
 struct page* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct pagevec*) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 
 int /*<<< orphan*/  FUNC7 (struct page*,TYPE_4__*) ; 
 int FUNC8 (struct page*,struct address_space*,int /*<<< orphan*/ ,int) ; 
 int cachefiles_gfp ; 
 int /*<<< orphan*/  FUNC9 (struct cachefiles_object*,char*) ; 
 int /*<<< orphan*/  cachefiles_read_waiter ; 
 int /*<<< orphan*/  FUNC10 (struct page*,struct page*) ; 
 struct page* FUNC11 (struct address_space*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct fscache_retrieval*,struct page*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct fscache_retrieval*) ; 
 int /*<<< orphan*/  FUNC14 (struct fscache_retrieval*,struct page*,int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct fscache_retrieval*,int) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (struct cachefiles_one_read*) ; 
 struct cachefiles_one_read* FUNC19 (int,int) ; 
 int /*<<< orphan*/  FUNC20 (struct page*) ; 
 int /*<<< orphan*/  FUNC21 (struct page*) ; 
 int /*<<< orphan*/  FUNC22 (struct page*) ; 
 int /*<<< orphan*/  FUNC23 (struct pagevec*,struct page*) ; 
 int /*<<< orphan*/  FUNC24 (struct pagevec*) ; 
 int FUNC25 (int /*<<< orphan*/ *,struct page*) ; 
 scalar_t__ FUNC26 (struct page*) ; 
 int /*<<< orphan*/  FUNC27 (struct page*) ; 

__attribute__((used)) static int FUNC28(struct cachefiles_object *object,
					    struct fscache_retrieval *op,
					    struct page *netpage,
					    struct pagevec *pagevec)
{
	struct cachefiles_one_read *monitor;
	struct address_space *bmapping;
	struct page *newpage, *backpage;
	int ret;

	FUNC5("");

	FUNC24(pagevec);

	FUNC4("read back %p{%lu,%d}",
	       netpage, netpage->index, FUNC22(netpage));

	monitor = FUNC19(sizeof(*monitor), cachefiles_gfp);
	if (!monitor)
		goto nomem;

	monitor->netfs_page = netpage;
	monitor->op = FUNC13(op);

	FUNC17(&monitor->monitor, cachefiles_read_waiter);

	/* attempt to get hold of the backing page */
	bmapping = object->backer->d_inode->i_mapping;
	newpage = NULL;

	for (;;) {
		backpage = FUNC11(bmapping, netpage->index);
		if (backpage)
			goto backing_page_already_present;

		if (!newpage) {
			newpage = FUNC2(cachefiles_gfp |
						     __GFP_COLD);
			if (!newpage)
				goto nomem_monitor;
		}

		ret = FUNC8(newpage, bmapping,
					netpage->index, cachefiles_gfp);
		if (ret == 0)
			goto installed_new_backing_page;
		if (ret != -EEXIST)
			goto nomem_page;
	}

	/* we've installed a new backing page, so now we need to add it
	 * to the LRU list and start it reading */
installed_new_backing_page:
	FUNC4("- new %p", newpage);

	backpage = newpage;
	newpage = NULL;

	FUNC20(backpage);
	FUNC23(pagevec, backpage);
	FUNC3(pagevec);

read_backing_page:
	ret = bmapping->a_ops->readpage(NULL, backpage);
	if (ret < 0)
		goto read_error;

	/* set the monitor to transfer the data across */
monitor_backing_page:
	FUNC4("- monitor add");

	/* install the monitor */
	FUNC20(monitor->netfs_page);
	FUNC20(backpage);
	monitor->back_page = backpage;
	monitor->monitor.private = backpage;
	FUNC7(backpage, &monitor->monitor);
	monitor = NULL;

	/* but the page may have been read before the monitor was installed, so
	 * the monitor may miss the event - so we have to ensure that we do get
	 * one in such a case */
	if (FUNC26(backpage)) {
		FUNC4("jumpstart %p {%lx}", backpage, backpage->flags);
		FUNC27(backpage);
	}
	goto success;

	/* if the backing page is already present, it can be in one of
	 * three states: read in progress, read failed or read okay */
backing_page_already_present:
	FUNC4("- present");

	if (newpage) {
		FUNC21(newpage);
		newpage = NULL;
	}

	if (FUNC0(backpage))
		goto io_error;

	if (FUNC1(backpage))
		goto backing_page_already_uptodate;

	if (!FUNC26(backpage))
		goto monitor_backing_page;
	FUNC4("read %p {%lx}", backpage, backpage->flags);
	goto read_backing_page;

	/* the backing page is already up to date, attach the netfs
	 * page to the pagecache and LRU and copy the data across */
backing_page_already_uptodate:
	FUNC4("- uptodate");

	FUNC14(op, netpage, true);

	FUNC10(netpage, backpage);
	FUNC12(op, netpage, 0);
	FUNC16(op, 1);

success:
	FUNC4("success");
	ret = 0;

out:
	if (backpage)
		FUNC21(backpage);
	if (monitor) {
		FUNC15(monitor->op);
		FUNC18(monitor);
	}
	FUNC6(" = %d", ret);
	return ret;

read_error:
	FUNC4("read error %d", ret);
	if (ret == -ENOMEM) {
		FUNC16(op, 1);
		goto out;
	}
io_error:
	FUNC9(object, "Page read error on backing file");
	FUNC16(op, 1);
	ret = -ENOBUFS;
	goto out;

nomem_page:
	FUNC21(newpage);
nomem_monitor:
	FUNC15(monitor->op);
	FUNC18(monitor);
nomem:
	FUNC16(op, 1);
	FUNC6(" = -ENOMEM");
	return -ENOMEM;
}