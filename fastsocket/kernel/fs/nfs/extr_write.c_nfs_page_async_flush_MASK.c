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
struct nfs_pageio_descriptor {int pg_error; } ;
struct nfs_page {int /*<<< orphan*/  wb_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (struct nfs_page*) ; 
 int /*<<< orphan*/  PG_CLEAN ; 
 int FUNC2 (struct nfs_page*) ; 
 struct nfs_page* FUNC3 (struct page*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct nfs_pageio_descriptor*,struct nfs_page*) ; 
 int /*<<< orphan*/  FUNC5 (struct nfs_page*) ; 
 int FUNC6 (struct page*) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct nfs_pageio_descriptor *pgio,
				struct page *page, bool nonblock)
{
	struct nfs_page *req;
	int ret = 0;

	req = FUNC3(page, nonblock);
	if (!req)
		goto out;
	ret = FUNC2(req);
	if (FUNC1(req))
		goto out;

	ret = FUNC6(page);
	FUNC0(ret != 0);
	FUNC0(FUNC7(PG_CLEAN, &req->wb_flags));

	if (!FUNC4(pgio, req)) {
		FUNC5(req);
		ret = pgio->pg_error;
	}
out:
	return ret;
}