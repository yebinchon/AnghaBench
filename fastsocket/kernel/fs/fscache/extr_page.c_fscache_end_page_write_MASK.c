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
struct page {int /*<<< orphan*/  index; } ;
struct fscache_object {int /*<<< orphan*/  lock; struct fscache_cookie* cookie; } ;
struct fscache_cookie {int /*<<< orphan*/  flags; int /*<<< orphan*/  stores_lock; int /*<<< orphan*/  stores; } ;

/* Variables and functions */
 int /*<<< orphan*/  FSCACHE_COOKIE_PENDING_TAG ; 
 int /*<<< orphan*/  FSCACHE_COOKIE_STORING_TAG ; 
 int /*<<< orphan*/  fscache_n_store_radix_deletes ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 struct page* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(struct fscache_object *object,
				   struct page *page)
{
	struct fscache_cookie *cookie;
	struct page *xpage = NULL;

	FUNC5(&object->lock);
	cookie = object->cookie;
	if (cookie) {
		/* delete the page from the tree if it is now no longer
		 * pending */
		FUNC5(&cookie->stores_lock);
		FUNC3(&cookie->stores, page->index,
				     FSCACHE_COOKIE_STORING_TAG);
		if (!FUNC4(&cookie->stores, page->index,
					FSCACHE_COOKIE_PENDING_TAG)) {
			FUNC0(&fscache_n_store_radix_deletes);
			xpage = FUNC2(&cookie->stores, page->index);
		}
		FUNC6(&cookie->stores_lock);
		FUNC7(&cookie->flags, 0);
	}
	FUNC6(&object->lock);
	if (xpage)
		FUNC1(xpage);
}