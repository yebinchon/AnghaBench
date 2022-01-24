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
struct nfs_page {int dummy; } ;
struct inode {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  PAGE_CACHE_SIZE ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 int /*<<< orphan*/  FUNC2 (struct page*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct nfs_page*) ; 
 int /*<<< orphan*/  FUNC4 (struct nfs_page*) ; 
 scalar_t__ FUNC5 (struct nfs_page*) ; 
 struct nfs_page* FUNC6 (struct page*) ; 
 int /*<<< orphan*/  FUNC7 (struct nfs_page*) ; 
 int /*<<< orphan*/  FUNC8 (struct nfs_page*) ; 
 int FUNC9 (struct nfs_page*) ; 
 int /*<<< orphan*/  FUNC10 (struct page*) ; 

int FUNC11(struct inode *inode, struct page *page)
{
	struct nfs_page *req;
	int ret = 0;

	FUNC0(!FUNC1(page));
	for (;;) {
		FUNC10(page);
		req = FUNC6(page);
		if (req == NULL)
			break;
		if (FUNC5(req)) {
			FUNC3(req);
			FUNC4(req);
			/*
			 * In case nfs_inode_remove_request has marked the
			 * page as being dirty
			 */
			FUNC2(page, PAGE_CACHE_SIZE);
			FUNC8(req);
			break;
		}
		ret = FUNC9(req);
		FUNC7(req);
		if (ret < 0)
			break;
	}
	return ret;
}