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
struct page {TYPE_1__* mapping; } ;
struct nfs_page {int dummy; } ;
struct inode {int /*<<< orphan*/  i_lock; } ;
struct TYPE_2__ {struct inode* host; } ;

/* Variables and functions */
 int EAGAIN ; 
 struct nfs_page* FUNC0 (int) ; 
 scalar_t__ FUNC1 (struct nfs_page*) ; 
 struct nfs_page* FUNC2 (struct page*) ; 
 int /*<<< orphan*/  FUNC3 (struct nfs_page*) ; 
 int FUNC4 (struct nfs_page*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct nfs_page *FUNC7(struct page *page, bool nonblock)
{
	struct inode *inode = page->mapping->host;
	struct nfs_page *req;
	int ret;

	FUNC5(&inode->i_lock);
	for (;;) {
		req = FUNC2(page);
		if (req == NULL)
			break;
		if (FUNC1(req))
			break;
		/* Note: If we hold the page lock, as is the case in nfs_writepage,
		 *	 then the call to nfs_lock_request() will always
		 *	 succeed provided that someone hasn't already marked the
		 *	 request as dirty (in which case we don't care).
		 */
		FUNC6(&inode->i_lock);
		if (!nonblock)
			ret = FUNC4(req);
		else
			ret = -EAGAIN;
		FUNC3(req);
		if (ret != 0)
			return FUNC0(ret);
		FUNC5(&inode->i_lock);
	}
	FUNC6(&inode->i_lock);
	return req;
}