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
struct nfs_page {int /*<<< orphan*/  wb_kref; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct page*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (struct page*) ; 

__attribute__((used)) static struct nfs_page *FUNC3(struct page *page)
{
	struct nfs_page *req = NULL;

	if (FUNC0(page)) {
		req = (struct nfs_page *)FUNC2(page);
		if (req != NULL)
			FUNC1(&req->wb_kref);
	}
	return req;
}